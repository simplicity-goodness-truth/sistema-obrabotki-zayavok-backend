function zsoz_api_ext .
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IP_METHOD) TYPE  CHAR40
*"     VALUE(IP_OBJ_NUMBER) TYPE  TPLNR OPTIONAL
*"     VALUE(IP_DEPARTMENT) TYPE  IWERK OPTIONAL
*"     VALUE(IP_EQPM_TYPE) TYPE  KLASSE_D OPTIONAL
*"     VALUE(IP_EQPM_NUMBER) TYPE  TPLNR OPTIONAL
*"     VALUE(IP_UNIT_NUMBER) TYPE  EQUNR OPTIONAL
*"     VALUE(IP_PART_NUMBER) TYPE  CHAR060 OPTIONAL
*"     VALUE(IP_OBJ_TYPE_NUMBER) TYPE  KLASSE_D OPTIONAL
*"     VALUE(IP_UNIT_TYPE) TYPE  KLASSE_D OPTIONAL
*"     VALUE(IP_PART_TYPE) TYPE  ATNAM OPTIONAL
*"     VALUE(IP_ORG_STRUCT_CODE) TYPE  CHAR12 OPTIONAL
*"     VALUE(IT_ORG_STRUCT_CODES) TYPE  ZSOZ_TT_ORG_STRUCT_CODES
*"       OPTIONAL
*"  EXPORTING
*"     VALUE(EP_RETURN_CODE) TYPE  SY-SUBRC
*"     VALUE(EP_ORG_STRUCT_CODE) TYPE  CHAR12
*"     VALUE(EP_OBJ_NAME) TYPE  PLTXT
*"     VALUE(EP_OBJ_TYPE_NUM) TYPE  KLASSE_D
*"     VALUE(EP_OBJ_TYPE_NAME) TYPE  KLSCHL
*"     VALUE(EP_EQPM_NAME) TYPE  PLTXT
*"     VALUE(EP_EQPM_TYPE_NUM) TYPE  KLASSE_D
*"     VALUE(EP_EQPM_TYPE_NAME) TYPE  KLSCHL
*"     VALUE(EP_UNIT_NAME) TYPE  KTX01
*"     VALUE(EP_UNIT_TYPE_NUM) TYPE  KLASSE_D
*"     VALUE(EP_UNIT_TYPE_NAME) TYPE  KLSCHL
*"     VALUE(EP_PART_DESC) TYPE  ATBEZ
*"     VALUE(EP_SOZ_AZS_TIME) TYPE  INT4
*"  CHANGING
*"     VALUE(ET_OBJECTS) TYPE  ZSOZ_TT_OBJECTS OPTIONAL
*"     VALUE(ET_OBJECT_TYPES) TYPE  ZSOZ_TT_OBJECT_TYPES OPTIONAL
*"     VALUE(ET_EQPM_TYPES) TYPE  ZSOZ_TT_EQPM_TYPES OPTIONAL
*"     VALUE(ET_EQPM) TYPE  ZSOZ_TT_EQPM OPTIONAL
*"     VALUE(ET_UNITS) TYPE  ZSOZ_TT_UNITS OPTIONAL
*"     VALUE(ET_PARTS) TYPE  ZSOZ_TT_PARTS OPTIONAL
*"     VALUE(ET_UNIT_TYPES) TYPE  ZSOZ_TT_UNIT_TYPES OPTIONAL
*"     VALUE(ET_PART_TYPES) TYPE  ZSOZ_TT_PART_TYPES OPTIONAL
*"----------------------------------------------------------------------

  types:
    begin of ty_chrstics,
      chrstics_name    type atnam,
      chrstics_value   type atwrt,
      chrstics_counter type wzaehl,
      chrstics_desc    type atbez,

    end of ty_chrstics .
  types:
    tt_chrstics type table of ty_chrstics .


  data: lt_objects          type zsoz_tt_objects,
        wa_object           type zsoz_ts_object,
        lt_eqpm             type zsoz_tt_eqpm,
        wa_eqpm             type zsoz_ts_eqpm,
        lt_eqpm_types       type zsoz_tt_eqpm_types,
        wa_eqpm_types       type zsoz_ts_eqpm_type,
        lv_return_code      like sy-subrc,
        lt_units            type zsoz_tt_units,
        wa_units            type zsoz_ts_unit,
        lt_parts            type zsoz_tt_parts,
        lt_chrstics         type tt_chrstics,
        wa_part             type zsoz_ts_part,
        lt_exclude_chrstics type range of cabn-atnam,
        wa_exclude_chrstics like line of lt_exclude_chrstics,
        lv_unit_number      type equnr,
        lv_part_counter     type wzaehl,
        lv_part_name        type atwrt,
        lv_temp_string      type string,
        lt_object_types     type zsoz_tt_object_types,
        lt_unit_types       type zsoz_tt_unit_types,
        wa_unit_type        type zsoz_ts_unit_type,
        wa_part_type        type zsoz_ts_part_type,
        lt_chrstics_details type standard table of  bapi_char,
        lt_chrstics_values  type  standard table of bapi_char_values.


  field-symbols: <ls_object>       like line of lt_objects,
                 <ls_eqpm>         like line of lt_eqpm,
                 <ls_unit>         like line of lt_units,
                 <ls_chrstics>     like line of lt_chrstics,
                 <ls_object_types> like line of lt_object_types.


  ep_return_code = 1.

  if ( ip_method is not initial ).

    case ip_method.

      when 'GET_ALL_OBJECTS'.

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method       = 'GET_ALL_OBJECT_TYPES'
          importing
            ep_return_code  = lv_return_code
          changing
            et_object_types = lt_object_types.

        loop at lt_object_types assigning <ls_object_types>.

          clear lt_objects.

          call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
            exporting
              ip_class_number       = <ls_object_types>-obj_type_num
              ip_iwerk              = ip_department
              ip_validate_soz_check = 'X'
            changing
              et_fl                 = lt_objects.

          loop at lt_objects assigning <ls_object>.

            wa_object-obj_number = <ls_object>-obj_number.
            wa_object-obj_name = <ls_object>-obj_name.

            append wa_object to et_objects.

          endloop. "loop at lt_objects ASSIGNING <ls_object>

        endloop. " loop at lt_object_types ASSIGNING FIELD-SYMBOL(<ls_object_types>)

        ep_return_code = sy-subrc.

        sort et_objects.
        delete adjacent duplicates from et_objects.

      when 'GET_OBJECTS_OF_OBJECT_TYPE'.

        call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
          exporting
            ip_class_number       = ip_obj_type_number
            ip_iwerk              = ip_department
            ip_validate_soz_check = 'X'
          changing
            et_fl                 = et_objects.

        ep_return_code = sy-subrc.


      when 'GET_ALL_OBJECT_TYPES'.

        " Object type is a class without superior class FLs

        call method zcl_soz_func_loc_data_provider=>get_root_classes
          changing
            et_class = et_object_types.

        ep_return_code = sy-subrc.

      when 'GET_ALL_EQPM_TYPES'.

        " Equipment type is a CL_SOZ class with type 003
        " First we need to find all objects and then search by objects as superior FL

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method       = 'GET_ALL_OBJECT_TYPES'
          importing
            ep_return_code  = lv_return_code
          changing
            et_object_types = lt_object_types.

        loop at lt_object_types assigning <ls_object_types>.

          clear lt_objects.

          call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
            exporting
              ip_class_number       = <ls_object_types>-obj_type_num
              ip_iwerk              = ip_department
              ip_validate_soz_check = 'X'
            changing
              et_fl                 = lt_objects.

          loop at lt_objects assigning <ls_object>.

            clear lt_eqpm_types.

            call method zcl_soz_func_loc_data_provider=>get_cl_list_by_super_fl_num
              exporting
                ip_fl_number = <ls_object>-obj_number
              changing
                et_class     = lt_eqpm_types.

            loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).

              clear wa_eqpm_types.

              wa_eqpm_types-eqpm_type_num = <ls_eqpm_type>-eqpm_type_num.
              wa_eqpm_types-eqpm_type_name = <ls_eqpm_type>-eqpm_type_name.

              append wa_eqpm_types to et_eqpm_types.

            endloop. " LOOP AT lt_eqpm_types ASSIGNING FIELD-SYMBOL(<ls_eqpm_type>)

          endloop. " LOOP AT lt_objects ASSIGNING <ls_object>

        endloop. " LOOP AT lt_object_types ASSIGNING FIELD-SYMBOL(<ls_object_types>)

        ep_return_code = sy-subrc.

        sort et_eqpm_types by eqpm_type_num.
        delete adjacent duplicates from et_eqpm_types comparing eqpm_type_num.



      when 'GET_ALL_EQPM'.

        " Equipment is a FL of CL_SOZ class with type 003
        " First we need to find all objects and then search by objects as superior FL


        call function 'ZSOZ_API_EXT'
          exporting
            ip_method       = 'GET_ALL_OBJECT_TYPES'
          importing
            ep_return_code  = lv_return_code
          changing
            et_object_types = lt_object_types.

        loop at lt_object_types assigning <ls_object_types>.

          clear lt_objects.

          call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
            exporting
              ip_class_number       = <ls_object_types>-obj_type_num
              ip_iwerk              = ip_department
              ip_validate_soz_check = 'X'
            changing
              et_fl                 = lt_objects.

          loop at lt_objects assigning <ls_object>.

            clear lt_eqpm.

            call method zcl_soz_func_loc_data_provider=>get_fl_list_by_super_fl_num
              exporting
                ip_fl_number          = <ls_object>-obj_number
                ip_validate_soz_check = 'X'
              changing
                et_fl                 = lt_eqpm.

            if <ls_eqpm> is assigned.
              unassign <ls_eqpm>.
            endif. " if <ls_eqpm> is ASSIGNED

            loop at lt_eqpm assigning <ls_eqpm>.

              clear wa_eqpm.

              wa_eqpm-eqpm_number = <ls_eqpm>-eqpm_number.
              wa_eqpm-eqpm_name = <ls_eqpm>-eqpm_name.
              wa_eqpm-eqpm_location = <ls_eqpm>-eqpm_location.

              append wa_eqpm to et_eqpm.

            endloop. " LOOP AT lt_eqpm ASSIGNING FIELD-SYMBOL(<ls_eqpm>)

          endloop. " loop at lt_objects ASSIGNING FIELD-SYMBOL(<ls_object>)

        endloop.  "LOOP AT lt_object_types ASSIGNING FIELD-SYMBOL(<ls_object_types>)

        ep_return_code = sy-subrc.

      when 'GET_EQPM_OF_EQPM_TYPE'.

        call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
          exporting
            ip_class_number       = ip_eqpm_type
            ip_validate_soz_check = 'X'
          changing
            et_fl                 = et_eqpm.

        ep_return_code = sy-subrc.

      when 'GET_EQPM_OF_OBJECT'.

        call method zcl_soz_func_loc_data_provider=>get_fl_list_by_super_fl_num
          exporting
            ip_fl_number          = ip_obj_number
            ip_validate_soz_check = 'X'
          changing
            et_fl                 = et_eqpm.

        ep_return_code = sy-subrc.

      when 'GET_OBJECT_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_fl_details_by_fl_num
          exporting
            ip_fl_number = ip_obj_number
          changing
            et_fl        = et_objects.

        ep_return_code = sy-subrc.

      when 'GET_EQPM_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_fl_details_by_fl_num
          exporting
            ip_fl_number = ip_eqpm_number
          changing
            et_fl        = et_eqpm.

        ep_return_code = sy-subrc.

      when 'GET_UNITS_OF_EQPM'.

        call method zcl_soz_func_loc_data_provider=>get_eqpm_list_by_fl_num
          exporting
            ip_fl_number          = ip_eqpm_number
            ip_validate_soz_check = 'X'
          changing
            et_eqpm               = et_units.


        ep_return_code = sy-subrc.

      when 'GET_ALL_UNITS'.

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method      = 'GET_ALL_EQPM'
          importing
            ep_return_code = lv_return_code
          changing
            et_eqpm        = lt_eqpm.


        if <ls_eqpm> is assigned.
          unassign <ls_eqpm>.
        endif. " if <ls_eqpm> is ASSIGNED

        loop at lt_eqpm assigning <ls_eqpm>.

          clear lt_units.

          call method zcl_soz_func_loc_data_provider=>get_eqpm_list_by_fl_num
            exporting
              ip_fl_number          = <ls_eqpm>-eqpm_number
              ip_validate_soz_check = 'X'
            changing
              et_eqpm               = lt_units.

          if <ls_unit> is assigned.
            unassign <ls_unit>.
          endif. " if <ls_unit> is ASSIGNED

          loop at lt_units assigning <ls_unit>.

            clear wa_units.

            wa_units-unit_number = <ls_unit>-unit_number.
            wa_units-unit_name = <ls_unit>-unit_name.

            append wa_units to et_units.


          endloop. " loop at lt_units ASSIGNING FIELD-SYMBOL(<ls_unit>)

        endloop. " loop at lt_eqpm ASSIGNING <ls_eqpm>

        ep_return_code = sy-subrc.

      when 'GET_PARTS_OF_UNIT'.
        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_CHECK'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_TRK_NUM'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        call method zcl_soz_func_loc_data_provider=>get_chrstics_by_eqpm_num
          exporting
            ip_eqpm_number = ip_unit_number
          changing
            et_chrstics    = lt_chrstics.

        " Removing soz_check from list of chrstics

        if <ls_chrstics> is assigned.
          unassign <ls_chrstics>.
        endif. " if <ls_chrstics> is ASSIGNED

        loop at lt_chrstics assigning <ls_chrstics>
          where chrstics_name not in lt_exclude_chrstics.

          concatenate ip_unit_number '_' <ls_chrstics>-chrstics_counter <ls_chrstics>-chrstics_name into wa_part-part_number.

          wa_part-part_name = <ls_chrstics>-chrstics_name.
          wa_part-part_value = <ls_chrstics>-chrstics_value.
          wa_part-part_desc = <ls_chrstics>-chrstics_desc.

          append wa_part to et_parts.

        endloop. " loop at lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)

        ep_return_code = sy-subrc.

      when 'GET_UNIT_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_eqpm_details_by_eqpm_num
          exporting
            ip_eqpm_number = ip_unit_number
          changing
            et_eqpm        = et_units.

        ep_return_code = sy-subrc.



      when 'GET_ALL_PARTS'.

        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_CHECK'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_TRK_NUM'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method      = 'GET_ALL_UNITS'
          importing
            ep_return_code = lv_return_code
          changing
            et_units       = lt_units.

        if <ls_unit> is assigned.
          unassign <ls_unit>.
        endif. " if <ls_unit> is ASSIGNED

        loop at lt_units assigning <ls_unit>.

          clear lt_chrstics.

          call method zcl_soz_func_loc_data_provider=>get_chrstics_by_eqpm_num
            exporting
              ip_eqpm_number = <ls_unit>-unit_number
            changing
              et_chrstics    = lt_chrstics.

          " Removing soz_check from list of chrstics

          if <ls_chrstics> is assigned.
            unassign <ls_chrstics>.
          endif. " if <ls_chrstics> is ASSIGNED


          loop at lt_chrstics assigning <ls_chrstics>
              where chrstics_name not in lt_exclude_chrstics.

            concatenate <ls_unit>-unit_number '_' <ls_chrstics>-chrstics_counter <ls_chrstics>-chrstics_name into wa_part-part_number.

            wa_part-part_name = <ls_chrstics>-chrstics_name.
            wa_part-part_value = <ls_chrstics>-chrstics_value.
            wa_part-part_desc = <ls_chrstics>-chrstics_desc.

            append wa_part to et_parts.

          endloop. " loop at lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)

        endloop. "  LOOP AT lt_units ASSIGNING <ls_unit>

        ep_return_code = sy-subrc.

      when 'GET_EQPM_TYPE_OF_EQPM'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_fl_num
          exporting
            ip_fl_number = ip_eqpm_number
          changing
            et_class     = et_eqpm_types.

        ep_return_code = sy-subrc.

      when 'GET_OBJECT_TYPE_OF_OBJECT'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_fl_num
          exporting
            ip_fl_number = ip_obj_number
          changing
            et_class     = et_object_types.

        ep_return_code = sy-subrc.

      when 'GET_PART_DETAILS_BY_NUMBER'.

        if  ( ip_part_number cp '*' ) and ( ip_part_number is not initial ) and ( ip_part_number ne 'null' ) and ( ip_part_number cs '_' ).

          " Getting Unit number from Part ID

          lv_unit_number = substring_before( val = ip_part_number sub = '_' ).

          " Getting Counter

          lv_temp_string = substring_after( val = ip_part_number sub = '_' ).

          if strlen( lv_temp_string ) > 3.

            lv_part_counter = substring( val = lv_temp_string off = 0 len = 3 ).

            " Getting Part name

            lv_part_name = substring( val = lv_temp_string off = 3 ).

            if ( ( lv_unit_number is not initial ) and
                ( lv_part_counter is not initial ) and
                ( lv_part_name is not initial ) ).

              clear lt_chrstics.

              call method zcl_soz_func_loc_data_provider=>get_chrstics_by_eqpm_num
                exporting
                  ip_eqpm_number   = lv_unit_number
                  ip_chrstics_name = lv_part_name
                changing
                  et_chrstics      = lt_chrstics.


              if <ls_chrstics> is assigned.
                unassign <ls_chrstics>.
              endif. " if <ls_chrstics> is ASSIGNED


              loop at lt_chrstics assigning <ls_chrstics>
                  where chrstics_counter eq lv_part_counter.

                wa_part-part_number = ip_part_number.
                wa_part-part_name = <ls_chrstics>-chrstics_name.
                wa_part-part_value = <ls_chrstics>-chrstics_value.
                wa_part-part_desc = <ls_chrstics>-chrstics_desc.

                append wa_part to et_parts.

              endloop. " loop at lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)

            endif.  " ( ( lv_unit_number is NOT INITIAL ) and ( lv_part_counter is not INITIAL ) )

          endif. "  if strlen( lv_temp_string ) > 3.

        endif. " if ip_part_number is not INITIAL

        ep_return_code = sy-subrc.


      when 'GET_EQPM_TYPES_OF_OBJECT_TYPE'.

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method          = 'GET_OBJECTS_OF_OBJECT_TYPE'
            ip_obj_type_number = ip_obj_type_number
          importing
            ep_return_code     = lv_return_code
          changing
            et_objects         = lt_objects.

        loop at lt_objects assigning <ls_object>.

          clear lt_eqpm_types.

          call method zcl_soz_func_loc_data_provider=>get_cl_list_by_super_fl_num
            exporting
              ip_fl_number = <ls_object>-obj_number
            changing
              et_class     = lt_eqpm_types.

          loop at lt_eqpm_types assigning <ls_eqpm_type>.

            clear wa_eqpm_types.

            wa_eqpm_types-eqpm_type_num = <ls_eqpm_type>-eqpm_type_num.
            wa_eqpm_types-eqpm_type_name = <ls_eqpm_type>-eqpm_type_name.

            append wa_eqpm_types to et_eqpm_types.

          endloop. " LOOP AT lt_eqpm ASSIGNING FIELD-SYMBOL(<ls_eqpm>)

        endloop. "  LOOP AT lt_objects ASSIGNING <ls_object>

        ep_return_code = sy-subrc.

        sort et_eqpm_types by eqpm_type_num.
        delete adjacent duplicates from et_eqpm_types comparing eqpm_type_num.



      when 'GET_EQPM_TYPE_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_cl_num
          exporting
            ip_cl_number = ip_eqpm_type
          changing
            et_class     = et_eqpm_types.

        ep_return_code = sy-subrc.


      when 'GET_OBJECT_TYPE_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_cl_num
          exporting
            ip_cl_number = ip_obj_type_number
          changing
            et_class     = et_object_types.

        ep_return_code = sy-subrc.


      when 'GET_UNIT_TYPE_OF_UNIT'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_eqpm_num
          exporting
            ip_eqpm_number = ip_unit_number
          changing
            et_class       = et_unit_types.

        ep_return_code = sy-subrc.



      when 'GET_UNIT_TYPES_BY_EQPM_TYPE'.

        " Get all equipment of equipment type

        call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
          exporting
            ip_class_number       = ip_eqpm_type
            ip_validate_soz_check = 'X'
          changing
            et_fl                 = lt_eqpm.

        loop at lt_eqpm assigning <ls_eqpm>.

          clear lt_units.

          call method zcl_soz_func_loc_data_provider=>get_eqpm_list_by_fl_num
            exporting
              ip_fl_number          = <ls_eqpm>-eqpm_number
              ip_validate_soz_check = 'X'
            changing
              et_eqpm               = lt_units.


          loop at lt_units assigning field-symbol(<ls_units>).

            clear lt_unit_types.

            call method zcl_soz_func_loc_data_provider=>get_cl_details_by_eqpm_num
              exporting
                ip_eqpm_number = <ls_units>-unit_number
              changing
                et_class       = lt_unit_types.

            loop at lt_unit_types assigning field-symbol(<ls_unit_types>).

              clear wa_unit_type.

              wa_unit_type-unit_type_num = <ls_unit_types>-unit_type_num.
              wa_unit_type-unit_type_name = <ls_unit_types>-unit_type_name.

              append wa_unit_type to et_unit_types.

            endloop. "  loop at lt_unit_types ASSIGNING FIELD-SYMBOL(<ls_unit_types>)


          endloop. " loop at lt_unit_types ASSIGNING FIELD-SYMBOL(<ls_unit_types>)

        endloop. "loop at lt_eqpm ASSIGNING <ls_eqpm>

        ep_return_code = sy-subrc.

        sort et_unit_types by unit_type_num.

        delete adjacent duplicates from et_unit_types.

      when 'GET_PART_TYPES_BY_UNIT_TYPE'.

        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_CHECK'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        wa_exclude_chrstics-sign = 'I'.
        wa_exclude_chrstics-option = 'EQ'.
        wa_exclude_chrstics-low = 'SOZ_TRK_NUM'.
        append wa_exclude_chrstics to lt_exclude_chrstics.

        call function 'BAPI_CLASS_GET_CHARACTERISTICS'
          exporting
            classnum        = ip_unit_type
            classtype       = '002'
          tables
            characteristics = lt_chrstics_details
            char_values     = lt_chrstics_values.

        loop at lt_chrstics_details assigning field-symbol(<ls_chrstics_details>) where name_char not in lt_exclude_chrstics.

          clear wa_part_type.

          wa_part_type-part_type_name = <ls_chrstics_details>-name_char.
          wa_part_type-part_type_desc = zcl_soz_func_loc_data_provider=>get_chrstics_text_by_name( <ls_chrstics_details>-name_char ).

          append  wa_part_type to et_part_types.

        endloop. " loop at lt_chrstics_details ASSIGNING FIELD-SYMBOL(<ls_chrstics_details>)

        ep_return_code = sy-subrc.

        sort et_part_types by part_type_name.

        delete adjacent duplicates from et_part_types.

      when 'GET_UNIT_TYPE_DETAILS_BY_NUMBER'.

        call method zcl_soz_func_loc_data_provider=>get_cl_details_by_cl_num
          exporting
            ip_cl_number = ip_unit_type
          changing
            et_class     = et_unit_types.

        ep_return_code = sy-subrc.

      when 'GET_PART_TYPE_DETAILS_BY_NUMBER'.

        clear wa_part_type.

        wa_part_type-part_type_name = ip_part_type.
        wa_part_type-part_type_desc = zcl_soz_func_loc_data_provider=>get_chrstics_text_by_name( ip_part_type ).

        append  wa_part_type to et_part_types.

        ep_return_code = sy-subrc.

      when 'GET_OBJECTS_BY_ORG_STRUCTURE_CODE'.

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method       = 'GET_ALL_OBJECT_TYPES'
          importing
            ep_return_code  = lv_return_code
          changing
            et_object_types = lt_object_types.

        loop at lt_object_types assigning <ls_object_types>.

          clear lt_objects.

          loop at it_org_struct_codes assigning field-symbol(<ls_org_struct_codes>).

            clear wa_object.

            call method zcl_soz_func_loc_data_provider=>get_fl_list_by_cl_num
              exporting
                ip_class_number         = <ls_object_types>-obj_type_num
                ip_iwerk                = ip_department
                ip_validate_soz_check   = 'X'
                ip_validate_soz_org_cod = <ls_org_struct_codes>-code
              changing
                et_fl                   = lt_objects.

            loop at lt_objects assigning <ls_object>.

              wa_object-obj_number = <ls_object>-obj_number.
              wa_object-obj_name = <ls_object>-obj_name.

              append wa_object to et_objects.

            endloop. "loop at lt_objects ASSIGNING <ls_object>



          endloop. " LOOP AT it_org_struct_codes ASSIGNING FIELD-SYMBOL(<ls_org_struct_codes>)



        endloop. " loop at lt_object_types ASSIGNING FIELD-SYMBOL(<ls_object_types>)

        ep_return_code = sy-subrc.

        sort et_objects.
        delete adjacent duplicates from et_objects.

      when 'GET_OBJECT_ORG_STRUCTURE_CODE'.

        call method zcl_soz_func_loc_data_provider=>get_fl_soz_org_cod_chrstics
          exporting
            ip_fl_number = ip_obj_number
          importing
            ep_value     = ep_org_struct_code.

        ep_return_code = sy-subrc.


      when 'GET_SOZ_INCIDENT_PACKAGE'.

        " All major incident details at once

        if ip_obj_number is not initial.

          " Object text

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method      = 'GET_OBJECT_DETAILS_BY_NUMBER'
              ip_obj_number  = ip_obj_number
            importing
              ep_return_code = lv_return_code
            changing
              et_objects     = lt_objects.

          if lt_objects is not initial.

            read table lt_objects into data(ls_object) index 1.

            if sy-subrc eq 0.

              ep_obj_name = ls_object-obj_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_objects is not initial.

          " Object type

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method       = 'GET_OBJECT_TYPE_OF_OBJECT'
              ip_obj_number   = ip_obj_number
            importing
              ep_return_code  = lv_return_code
            changing
              et_object_types = lt_object_types.

          if lt_object_types is not initial.

            read table lt_object_types into data(ls_object_types) index 1.

            if sy-subrc eq 0.

              ep_obj_type_num = ls_object_types-obj_type_num.
              ep_obj_type_name = ls_object_types-obj_type_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_object_types is not initial.

        endif. " if ip_obj_number is not initial


        if ip_eqpm_number is not initial.

          " Equipment text

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method      = 'GET_EQPM_DETAILS_BY_NUMBER'
              ip_eqpm_number = ip_eqpm_number
            importing
              ep_return_code = lv_return_code
            changing
              et_eqpm        = lt_eqpm.

          if lt_eqpm is not initial.

            read table lt_eqpm into data(ls_eqpm) index 1.

            if sy-subrc eq 0.

              ep_eqpm_name = ls_eqpm-eqpm_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_eqpm is not initial.

          " Equipment type

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method      = 'GET_EQPM_TYPE_OF_EQPM'
              ip_eqpm_number = ip_eqpm_number
            importing
              ep_return_code = lv_return_code
            changing
              et_eqpm_types  = lt_eqpm_types.

          if lt_eqpm_types is not initial.

            read table lt_eqpm_types into data(ls_eqpm_types) index 1.

            if sy-subrc eq 0.

              ep_eqpm_type_num = ls_eqpm_types-eqpm_type_num.
              ep_eqpm_type_name = ls_eqpm_types-eqpm_type_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_eqpm_types is not initial.


        endif. " if ip_eqpm_number is not initial

        if ip_unit_number is not initial.

          "Unit text

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method      = 'GET_UNIT_DETAILS_BY_NUMBER'
              ip_unit_number = ip_unit_number
            importing
              ep_return_code = lv_return_code
            changing
              et_units       = lt_units.

          if lt_units is not initial.

            read table lt_units into data(ls_units) index 1.

            if sy-subrc eq 0.

              ep_unit_name = ls_units-unit_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_units is not initial.

          " Unit type

          call function 'ZSOZ_API_EXT'
            exporting
              ip_method      = 'GET_UNIT_TYPE_OF_UNIT'
              ip_unit_number = ip_unit_number
            importing
              ep_return_code = lv_return_code
            changing
              et_unit_types  = lt_unit_types.

          if lt_unit_types is not initial.

            read table lt_unit_types into data(ls_unit_types) index 1.

            if sy-subrc eq 0.

              ep_unit_type_num = ls_unit_types-unit_type_num.
              ep_unit_type_name = ls_unit_types-unit_type_name.

            endif. "  if sy-subrc eq 0.

          endif. " if lt_unit_types is not initial.


        endif. " if ip_unit_number is not initial

        " Part text

        call function 'ZSOZ_API_EXT'
          exporting
            ip_method      = 'GET_PART_DETAILS_BY_NUMBER'
            ip_part_number = ip_part_number
          importing
            ep_return_code = lv_return_code
          changing
            et_parts       = lt_parts.

        if lt_parts is not initial.

          read table lt_parts into data(ls_parts) index 1.

          if sy-subrc eq 0.

            ep_part_desc = ls_parts-part_desc.

          endif. "  if sy-subrc eq 0.

        endif. " if lt_parts is not initial.

        ep_return_code = lv_return_code.


      when 'GET_OBJECT_SOZ_AZS_TIME'.

        " Get SOZ_AZS_TIME characteristics of object

        call method zcl_soz_func_loc_data_provider=>get_fl_soz_azs_time_chrstics
          exporting
            ip_fl_number = ip_obj_number
          importing
            ep_value     = ep_soz_azs_time.

        ep_return_code = sy-subrc.


    endcase. "CASE ip_method

  endif. " IF ( ip_method IS NOT INITIAL )


endfunction.
