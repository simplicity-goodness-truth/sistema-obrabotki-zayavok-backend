class ZCL_SOZ_FUNC_LOC_DATA_PROVIDER definition
  public
  final
  create public .

public section.

  types:
    BEGIN OF ty_fl,
*        class_number TYPE klasse_d,
*        class_name   TYPE klschl,
        fl_number   TYPE tplnr,
        fl_name     TYPE pltxt,
        fl_location TYPE iwerk,
      END OF ty_fl .
  types:
    tt_fl TYPE TABLE OF ty_fl .
  types:
    BEGIN OF ty_class,
        class_number TYPE klasse_d,
        class_name   TYPE klschl,
        "  class_location  TYPE iwerk,
      END OF ty_class .
  types:
    tt_class TYPE TABLE OF ty_class .
  types:
    BEGIN OF ty_eqpm,
        eqpm_number TYPE equnr,
        eqpm_name   TYPE ktx01,
      END OF ty_eqpm .
  types:
    tt_eqpm TYPE TABLE OF ty_eqpm .
  types:
    BEGIN OF ty_chrstics,
        chrstics_name    TYPE atnam,
        chrstics_value   TYPE atwrt,
        chrstics_counter TYPE wzaehl,
        chrstics_desc    TYPE atbez,
      END OF ty_chrstics .
  types:
    tt_chrstics TYPE TABLE OF ty_chrstics .

  class-methods GET_CHRSTICS_TEXT_BY_NAME
    importing
      !IP_CHRSTICS_NAME type ATNAM
    returning
      value(EP_CHRSTICS_TEXT) type ATBEZ .
  class-methods GET_FL_SOZ_AZS_TIME_CHRSTICS
    importing
      !IP_FL_NUMBER type TPLNR
    exporting
      !EP_VALUE type INT4 .
  class-methods GET_FL_SOZ_ORG_COD_CHRSTICS
    importing
      !IP_FL_NUMBER type TPLNR
    exporting
      !EP_VALUE type CHAR12 .
  class-methods GET_CL_LIST_BY_CL_TYPE
    importing
      !IP_KLART type KLASSENART
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_FL_LIST_BY_CL_TYPE
    importing
      !IP_KLART type KLASSENART
      !IP_IWERK type IWERK optional
      !IP_EXCLUDE_CLASS_NUMBER type KLASSE_D optional
      !IP_VALIDATE_SOZ_CHECK type CHAR1
    changing
      !ET_FL type TT_FL .
  class-methods GET_ROOT_CLASSES
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_CHRSTICS_BY_EQPM_NUM
    importing
      !IP_EQPM_NUMBER type EQUNR
      value(IP_CHRSTICS_NAME) type ATNAM optional
      !IP_SPRAS type SPRAS optional
    changing
      !ET_CHRSTICS type TT_CHRSTICS .
  class-methods GET_CHRSTICS_BY_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
      value(IP_CHRSTICS_NAME) type ATNAM optional
    changing
      !ET_CHRSTICS type TT_CHRSTICS .
  class-methods GET_EQPM_LIST_BY_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
      !IP_SPRAS type SPRAS optional
      !IP_VALIDATE_SOZ_CHECK type CHAR1
    changing
      !ET_EQPM type TT_EQPM .
  class-methods GET_CL_DETAILS_BY_CL_NUM
    importing
      !IP_CL_NUMBER type KLASSE_D
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_CL_DETAILS_BY_EQPM_NUM
    importing
      !IP_EQPM_NUMBER type EQUNR
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_CL_DETAILS_BY_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_EQPM_DETAILS_BY_EQPM_NUM
    importing
      !IP_EQPM_NUMBER type EQUNR
      !IP_SPRAS type SPRAS optional
    changing
      !ET_EQPM type TT_EQPM .
  class-methods GET_FL_DETAILS_BY_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
    changing
      !ET_FL type TT_FL .
  class-methods GET_CL_LIST_BY_SUPER_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
    changing
      !ET_CLASS type TT_CLASS .
  class-methods GET_FL_LIST_BY_SUPER_FL_NUM
    importing
      !IP_FL_NUMBER type TPLNR
      !IP_VALIDATE_SOZ_CHECK type CHAR1
    changing
      !ET_FL type TT_FL .
  class-methods GET_FL_LIST_BY_CL_NUM
    importing
      !IP_CLASS_NUMBER type KLASSE_D
      !IP_IWERK type IWERK optional
      !IP_VALIDATE_SOZ_CHECK type CHAR1
      !IP_VALIDATE_SOZ_ORG_COD type CHAR12 optional
    changing
      !ET_FL type TT_FL .
protected section.
private section.

  class-methods GET_FL_SOZ_CHECK_CHRSTICS
    importing
      !IP_FL_NUMBER type TPLNR
    exporting
      !EP_VALUE type CHAR1 .
ENDCLASS.



CLASS ZCL_SOZ_FUNC_LOC_DATA_PROVIDER IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CHRSTICS_BY_EQPM_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EQPM_NUMBER                 TYPE        EQUNR
* | [--->] IP_CHRSTICS_NAME               TYPE        ATNAM(optional)
* | [--->] IP_SPRAS                       TYPE        SPRAS(optional)
* | [<-->] ET_CHRSTICS                    TYPE        TT_CHRSTICS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_chrstics_by_eqpm_num.


    DATA: lt_inob        TYPE STANDARD TABLE OF inob,
          lv_spras       TYPE spras VALUE 'R',
          wa_chrstics    TYPE ty_chrstics,
          lt_chrstics    TYPE tt_chrstics,
          lv_eqpm_number TYPE equnr,
          lt_atnam       TYPE RANGE OF cabn-atnam,
          wa_atnam       LIKE LINE OF lt_atnam.


    IF ip_chrstics_name IS NOT INITIAL.

      wa_atnam-sign = 'I'.
      wa_atnam-option = 'EQ'.
      wa_atnam-low = ip_chrstics_name.
      APPEND wa_atnam TO lt_atnam.

    ENDIF.

    IF ip_spras IS NOT INITIAL.

      lv_spras = ip_spras.

    ENDIF.


    IF ip_eqpm_number IS NOT INITIAL.

      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = ip_eqpm_number
        IMPORTING
          output = lv_eqpm_number.

      SELECT cuobj INTO CORRESPONDING FIELDS OF TABLE lt_inob FROM inob WHERE
        objek = lv_eqpm_number.

      LOOP AT lt_inob ASSIGNING FIELD-SYMBOL(<ls_inob>).

        CLEAR: wa_chrstics,
               lt_chrstics.

        " Characteristic value ( ausp-atwrt ) of 0 means we should not use it in SOZ

        SELECT  c~atnam a~atwrt a~atzhl d~atbez
          FROM ( ausp AS a
                INNER JOIN cabn AS c ON c~atinn = a~atinn
                INNER JOIN cabnt AS d ON d~atinn = a~atinn )
          INTO TABLE lt_chrstics
          WHERE a~objek = <ls_inob>-cuobj AND d~spras = lv_spras and a~atwrt NE '0'.


        LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>) WHERE chrstics_name IN lt_atnam.

          wa_chrstics-chrstics_name  = <ls_chrstics>-chrstics_name.
          wa_chrstics-chrstics_value = <ls_chrstics>-chrstics_value.
          wa_chrstics-chrstics_counter = <ls_chrstics>-chrstics_counter.
          wa_chrstics-chrstics_desc = <ls_chrstics>-chrstics_desc.



          APPEND wa_chrstics TO et_chrstics.

        ENDLOOP. " loop at lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)

      ENDLOOP.  " loop at lt_inob ASSIGNING FIELD-SYMBOL(<ls_inob>)

    ENDIF. " IF ip_eqpm_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CHRSTICS_BY_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [--->] IP_CHRSTICS_NAME               TYPE        ATNAM(optional)
* | [<-->] ET_CHRSTICS                    TYPE        TT_CHRSTICS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_chrstics_by_fl_num.


    DATA: lt_class           TYPE tt_class,
          wa_class           TYPE ty_class,
          lv_objek           TYPE  objnum,
          wa_chrstics        TYPE ty_chrstics,
          lt_chrstics        TYPE tt_chrstics,
          lt_atnam           TYPE RANGE OF cabn-atnam,
          wa_atnam           LIKE LINE OF lt_atnam,
          lt_allocvaluesnum  TYPE STANDARD TABLE OF bapi1003_alloc_values_num,
          lt_allocvalueschar TYPE STANDARD TABLE OF bapi1003_alloc_values_char,
          lt_allocvaluescurr TYPE STANDARD TABLE OF bapi1003_alloc_values_curr,
          lt_return          TYPE STANDARD TABLE OF bapiret2,
          lv_status          TYPE clstatus,
          lv_standard_class  TYPE stdclass.


    IF ip_chrstics_name IS NOT INITIAL.

      wa_atnam-sign = 'I'.
      wa_atnam-option = 'EQ'.
      wa_atnam-low = ip_chrstics_name.
      APPEND wa_atnam TO lt_atnam.

    ENDIF.

    IF ip_fl_number IS NOT INITIAL.

      " Getting name of class

      CALL METHOD zcl_soz_func_loc_data_provider=>get_cl_details_by_fl_num
        EXPORTING
          ip_fl_number = ip_fl_number
        CHANGING
          et_class     = lt_class.


      READ TABLE lt_class INDEX 1 INTO wa_class.

      IF wa_class IS NOT INITIAL.

        lv_objek = ip_fl_number.

        CALL FUNCTION 'BAPI_OBJCL_GETDETAIL'
          EXPORTING
            objectkey        = lv_objek
            objecttable      = 'IFLOT'
            classnum         = wa_class-class_number
            classtype        = '003'
            keydate          = sy-datum
            unvaluated_chars = ' '
            language         = sy-langu
          IMPORTING
            status           = lv_status
            standardclass    = lv_standard_class
          TABLES
            allocvaluesnum   = lt_allocvaluesnum
            allocvalueschar  = lt_allocvalueschar
            allocvaluescurr  = lt_allocvaluescurr
            return           = lt_return.

        " Adding numericalcharacteristics

        LOOP AT  lt_allocvaluesnum ASSIGNING FIELD-SYMBOL(<ls_allocvaluesnum>) WHERE charact IN lt_atnam.

          CLEAR wa_chrstics.

          wa_chrstics-chrstics_name  = <ls_allocvaluesnum>-charact.
          wa_chrstics-chrstics_value = <ls_allocvaluesnum>-value_from.
          wa_chrstics-chrstics_counter = <ls_allocvaluesnum>-instance.
          wa_chrstics-chrstics_desc = <ls_allocvaluesnum>-charact_descr.

          APPEND wa_chrstics TO et_chrstics.

        ENDLOOP. " LOOP AT lt_allocvaluesnum ASSIGNING FIELD-SYMBOL(<ls_allocvaluesnum>) WHERE charact IN lt_atnam.

        " Adding character characteristics

        LOOP AT  lt_allocvalueschar ASSIGNING FIELD-SYMBOL(<ls_allocvalueschar>) WHERE charact IN lt_atnam.

          CLEAR wa_chrstics.

          wa_chrstics-chrstics_name  = <ls_allocvalueschar>-charact.
          wa_chrstics-chrstics_value = <ls_allocvalueschar>-value_char.
          wa_chrstics-chrstics_counter = <ls_allocvalueschar>-instance.
          wa_chrstics-chrstics_desc = <ls_allocvalueschar>-charact_descr.

          APPEND wa_chrstics TO et_chrstics.

        ENDLOOP. " LOOP AT lt_allocvalueschar ASSIGNING FIELD-SYMBOL(<ls_allocvalueschar>) WHERE charact IN lt_atnam.


      ENDIF.  " if wa_class is not INITIAL

    ENDIF. " IF ip_fl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CHRSTICS_TEXT_BY_NAME
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CHRSTICS_NAME               TYPE        ATNAM
* | [<-()] EP_CHRSTICS_TEXT               TYPE        ATBEZ
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_chrstics_text_by_name.

    IF ip_chrstics_name IS NOT INITIAL.

      SELECT SINGLE d~atbez
        FROM ( cabn AS a
              INNER JOIN cabnt AS d ON d~atinn = a~atinn
               )
        INTO ep_chrstics_text
        WHERE a~atnam = ip_chrstics_name.


    ENDIF.  " if ip_chrstics_name is not INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CL_DETAILS_BY_CL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CL_NUMBER                   TYPE        KLASSE_D
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_cl_details_by_cl_num.

    IF ip_cl_number IS NOT INITIAL.


      SELECT  c~class w~kschl UP TO 1 ROWS
         FROM ( klah AS c
         INNER JOIN swor AS w ON w~clint = c~clint ) INTO TABLE et_class
         WHERE c~class = ip_cl_number .



    ENDIF. " IF ip_cl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CL_DETAILS_BY_EQPM_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EQPM_NUMBER                 TYPE        EQUNR
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_cl_details_by_eqpm_num.

    DATA:
      lv_class TYPE klah-class.

    IF ip_eqpm_number IS NOT INITIAL.

      CALL FUNCTION 'ITOB_GET_CLASS_STANDARD'
        EXPORTING
          equnr_imp = ip_eqpm_number
        IMPORTING
          class_exp = lv_class.

      IF sy-subrc  = 0.

        SELECT  c~class w~kschl UP TO 1 ROWS
           FROM ( klah AS c
           INNER JOIN swor AS w ON w~clint = c~clint ) INTO TABLE et_class
           WHERE c~class = lv_class .

      ENDIF. " IF sy-subrc  = 0

    ENDIF. " IF ip_eqpm_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CL_DETAILS_BY_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_cl_details_by_fl_num.

    DATA:
          lt_kssk TYPE STANDARD TABLE OF kssk.
          "lv_fl_number type tplnr.

    IF ip_fl_number IS NOT INITIAL.

      SELECT clint INTO CORRESPONDING FIELDS OF TABLE lt_kssk FROM kssk WHERE objek = ip_fl_number.

      LOOP AT lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>).

        SELECT  c~class w~kschl UP TO 1 ROWS
           FROM ( klah AS c
           INNER JOIN swor AS w ON w~clint = c~clint ) INTO TABLE et_class
           WHERE c~clint = <ls_kssk>-clint .

      ENDLOOP.  " loop at lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>)


    ENDIF. " IF ip_fl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CL_LIST_BY_CL_TYPE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_KLART                       TYPE        KLASSENART
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD GET_CL_LIST_BY_CL_TYPE.

    IF ip_klart IS NOT INITIAL.

      SELECT DISTINCT c~class w~kschl
      FROM ( klah AS c
        INNER JOIN swor AS w ON w~clint = c~clint ) INTO TABLE et_class
        WHERE  c~klart = ip_klart
        AND c~klagr = 'CL_SOZ'.

    ENDIF. " if ip_class_number is not INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_CL_LIST_BY_SUPER_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD GET_CL_LIST_BY_SUPER_FL_NUM.

    DATA:  lt_iflot TYPE  STANDARD TABLE OF iflot,
           lt_kssk  TYPE  STANDARD TABLE OF kssk,
           wa_class TYPE ty_class.

    IF ip_fl_number IS NOT INITIAL.

      SELECT tplnr INTO CORRESPONDING FIELDS OF TABLE lt_iflot FROM iflot WHERE tplma = ip_fl_number.

      LOOP AT lt_iflot ASSIGNING FIELD-SYMBOL(<ls_iflot>).

        CLEAR lt_kssk.

        SELECT  clint INTO CORRESPONDING FIELDS OF TABLE lt_kssk  FROM kssk WHERE objek = <ls_iflot>-tplnr.

        LOOP AT lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>).

          CLEAR: wa_class.

          SELECT SINGLE c~class w~kschl INTO wa_class
            FROM ( klah AS c
            INNER JOIN swor AS w ON w~clint = c~clint )
            WHERE c~clint = <ls_kssk>-clint.

          APPEND wa_class TO et_class.

        ENDLOOP. " loop at lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>)

      ENDLOOP. "LOOP AT lt_iflot ASSIGNING FIELD-SYMBOL(<ls_iflot>)

    ENDIF. " IF ip_fl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_EQPM_DETAILS_BY_EQPM_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EQPM_NUMBER                 TYPE        EQUNR
* | [--->] IP_SPRAS                       TYPE        SPRAS(optional)
* | [<-->] ET_EQPM                        TYPE        TT_EQPM
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_eqpm_details_by_eqpm_num.

    DATA: lv_spras       TYPE spras VALUE 'R',
          lv_eqpm_number TYPE equnr.

    IF ip_eqpm_number IS NOT INITIAL.

      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = ip_eqpm_number
        IMPORTING
          output = lv_eqpm_number.

      IF ip_spras IS NOT INITIAL.

        lv_spras = ip_spras.

      ENDIF.

      SELECT f~equnr k~eqktx
          FROM ( equz AS f
            INNER JOIN eqkt AS k ON k~equnr = f~equnr

             ) INTO TABLE et_eqpm
               WHERE  f~equnr = lv_eqpm_number
               AND k~spras = lv_spras.

    ENDIF. " IF ip_eqpm_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_EQPM_LIST_BY_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [--->] IP_SPRAS                       TYPE        SPRAS(optional)
* | [--->] IP_VALIDATE_SOZ_CHECK          TYPE        CHAR1
* | [<-->] ET_EQPM                        TYPE        TT_EQPM
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_eqpm_list_by_fl_num.

    DATA: lv_spras    TYPE spras VALUE 'R',
          lt_iloa     TYPE  STANDARD TABLE OF iloa,
          wa_eqpm     TYPE ty_eqpm,
          lt_chrstics TYPE tt_chrstics.

    IF ip_spras IS NOT INITIAL.

      lv_spras = ip_spras.

    ENDIF.

    IF ip_fl_number IS NOT INITIAL.

      SELECT iloan INTO CORRESPONDING FIELDS OF TABLE lt_iloa FROM iloa WHERE  tplnr = ip_fl_number.

      LOOP AT lt_iloa ASSIGNING FIELD-SYMBOL(<ls_iloa>).

        CLEAR wa_eqpm.

        SELECT  SINGLE f~equnr k~eqktx
        FROM ( equz AS f
          INNER JOIN eqkt AS k ON k~equnr = f~equnr

           ) INTO wa_eqpm
             WHERE  f~iloan = <ls_iloa>-iloan AND
             f~datab <= sy-datum AND f~datbi >= sy-datum AND
              k~spras = lv_spras.

        IF wa_eqpm IS INITIAL.
          CONTINUE.
        ENDIF.



        " Adding validation for SOZ_CHECK characteristics

        IF ( ip_validate_soz_check = 'X' ).

          CLEAR lt_chrstics.

          CALL METHOD zcl_soz_func_loc_data_provider=>get_chrstics_by_eqpm_num
            EXPORTING
              ip_eqpm_number   = wa_eqpm-eqpm_number
              ip_chrstics_name = 'SOZ_CHECK'
            CHANGING
              et_chrstics      = lt_chrstics.

          LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>).

            IF ( <ls_chrstics>-chrstics_value NE '0' ).
              APPEND wa_eqpm TO et_eqpm.
            ENDIF.

          ENDLOOP. " loop at lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)

        ELSE.
          APPEND wa_eqpm TO et_eqpm.
        ENDIF. " IF ( ip_validate_soz_check = 'X' )


      ENDLOOP. " LOOP AT lt_iloa ASSIGNING FIELD-SYMBOL(<ls_iloa>)

    ENDIF. " IF ip_fl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_DETAILS_BY_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<-->] ET_FL                          TYPE        TT_FL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD GET_FL_DETAILS_BY_FL_NUM.

    IF ip_fl_number IS NOT INITIAL.

      SELECT t~tplnr f~pltxt t~iwerk INTO TABLE et_fl
        FROM ( iflot AS t
               INNER JOIN iflo AS f ON t~tplnr = f~tplnr )
                  WHERE t~tplnr = ip_fl_number
                    AND t~fltyp = 'O'.

    ENDIF. " IF ip_fl_number IS NOT INITIAL

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_LIST_BY_CL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CLASS_NUMBER                TYPE        KLASSE_D
* | [--->] IP_IWERK                       TYPE        IWERK(optional)
* | [--->] IP_VALIDATE_SOZ_CHECK          TYPE        CHAR1
* | [--->] IP_VALIDATE_SOZ_ORG_COD        TYPE        CHAR12(optional)
* | [<-->] ET_FL                          TYPE        TT_FL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_fl_list_by_cl_num.


    DATA: lt_iwerk        TYPE RANGE OF iflot-iwerk,
          wa_iwerk        LIKE LINE OF lt_iwerk,
          lt_class        TYPE  STANDARD TABLE OF klah,
          wa_fl           TYPE ty_fl,
          lt_kssk         TYPE STANDARD TABLE OF kssk,
          lv_soz_check    TYPE char1,
          lv_class_number TYPE klasse_d,
          lt_chrstics     TYPE tt_chrstics,
          wa_chrstics     TYPE ty_chrstics.

    IF ip_iwerk IS NOT INITIAL.

      wa_iwerk-sign = 'I'.
      wa_iwerk-option = 'EQ'.
      wa_iwerk-low = ip_iwerk.
      APPEND wa_iwerk TO lt_iwerk.

    ENDIF.

    IF ip_class_number IS NOT INITIAL.

      CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
        EXPORTING
          input  = ip_class_number
        IMPORTING
          output = lv_class_number.

      SELECT clint INTO CORRESPONDING FIELDS OF TABLE lt_class FROM klah
          WHERE class = lv_class_number
          AND klagr = 'CL_SOZ'.


      LOOP AT lt_class ASSIGNING FIELD-SYMBOL(<ls_class>).

        CLEAR: wa_fl,
               lt_kssk.

        SELECT objek INTO CORRESPONDING FIELDS OF TABLE lt_kssk FROM kssk WHERE clint = <ls_class>-clint.

        LOOP AT lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>).


          SELECT SINGLE t~tplnr f~pltxt t~iwerk INTO wa_fl
                                    FROM (  iflot AS t
                                        INNER JOIN iflo AS f ON t~tplnr = f~tplnr )
            WHERE t~tplnr = <ls_kssk>-objek
            AND t~iwerk IN lt_iwerk.

          " Adding validation for characteristics

          IF ( ip_validate_soz_check = 'X' ) AND ( ip_validate_soz_org_cod IS INITIAL ).

            lv_soz_check = '0'.

            CALL METHOD zcl_soz_func_loc_data_provider=>get_fl_soz_check_chrstics
              EXPORTING
                ip_fl_number = wa_fl-fl_number
              IMPORTING
                ep_value     = lv_soz_check.

            IF ( lv_soz_check = '1' ).

              APPEND wa_fl TO et_fl.

            ENDIF. " if ( lv_soz_check = 1 )

          ENDIF. " IF ( ip_validate_soz_check = 'X' ) AND ( ip_validate_soz_org_cod IS INITIAL )


          IF ( ip_validate_soz_check IS INITIAL ) AND ( ip_validate_soz_org_cod IS INITIAL ).

            APPEND wa_fl TO et_fl.

          ENDIF. " IF ( ip_validate_soz_check is INITIAL ) AND ( ip_validate_soz_org_cod IS INITIAL )


          IF ( ip_validate_soz_check = 'X' ) AND ( ip_validate_soz_org_cod IS NOT INITIAL ).

            CLEAR:
              lt_chrstics,
              wa_chrstics.


            CALL METHOD zcl_soz_func_loc_data_provider=>get_chrstics_by_fl_num
              EXPORTING
                ip_fl_number = wa_fl-fl_number
              CHANGING
                et_chrstics  = lt_chrstics.

            " First we need to check SOZ_CHECK and then SOZ_ORG_COD


            READ TABLE lt_chrstics WITH KEY chrstics_name = 'SOZ_CHECK' INTO wa_chrstics.

            IF sy-subrc = 0.

              IF ( wa_chrstics-chrstics_value = '1' ).

                " Checking SOZ_ORG_COD

                CLEAR wa_chrstics.

                READ TABLE lt_chrstics WITH KEY chrstics_name = 'SOZ_ORG_COD' INTO wa_chrstics.

                IF sy-subrc = 0.

                  IF ( wa_chrstics-chrstics_value = ip_validate_soz_org_cod ).
                    APPEND wa_fl TO et_fl.
                  ENDIF. " IF ( wa_chrstics-chrstics_value = ip_validate_soz_org_cod )

                ENDIF. " IF sy-subrc = 0.

              ENDIF. " IF ( wa_chrstics-chrstics_value = '1' )


            ENDIF. " if sy-subrc = 0







          ENDIF. " IF ( ip_validate_soz_check = 'X' ) AND ( ip_validate_soz_org_cod IS NOT INITIAL )









        ENDLOOP. " loop at lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>)

      ENDLOOP. " LOOP at lt_class ASSIGNING FIELD-SYMBOL(<ls_class>)

    ENDIF. " IF ip_klart IS NOT INITIAL


  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_LIST_BY_CL_TYPE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_KLART                       TYPE        KLASSENART
* | [--->] IP_IWERK                       TYPE        IWERK(optional)
* | [--->] IP_EXCLUDE_CLASS_NUMBER        TYPE        KLASSE_D(optional)
* | [--->] IP_VALIDATE_SOZ_CHECK          TYPE        CHAR1
* | [<-->] ET_FL                          TYPE        TT_FL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_fl_list_by_cl_type.

    DATA: lt_iwerk         TYPE RANGE OF iflot-iwerk,
          wa_iwerk         LIKE LINE OF lt_iwerk,
          lt_exclude_class TYPE RANGE OF klah-class,
          wa_exclude_class LIKE LINE OF lt_exclude_class,
          lt_class         TYPE  STANDARD TABLE OF klah,
          wa_fl            TYPE ty_fl,
          lt_kssk          TYPE STANDARD TABLE OF kssk,
          lv_soz_check     TYPE char1.

    IF ip_iwerk IS NOT INITIAL.

      wa_iwerk-sign = 'I'.
      wa_iwerk-option = 'EQ'.
      wa_iwerk-low = ip_iwerk.
      APPEND wa_iwerk TO lt_iwerk.

    ENDIF.

    IF ip_exclude_class_number IS NOT INITIAL.

      wa_exclude_class-sign = 'I'.
      wa_exclude_class-option = 'EQ'.
      wa_exclude_class-low = ip_exclude_class_number.
      APPEND wa_exclude_class TO lt_exclude_class.

    ENDIF.


    IF ip_klart IS NOT INITIAL.

      SELECT clint INTO CORRESPONDING FIELDS OF TABLE lt_class FROM klah
          WHERE  klart = ip_klart
          AND klagr = 'CL_SOZ'
         AND class NOT IN lt_exclude_class.

      LOOP AT lt_class ASSIGNING FIELD-SYMBOL(<ls_class>).

        CLEAR: wa_fl,
               lt_kssk.

        SELECT objek INTO CORRESPONDING FIELDS OF TABLE lt_kssk FROM kssk WHERE clint = <ls_class>-clint.

        LOOP AT lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>).

          SELECT SINGLE t~tplnr f~pltxt t~iwerk INTO wa_fl
            FROM (  iflot AS t
                    INNER JOIN iflo AS f ON t~tplnr = f~tplnr )
            WHERE t~tplnr = <ls_kssk>-objek
            AND t~iwerk IN lt_iwerk.

          " Adding validation for SOZ_CHECK characteristics

          lv_soz_check = '0'.

          IF ( ip_validate_soz_check = 'X' ).

            CALL METHOD zcl_soz_func_loc_data_provider=>get_fl_soz_check_chrstics
              EXPORTING
                ip_fl_number = wa_fl-fl_number
              IMPORTING
                ep_value     = lv_soz_check.

            IF ( lv_soz_check = '1' ).

              APPEND wa_fl TO et_fl.

            ENDIF. " if ( lv_soz_check = 1 )


          ELSE.

            APPEND wa_fl TO et_fl.

          ENDIF. " IF ( ip_validate_soz_check = 'X' )


        ENDLOOP. " loop at lt_kssk ASSIGNING FIELD-SYMBOL(<ls_kssk>)

      ENDLOOP. " LOOP at lt_class ASSIGNING FIELD-SYMBOL(<ls_class>)

    ENDIF. " IF ip_klart IS NOT INITIAL


  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_LIST_BY_SUPER_FL_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [--->] IP_VALIDATE_SOZ_CHECK          TYPE        CHAR1
* | [<-->] ET_FL                          TYPE        TT_FL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_fl_list_by_super_fl_num.

    DATA: lv_soz_check    TYPE char1,
          lt_fl_to_delete TYPE tt_fl,
          wa_fl_to_delete TYPE ty_fl.





    SELECT t~tplnr f~pltxt t~iwerk INTO TABLE et_fl
    FROM ( iflot AS t
    INNER JOIN iflo AS f ON t~tplnr = f~tplnr )
       WHERE t~tplma = ip_fl_number.

    " Adding validation for SOZ_CHECK characteristics

    IF ( ip_validate_soz_check = 'X' ).

      LOOP AT et_fl ASSIGNING FIELD-SYMBOL(<et_fl>).

      lv_soz_check = '0'.

        CALL METHOD zcl_soz_func_loc_data_provider=>get_fl_soz_check_chrstics
          EXPORTING
            ip_fl_number = <et_fl>-fl_number
          IMPORTING
            ep_value     = lv_soz_check.

            IF ( lv_soz_check = '0' ).

                wa_fl_to_delete-fl_number = <et_fl>-fl_number.

                append wa_fl_to_delete to lt_fl_to_delete.

            endif.  " IF ( lv_soz_check = '0' )


      ENDLOOP.

      loop at lt_fl_to_delete ASSIGNING FIELD-SYMBOL(<ls_fl_to_delete>).

        delete et_fl where fl_number = <ls_fl_to_delete>-fl_number.

      endloop. " loop at lt_fl_to_delete ASSIGNING FIELD-SYMBOL(<ls_fl_to_delete>)

    ENDIF. "    IF ( ip_validate_soz_check = 'X' ).



  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_SOZ_AZS_TIME_CHRSTICS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<---] EP_VALUE                       TYPE        INT4
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_fl_soz_azs_time_chrstics.

    data: lt_chrstics     type tt_chrstics,
          lv_packed_value type p decimals 2,
          lv_float_value  type float.

    clear lt_chrstics.

    call method zcl_soz_func_loc_data_provider=>get_chrstics_by_fl_num
      exporting
        ip_fl_number     = ip_fl_number
        ip_chrstics_name = 'SOZ_AZS_TIME'
      changing
        et_chrstics      = lt_chrstics.

    loop at lt_chrstics assigning field-symbol(<ls_chrstics>).

      lv_float_value = <ls_chrstics>-chrstics_value.

      lv_packed_value = lv_float_value.

      ep_value = lv_packed_value.

    endloop. " LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_SOZ_CHECK_CHRSTICS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<---] EP_VALUE                       TYPE        CHAR1
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_fl_soz_check_chrstics.

    DATA lt_chrstics TYPE tt_chrstics.

    CLEAR lt_chrstics.

    CALL METHOD zcl_soz_func_loc_data_provider=>get_chrstics_by_fl_num
      EXPORTING
        ip_fl_number     = ip_fl_number
        ip_chrstics_name = 'SOZ_CHECK'
      CHANGING
        et_chrstics      = lt_chrstics.

    LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>).

      ep_value = <ls_chrstics>-chrstics_value.

    ENDLOOP. " LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)


  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_FL_SOZ_ORG_COD_CHRSTICS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_FL_NUMBER                   TYPE        TPLNR
* | [<---] EP_VALUE                       TYPE        CHAR12
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD GET_FL_SOZ_ORG_COD_CHRSTICS.

    DATA lt_chrstics TYPE tt_chrstics.

    CLEAR lt_chrstics.

    CALL METHOD zcl_soz_func_loc_data_provider=>get_chrstics_by_fl_num
      EXPORTING
        ip_fl_number     = ip_fl_number
        ip_chrstics_name = 'SOZ_ORG_COD'
      CHANGING
        et_chrstics      = lt_chrstics.

    LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>).

      ep_value = <ls_chrstics>-chrstics_value.

    ENDLOOP. " LOOP AT lt_chrstics ASSIGNING FIELD-SYMBOL(<ls_chrstics>)


  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_SOZ_FUNC_LOC_DATA_PROVIDER=>GET_ROOT_CLASSES
* +-------------------------------------------------------------------------------------------------+
* | [<-->] ET_CLASS                       TYPE        TT_CLASS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_root_classes.


    DATA: lt_soz_classes TYPE STANDARD TABLE OF klah,
          lt_fl_of_class TYPE  STANDARD TABLE OF iflot,
          wa_class       TYPE ty_class.

    SELECT class clint INTO CORRESPONDING FIELDS OF TABLE lt_soz_classes FROM klah WHERE klagr = 'CL_SOZ'.


    LOOP AT lt_soz_classes ASSIGNING FIELD-SYMBOL(<ls_soz_classes>).

      CLEAR wa_class.

      SELECT tplma INTO CORRESPONDING FIELDS OF TABLE lt_fl_of_class
        FROM ( kssk AS o
               INNER JOIN iflot AS t ON o~objek = t~tplnr )
        WHERE o~clint = <ls_soz_classes>-clint.

      IF lt_fl_of_class IS NOT INITIAL.

        wa_class-class_number = <ls_soz_classes>-class.

        " Check that ALL FLs of a class do not have superior FL

        LOOP AT lt_fl_of_class  ASSIGNING FIELD-SYMBOL(<ls_fl_of_class>).

          IF <ls_fl_of_class>-tplma IS NOT INITIAL.

            CLEAR wa_class-class_number.
            EXIT.

          ENDIF. " IF <ls_fl_of_class>-tplma IS NOT INITIAL

        ENDLOOP. "  loop at lt_fl_of_class  ASSIGNING FIELD-SYMBOL(<ls_fl_of_class>)

        IF wa_class-class_number IS NOT INITIAL.

          " Search for class description

          SELECT SINGLE kschl INTO wa_class-class_name FROM swor  WHERE clint = <ls_soz_classes>-clint.

          APPEND wa_class TO et_class.

        ENDIF.

      ENDIF. " if lt_fl_of_class is not INITIAL


    ENDLOOP. " loop at lt_soz_classes ASSIGNING FIELD-SYMBOL(<ls_soz_classes>)

  ENDMETHOD.
ENDCLASS.