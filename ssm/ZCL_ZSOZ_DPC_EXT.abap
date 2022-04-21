class zcl_zsoz_dpc_ext definition
  public
  inheriting from zcl_zsoz_dpc
  create public .

  public section.

    methods /iwbep/if_mgw_appl_srv_runtime~changeset_begin 
        redefinition .
    methods /iwbep/if_mgw_appl_srv_runtime~changeset_end
        redefinition .
    methods /iwbep/if_mgw_appl_srv_runtime~create_stream
        redefinition .
    methods /iwbep/if_mgw_appl_srv_runtime~delete_stream
        redefinition .
    methods /iwbep/if_mgw_appl_srv_runtime~get_stream
        redefinition .
    methods /iwbep/if_mgw_core_srv_runtime~changeset_process
        redefinition .
  protected section.

    methods attachmentset_delete_entity
        redefinition .
    methods attachmentset_get_entity
        redefinition .
    methods attachmentset_get_entityset
        redefinition .
    methods cuserset_get_entity
        redefinition .
    methods departmentset_get_entity
        redefinition .
    methods departmentset_get_entityset
        redefinition .
    methods employeeset_get_entityset
        redefinition .
*  methods EMPLOYEESET_GET_ENTITY
*    redefinition .
    methods equipmentset_get_entity
        redefinition .
    methods equipmentset_get_entityset
        redefinition .
    methods equipmenttypeset_get_entity
        redefinition .
    methods equipmenttypeset_get_entityset
        redefinition .
    methods executorset_get_entity
        redefinition .
    methods historydetailset_get_entityset
        redefinition .
    methods historyheaderset_get_entityset
        redefinition .
    methods incidentset_create_entity
        redefinition .
    methods incidentset_delete_entity
        redefinition .
    methods incidentset_get_entity
        redefinition .
    methods incidentset_get_entityset
        redefinition .
    methods incidentset_update_entity
        redefinition .
    methods leadtimecalculat_get_entity
        redefinition .
    methods malfunctionset_create_entity
        redefinition .
    methods malfunctionset_delete_entity
        redefinition .
    methods malfunctionset_get_entity
        redefinition .
    methods malfunctionset_get_entityset
        redefinition .
    methods malfunctionset_update_entity
        redefinition .
    methods objectset_get_entity
        redefinition .
    methods objectset_get_entityset
        redefinition .
    methods objecttypeset_get_entity
        redefinition .
    methods objecttypeset_get_entityset
        redefinition .
    methods partset_get_entity
        redefinition .
    methods partset_get_entityset
        redefinition .
    methods parttypeset_get_entityset
        redefinition .
    methods priorityset_get_entityset
        redefinition .
    methods problemset_create_entity
        redefinition .
    methods problemset_delete_entity
        redefinition .
    methods problemset_get_entity
        redefinition .
    methods problemset_get_entityset
        redefinition .
    methods problemset_update_entity
        redefinition .
    methods profileset_get_entityset
        redefinition .
    methods rootcauseset_create_entity
        redefinition .
    methods rootcauseset_delete_entity
        redefinition .
    methods rootcauseset_get_entity
        redefinition .
    methods rootcauseset_get_entityset
        redefinition .
    methods rootcauseset_update_entity
        redefinition .
    methods routesset_create_entity
        redefinition .
    methods routesset_delete_entity
        redefinition .
    methods routesset_get_entity
        redefinition .
    methods routesset_get_entityset
        redefinition .
    methods routesset_update_entity
        redefinition .
    methods solutionset_create_entity
        redefinition .
    methods solutionset_delete_entity
        redefinition .
    methods solutionset_get_entity
        redefinition .
    methods solutionset_get_entityset
        redefinition .
    methods solutionset_update_entity
        redefinition .
    methods statusset_get_entityset
        redefinition .
    methods supportteamset_get_entity
        redefinition .
    methods supportteamset_get_entityset
        redefinition .
    methods textset_create_entity
        redefinition .
    methods textset_get_entityset
        redefinition .
    methods timesset_create_entity
        redefinition .
    methods timesset_delete_entity
        redefinition .
    methods timesset_get_entity
        redefinition .
    methods timesset_get_entityset
        redefinition .
    methods timesset_update_entity
        redefinition .
    methods timeswithgroupin_create_entity
        redefinition .
    methods timeswithgroupin_get_entityset
        redefinition .
    methods timeswithgroupin_update_entity
        redefinition .
    methods unitset_get_entity
        redefinition .
    methods unitset_get_entityset
        redefinition .
    methods unittypeset_get_entityset
        redefinition .
    methods watcherset_get_entityset
        redefinition .
    methods timeswithgroupin_delete_entity
        redefinition .
private section.

  class-methods COVERT_EDM_GUID_TO_SOZ_GUID
    importing
      value(IP_EDM_GUID) type CHAR_36
    returning
      value(EP_RESULT) type ZSOZ_DIR_GUID .
  class-methods GET_MLFN_NAME_BY_GUID
    importing
      value(IP_CHECK_AUTHORITY) type AC_BOOL optional
      value(IP_GUID) type ZSOZ_DIR_GUID
    returning
      value(EP_NAME) type CHAR258 .
  class-methods GET_SLTN_NAME_BY_GUID
    importing
      value(IP_CHECK_AUTHORITY) type AC_BOOL optional
      value(IP_GUID) type ZSOZ_DIR_GUID
    returning
      value(EP_NAME) type CHAR258 .
  class-methods GET_PRBL_NAME_BY_GUID
    importing
      value(IP_CHECK_AUTHORITY) type AC_BOOL optional
      value(IP_GUID) type ZSOZ_DIR_GUID
    returning
      value(EP_NAME) type CHAR258 .
  class-methods GET_ORG_UNIT_CODE_BY_BP_NUM
    importing
      !IP_BP type BU_PARTNER
    returning
      value(EP_ORG_UNIT_CODE) type SHORT_D .
  class-methods GET_UNIT_TYPE_OF_UNIT
    importing
      !IP_UNITID type CHAR18
    returning
      value(EP_UNITTYPEID) type CHAR18 .
  class-methods GET_UNIT_TYPE_DETAILS_BY_NUM
    importing
      !IP_UNITTYPEID type CHAR18
    returning
      value(EP_UNITTYPETEXT) type CHAR40 .
  class-methods GET_UNIT_DETAILS_BY_NUM
    importing
      !IP_UNITID type CHAR18
    returning
      value(EP_UNITTEXT) type CHAR40 .
  class-methods GET_PART_TYPE_DETAILS_BY_NUM
    importing
      !IP_PARTTYPEID type CHAR30
    returning
      value(EP_PARTTYPETEXT) type CHAR30 .
  class-methods GET_OBJECT_TYPE_OF_OBJECT
    importing
      !IP_OBJECTID type CHAR30
    exporting
      !EP_OBJECTTYPENAME type CHAR40
    returning
      value(EP_OBJECTTYPEID) type CHAR18 .
  class-methods GET_OBJECT_TYPE_DETAILS_BY_NUM
    importing
      !IP_OBJECTTYPEID type CHAR18
    returning
      value(EP_OBJECTTYPETEXT) type CHAR40 .
  class-methods GET_OBJECT_DETAILS_BY_NUM
    importing
      !IP_OBJECTID type CHAR30
    exporting
      !EP_OBJECTLOCATION type CHAR4
    returning
      value(EP_OBJECTTEXT) type CHAR40 .
  class-methods GET_EQPM_TYPE_OF_EQPM
    importing
      !IP_EQUIPMENTID type CHAR30
    exporting
      !EP_EQUIPMENTTYPENAME type CHAR40
    returning
      value(EP_EQUIPMENTTYPEID) type CHAR18 .
  class-methods GET_EQPM_TYPE_DETAILS_BY_NUM
    importing
      !IP_EQUIPMENTTYPEID type CHAR18
    returning
      value(EP_EQUIPMENTTYPETEXT) type CHAR40 .
  class-methods GET_BP_NAME1_TEXT
    importing
      !IP_BP type BU_PARTNER optional
    returning
      value(EP_RESULT) type CHAR80 .
  class-methods CONVERT_TIME_STAMP
    importing
      !IP_TIMESTAMP type CHAR128
    returning
      value(EP_RESULT) type CHAR20 .
  class-methods CHECK_SOZ_AUTHORITY
    importing
      !IP_ACTIVITY type CHAR20
    returning
      value(EP_AUTHORIZED) type AC_BOOL .
  class-methods CHECK_DB_TABLE_AUTHORITY
    importing
      !IP_TABLE type DBOBJ_NAME
      !IP_ACTION type CHAR2
    returning
      value(EP_AUTHORIZED) type AC_BOOL .
  methods SEND_ERROR_RESPONSE
    importing
      !IP_ERROR_TEXT type BAPI_MSG
    returning
      value(EP_MSG) type ref to /IWBEP/IF_MESSAGE_CONTAINER .
  class-methods USER_IS_ADMINISTRATOR
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods USER_IS_CREATOR
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods USER_IS_ONLY_ADMINISTRATOR
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods GET_USER_SOZ_ROLE_AND_ORG_UNIT
    exporting
      value(ET_ROLES) type ZSOZ_TT_USER_ROLES .
  class-methods USER_IS_ONLY_CREATOR
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods GET_PROCESSOR_RESPONSIBILITY
    importing
      !IP_ORG_UNIT type CHAR12
    returning
      value(EP_DEPARTMENT) type CHAR12 .
  class-methods GET_OBJECTS_OF_USER_BY_ATTRS
    returning
      value(ET_OBJECTS) type ZSOZ_TT_OBJECTS .
  class-methods USER_IS_ONLY_WATCHER
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods USER_IS_PROCESSOR
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods USER_IS_WATCHER
    importing
      !IT_ROLES type ZSOZ_TT_USER_ROLES
    returning
      value(EP_RESULT) type AC_BOOL .
  class-methods GET_FILTER_SELECT_OPTIONS
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
      !IP_PROPERTY type STRING
    returning
      value(ET_SELECT_OPTIONS) type /IWBEP/T_COD_SELECT_OPTIONS .
  class-methods GET_PROPERTY_NAME_BY_ID_HUB
    importing
      !IP_PROPERTY_TYPE type CHAR30
      !IP_PROPERTY_ID type CHAR128
    returning
      value(EP_NAME) type STRING .
  class-methods GET_USER_DEPARTMENT
    importing
      !IP_USER type SY-UNAME
    exporting
      !EP_DEPARTMENT_CODE type SHORT_D
    returning
      value(EP_DEPARTMENT) type BU_PARTNER .
  class-methods PREPARE_FILTER_FOR_TEXT_SEARCH
    importing
      !IT_FILTER type /IWBEP/T_COD_SELECT_OPTIONS
    returning
      value(ET_FILTER_FOR_SEARCH) type /IWBEP/T_COD_SELECT_OPTIONS .
  class-methods EXCLUDE_INCIDENTS_BY_FILTERS
    importing
      !IS_ENTITYSET type ZCL_ZSOZ_MPC=>TS_INCIDENT
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
    returning
      value(EP_INCLUDE_RECORD) type AC_BOOL .
  class-methods SORT_INCIDENTS
    importing
      !IT_ORDER type /IWBEP/T_MGW_SORTING_ORDER
    changing
      !CT_ENTITYSET type ZCL_ZSOZ_MPC=>TT_INCIDENT .
  class-methods CALC_SLA_BY_SRV_PROFILE
    importing
      !IP_ADDED_HOURS_TOTAL type /IWBEP/SB_ODATA_TY_INT2
    exporting
      !EP_SLA_DATE type SY-DATUM
      !EP_SLA_TIME type SY-UZEIT .
  class-methods GET_FILTER_VALUE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_ENTITYSET
      !IP_PROPERTY type STRING
    returning
      value(EP_VALUE) type STRING .
  class-methods GET_PART_TYPE_OF_TYPE
    importing
      value(IP_PART_NUMBER) type ZSOZ_PART_ID
    returning
      value(EP_PART_TYPE) type CHAR30 .
  class-methods GET_ROOT_CAUSE_GUIDS
    importing
      value(IP_OBJECTID) type CHAR30 optional
      value(IP_EQUIPMENTID) type CHAR30 optional
      value(IP_UNITID) type CHAR18 optional
      value(IP_PARTID) type ZSOZ_PART_ID optional
      value(IP_SEARCH_TYPE) type CHAR1
      value(IP_OBJECTTYPEID) type CHAR18 optional
      value(IP_EQUIPMENTTYPEID) type CHAR30 optional
      value(IP_UNITTYPEID) type CHAR18 optional
      value(IP_PARTTYPEID) type CHAR30 optional
    exporting
      value(ET_GUIDS) type ZSOZ_TT_DIR_GUIDS .
  class-methods GET_SHOW_TYPE_PARAM
    importing
      value(IP_HEADER) type TIHTTPNVP
    returning
      value(EP_SHOW_TYPE) type CHAR1 .
  class-methods GET_SLA_TIMES_FOR_REQUEST
    importing
      value(IP_MALFUNCTION_GUID) type ZSOZ_DIR_GUID
      value(IP_DEPARTMENTID) type BU_PARTNER
      value(IP_PRIORITY) type CHAR1
      value(IP_EQUIPMENTTYPEID) type CHAR18
      value(IP_OBJECTTYPEID) type CHAR18
      !IP_UNITTYPEID type CHAR18
      !IP_PARTTYPEID type CHAR30
      value(IP_SOZ_AZS_TIME) type INT4 optional
    exporting
      !EP_LEAD_DATE type SY-DATUM
      !EP_LEAD_TIME type SY-UZEIT .
  class-methods RECORD_REQUEST_HISTORY
    importing
      !IS_PAYLOAD type ZCL_ZSOZ_MPC=>TS_INCIDENT optional
      !IP_ACTION type CHAR1
      !IP_GUID type CRMT_OBJECT_GUID
      !IP_FILENAME type STRING optional .
  class-methods TRANSLATE_TO_RUSSIAN
    importing
      !IP_TEXT type CHAR50
    returning
      value(EP_TEXT_IN_RUSSIAN) type CHAR100 .
  class-methods GENERATE_X16_GUID
    returning
      value(EP_X16_GUID) type SYSUUID_X16 .
  class-methods EXEC_EXT_API_METHOD
    importing
      value(IP_METHOD) type CHAR40
      value(IP_OBJ_NUMBER) type CHAR30 optional
      value(IP_EQPM_NUMBER) type CHAR30 optional
      value(IP_UNIT_NUMBER) type CHAR18 optional
      value(IP_EQPM_TYPE) type CHAR18 optional
      value(IP_PART_NUMBER) type ZSOZ_PART_ID optional
      value(IP_OBJ_TYPE_NUMBER) type CHAR18 optional
      value(IP_UNIT_TYPE) type CHAR18 optional
      value(IP_PART_TYPE) type CHAR30 optional
      value(IP_DEPARTMENT) type CHAR4 optional
      value(IT_ORG_STRUCT_CODES) type ZSOZ_TT_ORG_STRUCT_CODES optional
    exporting
      !EP_UNIT_NAME type CHAR40
      !EP_UNIT_TYPE_NUM type CHAR18
      !EP_UNIT_TYPE_NAME type CHAR40
      value(ET_OBJECT_TYPES) type ZSOZ_TT_OBJECT_TYPES
      value(ET_EQPM_TYPES) type ZSOZ_TT_EQPM_TYPES
      value(ET_EQPM) type ZSOZ_TT_EQPM
      value(ET_UNITS) type ZSOZ_TT_UNITS
      value(ET_PARTS) type ZSOZ_TT_PARTS
      value(ET_OBJECTS) type ZSOZ_TT_OBJECTS
      value(EP_RETURN_CODE) type SY-SUBRC
      !ET_UNIT_TYPES type ZSOZ_TT_UNIT_TYPES
      !ET_PART_TYPES type ZSOZ_TT_PART_TYPES
      value(EP_ORG_STRUCT_CODE) type CHAR12
      !EP_OBJ_NAME type CHAR40
      !EP_OBJ_TYPE_NUM type CHAR18
      !EP_OBJ_TYPE_NAME type CHAR40
      !EP_EQPM_NAME type CHAR40
      !EP_EQPM_TYPE_NUM type CHAR18
      !EP_EQPM_TYPE_NAME type CHAR40
      !EP_PART_DESC type CHAR30
      !EP_SOZ_AZS_TIME type INT4 .
  class-methods GET_ZSOZ_PARAM_VALUE
    importing
      !IP_PARAM_NAME type CHAR20
    returning
      value(EP_VALUE) type CHAR258 .
  class-methods CALC_DURATION_BTW_TIMESTAMPS
    importing
      !IP_TIMESTAMP_1 type E2EA_TIMESTAMP
      !IP_TIMESTAMP_2 type E2EA_TIMESTAMP
    exporting
      !EP_DURATION type INTEGER .
ENDCLASS.



CLASS ZCL_ZSOZ_DPC_EXT IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CHANGESET_BEGIN
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_OPERATION_INFO              TYPE        /IWBEP/T_MGW_OPERATION_INFO
* | [<-->] CV_DEFER_MODE                  TYPE        XSDBOOLEAN(optional)
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_appl_srv_runtime~changeset_begin.

    cv_defer_mode = abap_true.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CHANGESET_END
* +-------------------------------------------------------------------------------------------------+
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_appl_srv_runtime~changeset_end.

    commit work.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IS_MEDIA_RESOURCE              TYPE        TY_S_MEDIA_RESOURCE
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IV_SLUG                        TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_appl_srv_runtime~create_stream.

    data: lr_dp_facade      type ref to /iwbep/if_mgw_dp_fw_facade,
          lt_request_header type         tihttpnvp,
          ls_request_header like line of lt_request_header,
          lv_filename       type string,
          lv_guid           type crmt_object_guid.

    lr_dp_facade ?= me->/iwbep/if_mgw_conv_srv_runtime~get_dp_facade( ).

    cl_ai_crm_gw_attachment=>create_stream(
      exporting
        iv_entity_name               =          iv_entity_name            " Obsolete
        iv_entity_set_name           =          iv_entity_set_name        " Obsolete
        iv_source_name               =          iv_source_name            " Obsolete
        is_media_resource            =          is_media_resource
        it_key_tab                   =          it_key_tab                " table for name value pairs Obsolete
        it_navigation_path           =          it_navigation_path        " table of navigation paths Obsolete
        iv_slug                      =          iv_slug
        io_tech_request_context      =          io_tech_request_context
        io_dp_facade                 =          lr_dp_facade   " Request Details for Entity Create Operation
      importing
        er_entity                    =  er_entity
      exceptions
        others = 1 ).

    if ( sy-subrc = 0 ).

      " Updating history records, that a file was attached

      lt_request_header = lr_dp_facade->/iwbep/if_mgw_dp_int_facade~get_request_header( ).

      read table lt_request_header into ls_request_header with key name = 'content-disposition'. "#EC NOTEXT

      if sy-subrc = 0 and lv_filename is initial.
        split ls_request_header-value at '"' into table data(lt_str_tab).
        read table lt_str_tab index 2 into lv_filename.
      endif.

      loop at it_key_tab assigning field-symbol(<guid>).
        move <guid>-value to lv_guid.
      endloop.

      if ( lv_filename is not initial ) and  ( lv_guid is not initial ) .

        record_request_history(
               exporting
                 ip_guid = lv_guid
                 ip_filename = lv_filename
                 ip_action   = 'A' ).

      endif. " if ( lv_filename is not initial ) and  ( lv_guid is not initial )

    endif. " if ( sy-subrc = 0 )


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~DELETE_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_appl_srv_runtime~delete_stream.

    cl_ai_crm_gw_attachment=>delete_entity(
      exporting
        iv_entity_name               =     iv_entity_name            " Obsolete
        iv_entity_set_name           =     iv_entity_set_name        " Obsolete
        iv_source_name               =     iv_source_name            " Obsolete
        it_key_tab                   =     it_key_tab                " table for name value pairs Obsolete
        it_navigation_path           =     it_navigation_path        " table of navigation paths Obsolete
        io_tech_request_context      =     io_tech_request_context   " Request Details for Entity Delete Operation
    ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [<---] ER_STREAM                      TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_appl_srv_runtime~get_stream.

    constants: lc_content_dispo_str type string value 'Content-Disposition'. "#EC NOTEXT

    data: lv_filename type string,
          ls_header   type ihttpnvp,
          ls_stream   type /iwbep/if_mgw_appl_types=>ty_s_media_resource.

    try.
        me->attachmentset_get_entity(
          exporting
            iv_entity_name               = iv_entity_name
            iv_entity_set_name           = iv_entity_set_name
            iv_source_name               = iv_source_name
            it_key_tab                   = it_key_tab     " table of navigation paths
            io_tech_request_context      = io_tech_request_context
            it_navigation_path           = it_navigation_path    " table of navigation paths
          importing
            er_entity                    =  data(ls_entity)   " Returning data
            ).

        ls_stream-value = ls_entity-document.
        ls_stream-mime_type = ls_entity-mimetype.
        ls_header-name = lc_content_dispo_str.
        lv_filename = ls_entity-name.

        " Preparing filename data

        lv_filename = escape( val = lv_filename format = cl_abap_format=>e_url ).

        concatenate 'attachment; filename='  lv_filename into ls_header-value ##NO_TEXT.
        set_header( ls_header ).

        " Returning data

        call method copy_data_to_ref
          exporting
            is_data = ls_stream
          changing
            cr_data = er_stream.
      catch cx_root.

    endtry.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZSOZ_DPC_EXT->/IWBEP/IF_MGW_CORE_SRV_RUNTIME~CHANGESET_PROCESS
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CT_CHANGESET_DATA              TYPE        /IWBEP/IF_MGW_CORE_SRV_RUNTIME=>TY_T_CHANGESET_DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method /iwbep/if_mgw_core_srv_runtime~changeset_process.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ATTACHMENTSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method attachmentset_delete_entity.

    cl_ai_crm_gw_attachment=>delete_entity(
      exporting
        iv_entity_name               =     iv_entity_name            " Obsolete
        iv_entity_set_name           =     iv_entity_set_name        " Obsolete
        iv_source_name               =     iv_source_name            " Obsolete
        it_key_tab                   =     it_key_tab                " table for name value pairs Obsolete
        it_navigation_path           =     it_navigation_path        " table of navigation paths Obsolete
        io_tech_request_context      =     io_tech_request_context   " Request Details for Entity Delete Operation
    ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ATTACHMENTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ATTACHMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method attachmentset_get_entity.

    cl_ai_crm_gw_attachment=>attachmentset_get_entity(
      exporting
        iv_entity_name               = iv_entity_name
        iv_entity_set_name           = iv_entity_set_name
        iv_source_name               = iv_source_name
        it_key_tab                =   it_key_tab
        io_request_object =           io_request_object
        io_tech_request_context  =     io_tech_request_context
        it_navigation_path  =         it_navigation_path
      importing
        er_entity               =    er_entity
        es_response_context     =    es_response_context ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ATTACHMENTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_ATTACHMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method attachmentset_get_entityset.

    cl_ai_crm_gw_attachment=>attachmentset_get_entityset(
      exporting
        iv_entity_name               =  iv_entity_name
        iv_entity_set_name           =  iv_entity_set_name
        iv_source_name               =  iv_source_name
        it_filter_select_options     =  it_filter_select_options      " Table of select options
        is_paging                    =  is_paging                     " Paging structure
        it_key_tab                   =  it_key_tab                    " Table for name value pairs
        it_navigation_path           =  it_navigation_path            " Table of navigation paths
        it_order                     =  it_order                      " The sorting order
        iv_filter_string             =  iv_filter_string              " Table for name value pairs
        iv_search_string             =  iv_search_string
        io_tech_request_context      =  io_tech_request_context
      importing
        et_entityset                 =     et_entityset          " Returning data
        es_response_context          =     es_response_context ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>CALC_DURATION_BTW_TIMESTAMPS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_TIMESTAMP_1                 TYPE        E2EA_TIMESTAMP
* | [--->] IP_TIMESTAMP_2                 TYPE        E2EA_TIMESTAMP
* | [<---] EP_DURATION                    TYPE        INTEGER
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method calc_duration_btw_timestamps.


    data lv_timestamp_1   type c length 14.
    data lv_timestamp_2   type c length 14.


    data: lv_date_1 type d,
          lv_date_2 type d,
          lv_time_1 type t,
          lv_time_2 type t.

    " Check if one of provided parametrs is not zero

    if ( ip_timestamp_1 = 0 ) or ( ip_timestamp_2 = 0 ).

      ep_duration = 0.
      return.

    endif.

    " Difference calculation

    lv_timestamp_1 = ip_timestamp_1.
    lv_timestamp_2 = ip_timestamp_2.

    if ip_timestamp_1 < ip_timestamp_2.
      lv_date_2       = lv_timestamp_1(8).
      lv_time_2       = lv_timestamp_1+8(6).
      lv_date_1       = lv_timestamp_2(8).
      lv_time_1       = lv_timestamp_2+8(6).
    else.
      lv_date_1       = lv_timestamp_1(8).
      lv_time_1       = lv_timestamp_1+8(6).
      lv_date_2       = lv_timestamp_2(8).
      lv_time_2       = lv_timestamp_2+8(6).
    endif.

    " Duration in seconds

    ep_duration = ( ( ( lv_date_1 - lv_date_2 ) * 86400
                 + ( lv_time_1 - lv_time_2 ) ) ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>CALC_SLA_BY_SRV_PROFILE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_ADDED_HOURS_TOTAL           TYPE        /IWBEP/SB_ODATA_TY_INT2
* | [<---] EP_SLA_DATE                    TYPE        SY-DATUM
* | [<---] EP_SLA_TIME                    TYPE        SY-UZEIT
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method calc_sla_by_srv_profile.

    types: begin of ty_from_to_tt,
             from type sc_rulewfr,
             to   type sc_rulewfr,
           end of ty_from_to_tt.

    types: begin of ty_times_array_tt,
             added_hours_left type sc_rulewfr,
           end of ty_times_array_tt.


    data: lv_service_profile       type char258,
          lv_ruleid                type sc_ruleid,
          lt_rule_tab              type rule_tab,
          lv_crmt_srv_serwi        type crmt_srv_serwi,
          ls_scrule_exp            type scrule_exp,
          lv_factory_calendar      type wfcid,
          lv_added_hours_left      type sc_rulewfr,
          lv_time_shifted          type sy-uzeit,
          lv_date_shifted          type sy-datum,
          lv_holiday_found         type char1,
          lv_day_of_week_number    type char1,
          lv_day_of_week_name      type char60,
          lt_all_from_to           type standard table of ty_from_to_tt,
          lt_selected_from_to      type standard table of ty_from_to_tt,
          wa_from_to               type ty_from_to_tt,
          lv_from_field_name       type string,
          lv_to_field_name         type string,
          lt_idd07v                type standard table of dd07v,
          lv_how_much_in_period    type sc_rulewfr,
          lt_added_hours_array     type standard table of ty_times_array_tt,
          wa_added_hours_array     type ty_times_array_tt,
          lv_period_boundaries_fit type char1,
          lv_gap_start             type sc_rulewfr,
          lv_gap_length            type sc_rulewfr,
          lv_periods_count         type int4,
          lv_calculation_period    type sc_rulewfr,
          lv_added_hours_total     type /iwbep/sb_odata_ty_int2.

    field-symbols :
      <lv_weekday_active>   type any,
      <lv_from>             type any,
      <lv_to>               type any,
      <ls_all_from_to>      like line of lt_all_from_to,
      <ls_selected_from_to> like line of lt_selected_from_to.

    lv_added_hours_total = ip_added_hours_total.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Get SLA data from Service Profile
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking Service Profile ID from setup table

    lv_service_profile = get_zsoz_param_value( 'SLA_SERVICE_PROFILE' ).

    condense lv_service_profile.

    " Taking Rule of Service Profile

    lv_crmt_srv_serwi = lv_service_profile.

    call function 'CRM_SERVICE_ENT_GET_RULEID'
      exporting
        iv_serwi  = lv_crmt_srv_serwi
      importing
        ev_ruleid = lv_ruleid.

    if lv_ruleid is initial.
      return.
    endif.

    call function 'APPT_RULE_READ'
      exporting
        rule_id = lv_ruleid
      importing
        rule    = lt_rule_tab
      exceptions
        no_rule = 1
        others  = 2.

    if sy-subrc <> 0 .
      exit.
    endif.


    " Getting Factory calendar

    loop at lt_rule_tab assigning field-symbol(<ls_rule_tab>).

      if <ls_rule_tab>-fcalid is not initial.
        lv_factory_calendar = <ls_rule_tab>-fcalid.
        exit.
      endif.

    endloop. " loop at lt_rule_tab ASSIGNING FIELD-SYMBOL(<ls_rule_tab>)


    " Getting details of a rule

    call function 'APPT_RULE_CONV_FROM_RULE_TAB'
      exporting
        it_rule_tab   = lt_rule_tab
      importing
        s_scrule_exp  = ls_scrule_exp
      exceptions
        nothing_found = 1
        others        = 2.

    if sy-subrc <> 0 .
      exit.
    endif.



    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Performing calculation
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Preparing domain values for week days

    call function 'DD_DOMVALUES_GET'
      exporting
        domname        = 'RSFO_WEEKDAY'
        text           = 'X'
        langu          = 'E'
      tables
        dd07v_tab      = lt_idd07v
      exceptions
        wrong_textflag = 1
        others         = 2.

    if sy-subrc <> 0 .
      exit.
    endif.

    " Calculation cycle

    lv_date_shifted = sy-datum.
    lv_time_shifted = sy-uzeit.


    " Preparing for calculations when amount of hours is < = or > 24 hours

    if lv_added_hours_total < 24.

      lv_added_hours_left = lv_added_hours_total * 3600.
      wa_added_hours_array-added_hours_left  = lv_added_hours_left.
      append wa_added_hours_array to lt_added_hours_array.

    endif. " if lv_added_hours_total < 24

    if  lv_added_hours_total = 24.

      lv_added_hours_total = lv_added_hours_total - 1.
      lv_added_hours_left = lv_added_hours_total * 3600.
      lv_added_hours_left = lv_added_hours_left + ( 59 * 60 ) + 59.
      wa_added_hours_array-added_hours_left  = lv_added_hours_left.

      append wa_added_hours_array to lt_added_hours_array.

    endif. " if  lv_added_hours_total = 24


    if  lv_added_hours_total > 24.

      " Calculate amount of days

      data(lv_amount_of_days_left) = lv_added_hours_total div 24.

      " Calculate amount of hours left in a last day

      data(lv_amount_of_hours_left) = lv_added_hours_total mod 24.
      lv_added_hours_left = 23 * 3600.
      lv_added_hours_left = lv_added_hours_left + ( 59 * 60 ) + 59.

      do lv_amount_of_days_left times.

        wa_added_hours_array-added_hours_left  = lv_added_hours_left.

        append wa_added_hours_array to lt_added_hours_array.

      enddo. "  do lv_amount_of_days_left times

      clear wa_added_hours_array.

      if lv_amount_of_hours_left is not initial.

        lv_amount_of_hours_left = lv_amount_of_hours_left * 3600.
        wa_added_hours_array-added_hours_left  = lv_amount_of_hours_left.

        append wa_added_hours_array to lt_added_hours_array.

      endif. " if lv_amount_of_hours_left is not INITIAL

    endif. " if  lv_added_hours_total > 24

    loop at lt_added_hours_array assigning field-symbol(<ls_added_hours_array>).

      lv_added_hours_left = <ls_added_hours_array>-added_hours_left.

      while lv_added_hours_left > 0.

        " Check if day is a business day

        call function 'HOLIDAY_CHECK_AND_GET_INFO'
          exporting
            date                = lv_date_shifted
            holiday_calendar_id = lv_factory_calendar
          importing
            holiday_found       = lv_holiday_found.

        " Skipping if current day is a holiday

        if lv_holiday_found = 'X'.

          lv_date_shifted = lv_date_shifted + 1.

          continue.

        endif. " if lv_holiday_found = 'X'

        " Get a number of a day of the week

        call function 'DATE_COMPUTE_DAY'
          exporting
            date = lv_date_shifted
          importing
            day  = lv_day_of_week_number.

        " Get a name of a day of the week

        clear lv_day_of_week_name.
        lv_day_of_week_name = lt_idd07v[ domvalue_l = lv_day_of_week_number ]-ddtext.
        translate lv_day_of_week_name to lower case.

        " Preparing fields to work with Service Profile structure, based on a current day

        clear: lv_from_field_name,
               lv_to_field_name.

        case lv_day_of_week_name. " Dynamic approach not possible as field names of RULE_W has strange names

          when 'monday'.
            lv_from_field_name = 'monda_from'.
            lv_to_field_name = 'monday_to'.
          when 'tuesday'.
            lv_from_field_name = 'tuesd_from'.
            lv_to_field_name = 'tuesday_to'.
          when 'wednesday'.
            lv_from_field_name = 'wedne_from'.
            lv_to_field_name = 'wednesd_to'.
          when 'thursday'.
            lv_from_field_name = 'thurs_from'.
            lv_to_field_name = 'thursda_to'.
          when 'friday'.
            lv_from_field_name = 'frida_from'.
            lv_to_field_name = 'friday_to'.
          when 'saturday'.
            lv_from_field_name = 'satur_from'.
            lv_to_field_name = 'saturda_to'.
          when 'sunday'.
            lv_from_field_name = 'sunda_from'.
            lv_to_field_name = 'sunday_to'.

        endcase. " case lv_day_of_week_name


        clear: lt_all_from_to,
                wa_from_to.

        " Preparing a list of work periods within a particular work day

        loop at ls_scrule_exp-tab_w into data(wa_tab_w).

          if <lv_from> is assigned.
            unassign <lv_from>.
          endif.

          if <lv_to> is assigned.
            unassign <lv_to>.
          endif.

          if <lv_weekday_active> is assigned.
            unassign <lv_weekday_active>.
          endif.

          assign component lv_from_field_name of structure wa_tab_w to <lv_from>.
          assign component lv_to_field_name of structure wa_tab_w to <lv_to>.
          assign component lv_day_of_week_name of structure wa_tab_w to <lv_weekday_active>.

          " Filling work times for active periods

          clear wa_from_to.

          if <lv_weekday_active> = 'X'.

            if <lv_from> is not initial.
              wa_from_to-from = <lv_from>.
            endif. " if <lv_from> is not initial

            if <lv_to> is not initial.
              wa_from_to-to = <lv_to>.
            endif. " if <lv_to> is not initial

            if wa_from_to is not initial.
              append wa_from_to to lt_all_from_to.
            endif. " if wa_from_to is not initial

          endif. " if <lv_weekday_active> = 'X'

        endloop. " loop at ls_scrule_exp-tab_w into data(wa_tab_w)

        if <ls_all_from_to> is assigned.
          unassign <ls_all_from_to>.
        endif.

        " Finding periods of workday, valid for processing

        clear: lt_selected_from_to,
               lv_period_boundaries_fit.



        loop at lt_all_from_to assigning <ls_all_from_to>.

          " If we have switched to a new day, then we take all periods of a day and quit

          if ( lv_time_shifted is initial ).

            lv_time_shifted = <ls_all_from_to>-from .
            lt_selected_from_to = lt_all_from_to.
            exit.

          endif. " if ( lv_time_shifted is initial )

          " We add more periods (if there are any) if on a previous step we were inside a particular period

          if lv_period_boundaries_fit = 'X'.

            wa_from_to-from = <ls_all_from_to>-from.
            wa_from_to-to = <ls_all_from_to>-to.
            append wa_from_to to lt_selected_from_to.

          endif. " if lv_period_boundaries_fit = 'X'

          " If we currently we are inside a particular period

          if ( lv_time_shifted ge <ls_all_from_to>-from  ) and ( lv_time_shifted le <ls_all_from_to>-to ).

            clear wa_from_to.
            wa_from_to-from = <ls_all_from_to>-from.
            wa_from_to-to = <ls_all_from_to>-to.
            append wa_from_to to lt_selected_from_to.
            lv_period_boundaries_fit = 'X'.

          endif. " if ( lv_time_shifted ge <ls_all_from_to>-from  ) and ( lv_time_shifted le <ls_all_from_to>-to )

        endloop. " loop at lt_all_from_to assigning <ls_all_from_to>

        " If there are no valid periods we have to switch to the next day

        if lt_selected_from_to is initial.

          lv_date_shifted = lv_date_shifted + 1.
          clear lv_time_shifted .

        endif. " if lt_selected_from_to is initial

        clear:
              lv_gap_start,
              lv_gap_length,
              lv_periods_count.

        " Getting amount of valid periods for the work day
        sort lt_selected_from_to.
        delete adjacent duplicates from lt_selected_from_to.


        lv_periods_count = lines( lt_selected_from_to ).

        " Scanning the period

        loop at lt_selected_from_to assigning <ls_selected_from_to>.

          " Check if there was a gap from previous period: if yes - we are shifing time on a period length

          if ( lv_gap_start is not initial ) and
            ( ( <ls_selected_from_to>-from - lv_gap_start ) > 0 ) .

            " If yes then shift time
            lv_gap_length = <ls_selected_from_to>-from - lv_gap_start.

            lv_time_shifted = lv_time_shifted + lv_gap_length.

            clear: lv_gap_start,
                   lv_gap_length.

          endif. " if ( lv_gap_start is not initial )

          " Calculation period is a time between end of period and time where are we now

          lv_calculation_period = <ls_selected_from_to>-to - lv_time_shifted.

          " Calculating time we can shift for a current period
          " lv_how_much_in_period - how much time we can cover if we are in period until period ends

          if  ( lv_calculation_period > lv_added_hours_left ).
            lv_how_much_in_period = lv_added_hours_left.
          else.
            lv_how_much_in_period =  lv_calculation_period.
          endif. " if  ( lv_calculation_period > lv_added_hours_left )

          " Shifting time and reducing amount of hours left for addition

          lv_time_shifted = lv_time_shifted + lv_how_much_in_period.

          if lv_how_much_in_period < lv_added_hours_left.
            lv_added_hours_left = lv_added_hours_left - lv_how_much_in_period.

          else.
            clear lv_added_hours_left.
          endif. " if lv_how_much_in_period < lv_added_hours_left

          " Setting a new gap for further processing

          lv_gap_start = <ls_selected_from_to>-to.

          " If passed through all day - shift date and time

          if ( lv_added_hours_left > 0  ) and ( sy-tabix = lv_periods_count ).

            lv_date_shifted = lv_date_shifted + 1.

            clear lv_time_shifted .

            " If already added all required hours then exiting

          elseif ( lv_added_hours_left is initial ) or ( lv_added_hours_left eq '000000' ).

            exit.

          endif. " if ( lv_added_hours_left > 0  ) and ( sy-tabix = lv_periods_count )

        endloop. " loop at lt_selected_from_to assigning <ls_selected_from_to>

      endwhile. "while lv_added_hours_left > 0

    endloop. " loop at lt_added_hours_array ASSIGNING FIELD-SYMBOL(<ls_added_hours_array>)

    " Finalizing results

    ep_sla_date = lv_date_shifted.
    ep_sla_time = lv_time_shifted.



  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>CHECK_DB_TABLE_AUTHORITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_TABLE                       TYPE        DBOBJ_NAME
* | [--->] IP_ACTION                      TYPE        CHAR2
* | [<-()] EP_AUTHORIZED                  TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method check_db_table_authority.

    " S_TABU_NAM authorization objects
    " 02 - change
    " 03 - display

    case ip_action.

      when 'R'.

        authority-check object 'S_TABU_NAM'
                id 'ACTVT'  field '03'
                id 'TABLE'  field ip_table.

        if sy-subrc <> 0.
          ep_authorized = abap_false.
        else.
          ep_authorized = abap_true.
        endif.

      when 'W'.

        authority-check object 'S_TABU_NAM'
                id 'ACTVT'  field '02'
                id 'TABLE'  field ip_table.

        if sy-subrc <> 0.
          ep_authorized = abap_false.
        else.
          ep_authorized = abap_true.
        endif.

      when 'RW' or 'WR'.

        ep_authorized = abap_false.

        authority-check object 'S_TABU_NAM'
              id 'ACTVT'  field '03'
              id 'TABLE'  field ip_table.

        if sy-subrc = 0.

          authority-check object 'S_TABU_NAM'
              id 'ACTVT'  field '02'
              id 'TABLE'  field ip_table.

          if sy-subrc = 0.
            ep_authorized = abap_true.
          endif.

        endif.

    endcase. " case ip_action

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>CHECK_SOZ_AUTHORITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_ACTIVITY                    TYPE        CHAR20
* | [<-()] EP_AUTHORIZED                  TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method check_soz_authority.

    ep_authorized = abap_false.

    " Checking authorizations for ZSOZ_ROLE AO

    authority-check object 'ZSOZ_ROLE'
                   id 'SOZ_ROLE'  field ip_activity.

    if sy-subrc = 0.
      ep_authorized = abap_true.
    endif.




  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>CONVERT_TIME_STAMP
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_TIMESTAMP                   TYPE        CHAR128
* | [<-()] EP_RESULT                      TYPE        CHAR20
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method convert_time_stamp.

    data: lv_year    type char4,
          lv_month   type char2,
          lv_day     type char2,
          lv_hours   type char2,
          lv_minutes type char2,
          lv_seconds type char2.

    " Converting timestamp from YYYYMMDDHHMMSS to DD.MM.YYYY HH:MM:SS

    lv_year = ip_timestamp+0(4).
    lv_month = ip_timestamp+4(2).
    lv_day  = ip_timestamp+6(2).
    lv_hours = ip_timestamp+8(2).
    lv_minutes = ip_timestamp+10(2).
    lv_seconds = ip_timestamp+12(2).


    concatenate lv_day '.' lv_month '.' lv_year into ep_result.
    concatenate ep_result lv_hours into ep_result separated by space.
    concatenate ep_result ':' lv_minutes '.' lv_seconds into ep_result.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>COVERT_EDM_GUID_TO_SOZ_GUID
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EDM_GUID                    TYPE        CHAR_36
* | [<-()] EP_RESULT                      TYPE        ZSOZ_DIR_GUID
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method covert_edm_guid_to_soz_guid.

    data:
      lv_edm_guid_char_36 type char_36,
      lv_edm_guid_char_32 type char32.

    lv_edm_guid_char_36 = ip_edm_guid.

    replace all occurrences of '-' in lv_edm_guid_char_36 with ' '.

    lv_edm_guid_char_32 = lv_edm_guid_char_36.

    translate lv_edm_guid_char_32 to upper case.

    ep_result = lv_edm_guid_char_32.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->CUSERSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_CUSER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method cuserset_get_entity.

    types: begin of ty_cuser_tt,
             partner     type char10,
             last_name   type char40,
             first_name  type char40,
             middle_name type char40,
             full_name   type char80,
           end of ty_cuser_tt.

    data:
      ls_key_tab    like line of it_key_tab,
      lt_cuser      type standard table of ty_cuser_tt,
      api_object    type ref to cl_ags_crm_1o_api,
      api_object_sd type ref to cl_ags_crm_1o_api_sd,
      et_partner    type crmt_partner_external_wrkt,
      ls_partner    type crmt_partner_external_wrk,
      lv_guid       type crmt_object_guid,
      lv_error_text type bapi_msg,
      lv_bp         type bu_partner.

    " Taking OData key value

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Opening incident by GUID

      lv_guid = ls_key_tab-value.

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      api_object_sd ?= api_object.

      " Taking partners list

      api_object_sd->get_partners( importing et_partner = et_partner ).

      " Searching for an incident author BP number as a partner function SLFN0002

      if et_partner is not initial.

        loop at et_partner into ls_partner.
          if ls_partner-ref_partner_fct = 'SLFN0002'.

            lv_bp = ls_partner-partner_no.

            " Leading zeroes conversion

            call function 'CONVERSION_EXIT_ALPHA_INPUT'
              exporting
                input  = lv_bp
              importing
                output = lv_bp.

            " Taking additional BP details

            select partner name_last name_first namemiddle name1_text
              into table lt_cuser from but000 where partner = lv_bp.

            loop at lt_cuser assigning field-symbol(<ls_cuser>).

              er_entity-cuserid = <ls_cuser>-partner.
              er_entity-lastname = <ls_cuser>-last_name.
              er_entity-firstname = <ls_cuser>-first_name.
              er_entity-middlename = <ls_cuser>-middle_name.
              er_entity-fullname = <ls_cuser>-full_name.

              " Adding technical user name

              call function 'CRM_ERMS_FIND_USER_FOR_BP'
                exporting
                  ev_bupa_no = <ls_cuser>-partner
                importing
                  ev_user_id = er_entity-cusername.

            endloop. " loop at lt_employee assigning field-symbol(<ls_employee>)

          endif. " if ls_partner-ref_partner_fct = 'SLFN0002'
        endloop. " loop at et_partner into ls_partner
      endif. "   if et_partner is not initial
    endif. " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->DEPARTMENTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_DEPARTMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method departmentset_get_entity.


    types: begin of ty_department_tt,
             partner type char10,
             name    type char40,
           end of ty_department_tt.

    data: lt_department type standard table of ty_department_tt,
          ls_key_tab    like line of it_key_tab.

    " Taking OData key value

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident department by incident GUID

      select single zzfld000018 into er_entity-partner from crmd_customer_h where guid = ls_key_tab-value.

      " Taking additional BP details

      select partner name_org2 into table lt_department from but000
         where partner = er_entity-partner.

    endif. " if ls_key_tab is not initial

    " Filling output structure

    loop at lt_department assigning field-symbol(<ls_department>).

      er_entity-partner = <ls_department>-partner.
      er_entity-name = <ls_department>-name.

    endloop. " loop at lt_support_teams ASSIGNING FIELD-SYMBOL(<ls_support_teams>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->DEPARTMENTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_DEPARTMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method departmentset_get_entityset.

    data:
      ls_entityset           like line of et_entityset,
      lv_obj_number          type char30,
      lv_obj_location        type char4,
      lv_department_org_unit type sobid.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Filter by Object

    lv_obj_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'OBJECTID' ).


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lv_obj_number is not initial.

      " Get department code of object

      get_object_details_by_num(
        exporting
          ip_objectid = lv_obj_number
        importing
          ep_objectlocation = lv_obj_location  ).

      " Get department org unit by code

      select single objid from hrp1000 into lv_department_org_unit where short eq lv_obj_location.

      " Get department BP by org unit

      select single sobid into ls_entityset-partner from hrp1001 where  objid = lv_department_org_unit  and sclas = 'BP'.

      ls_entityset-objectid = lv_obj_number.

    else.

      " Show user department

      ls_entityset-partner = get_user_department( sy-uname ).

    endif.

    " Taking additional BP details of user department

    select single name_org2 into ls_entityset-name from but000
      where partner = ls_entityset-partner.

    append ls_entityset to et_entityset.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EMPLOYEESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_EMPLOYEE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method employeeset_get_entityset.


    types: begin of ty_employee_tt,
             partner     type char10,
             last_name   type char40,
             first_name  type char40,
             middle_name type char40,
             full_name   type char80,
           end of ty_employee_tt.

    data:
      lt_employee               type standard table of ty_employee_tt,
      wa_employee               type  ty_employee_tt,
      lt_supportgroup_members   type standard table of bu_partner,
      lv_supportgroup_bp        type bu_partner,
      ls_entityset              like line of et_entityset,
      lv_top                    type i,
      lv_output_size            type i,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    field-symbols: <lt_employee> like line of lt_employee.

    " Getting TOP parameter

    lv_top = io_tech_request_context->get_top( ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'FULLNAME' ).

    lv_supportgroup_bp = get_filter_value( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'SUPPORTGROUPID' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lv_supportgroup_bp is initial.

      " Selecting all users from but000 if BP filter for a particular user is set

      select partner name_last  name_first namemiddle name1_text
        into table lt_employee from but000 where type = '1'
        and name1_text in lt_filter_name_with_cases.

    else.

      " Selecting BPs of a support group from filter

      select partner2 into table lt_supportgroup_members from but050 where partner1 = lv_supportgroup_bp and reltyp = 'BUR010'.

      loop at lt_supportgroup_members assigning field-symbol(<ls_supportgroup_members>).

        clear wa_employee.

        select single partner name_last  name_first namemiddle name1_text into wa_employee from but000
          where partner = <ls_supportgroup_members> and type = '1' and name1_text in lt_filter_name_with_cases.

        append wa_employee to lt_employee.

      endloop. " loop at lt_supportgroup_members ASSIGNING FIELD-SYMBOL(<ls_supportgroup_members>)

    endif. " if lv_supportgroup_bp is initial

    " Filling output table

    loop at lt_employee assigning <lt_employee>.

      ls_entityset-employeeid = <lt_employee>-partner.
      ls_entityset-lastname = <lt_employee>-last_name.
      ls_entityset-firstname = <lt_employee>-first_name.
      ls_entityset-middlename = <lt_employee>-middle_name.

      if <lt_employee>-full_name is not  initial.
        ls_entityset-fullname = <lt_employee>-full_name.
      else.
        concatenate ls_entityset-lastname  ls_entityset-firstname ls_entityset-middlename into ls_entityset-fullname separated by space.
      endif. " if <lt_employee>-full_name is not  initial


      append ls_entityset to et_entityset.

      " Additional check for TOP parameter

      lv_output_size = lines( et_entityset ).
      if lv_top is not initial and
         lv_output_size >= lv_top.
        exit.
      endif.

    endloop. " loop at lt_employee assigning field-symbol(<ls_employee>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EQUIPMENTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_EQUIPMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method equipmentset_get_entity.

    data:
      ls_key_tab             like line of it_key_tab,
      lv_equipmentid         type char30,
      lv_ext_api_return_code type sy-subrc,
      lt_eqpm                type zsoz_tt_eqpm,
      ls_eqpm                type zsoz_ts_eqpm,
      lv_showtype            type char1.

    " Taking OData key value: Guid

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident equipment by incident GUID

      select single zzfld000017 into lv_equipmentid from crmd_customer_h where guid = ls_key_tab-value.

    else.

      " Taking OData key value: EquipmentId

      read table it_key_tab into ls_key_tab with key name = 'EquipmentId'.

      if ls_key_tab is not initial.

        lv_equipmentid = ls_key_tab-value.

      endif. "  if ls_key_tab is not initial.

    endif. "  if ls_key_tab is not initial.

    " Filling output structure

    if lv_equipmentid is not initial.

      er_entity-equipmentid = lv_equipmentid.

      " Getting name of Equipment

      exec_ext_api_method(
                     exporting
                       ip_method = 'GET_EQPM_DETAILS_BY_NUMBER'
                       ip_eqpm_number = lv_equipmentid
                     importing
                         ep_return_code = lv_ext_api_return_code
                         et_eqpm = lt_eqpm ).

      if lv_ext_api_return_code eq 0.

        read table lt_eqpm into ls_eqpm index 1.

        if ls_eqpm is not initial.

          er_entity-value1 = ls_eqpm-eqpm_name.

        endif.  " if ls_eqpm is not initial

      endif. " if lv_ext_api_return_code eq 0

      " Picking HTTP URL parameter ShowType to understand, if we should include type into output

      lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

      if lv_showtype = 'X'.

        " Adding Equipment type

        er_entity-equipmenttypeid = get_eqpm_type_of_eqpm( lv_equipmentid ).

      endif. " if lv_showtype = 'X'

    endif. " lv_equipmentid

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EQUIPMENTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_EQUIPMENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method equipmentset_get_entityset.

    data:
      ls_entityset              like line of et_entityset,
      lv_obj_number             type char30,
      lv_eqpm_type              type char18,
      lv_ext_api_return_code    type sy-subrc,
      lt_eqpm                   type zsoz_tt_eqpm,
      lv_showtype               type char1,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Filter by Object

    lv_obj_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'OBJECTID' ).

    " Taking all equipment of selected object

    if ( lv_obj_number is not initial ).

      exec_ext_api_method(
          exporting
            ip_method = 'GET_EQPM_OF_OBJECT'
            ip_obj_number = lv_obj_number
          importing
              ep_return_code = lv_ext_api_return_code
              et_eqpm = lt_eqpm ).

    endif. " if ( lv_obj_number is not initial )

    " Filter by Equipment type


    lv_eqpm_type = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'EQUIPMENTTYPEID' ).

    " Taking all equipment of selected equipment type

    if ( lv_eqpm_type is not initial ).

      exec_ext_api_method(
          exporting
            ip_method = 'GET_EQPM_OF_EQPM_TYPE'
            ip_eqpm_type = lv_eqpm_type
          importing
              ep_return_code = lv_ext_api_return_code
              et_eqpm = lt_eqpm ).

    endif. " if ( lv_eqpm_type is not initial )


    " Selecting all Equipment, if filters are not set

    if ( lv_obj_number is initial ) and ( lv_eqpm_type is initial ).

      exec_ext_api_method(
                 exporting
                   ip_method = 'GET_ALL_EQPM'
                 importing
                     ep_return_code = lv_ext_api_return_code
                     et_eqpm = lt_eqpm ).

    endif. " if ( lv_obj_number is INITIAL ) and ( lv_eqpm_type is initial )

    " Collection addition filters by Object name

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( lv_ext_api_return_code ne 0 ).

      return.

    endif. " if ( lv_ext_api_return_code NE 0 )

    " Filling output table

    " Picking HTTP URL parameter ShowType to understand, if we should include type into output

    lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

    loop at lt_eqpm assigning field-symbol(<ls_eqpm>) where eqpm_name in lt_filter_name_with_cases.

      ls_entityset-equipmentid = <ls_eqpm>-eqpm_number.
      ls_entityset-value1 = <ls_eqpm>-eqpm_name.

      if lv_showtype = 'X'.

        " Adding Equipment type

        if ( lv_eqpm_type is initial ).

          ls_entityset-equipmenttypeid = get_eqpm_type_of_eqpm( <ls_eqpm>-eqpm_number ).


        endif. " if lv_showtype = 'X'


      else.

        ls_entityset-equipmenttypeid = lv_eqpm_type.

      endif."  if ( lv_eqpm_type is INITIAL )

      append ls_entityset to et_entityset.

    endloop. " loop at lt_eqpm ASSIGNING FIELD-SYMBOL(<ls_eqpm>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EQUIPMENTTYPESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_EQUIPMENTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method equipmenttypeset_get_entity.

    data:
      ls_key_tab     like line of it_key_tab,
      lv_equipmentid type char30.

    " Taking OData key value

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident equipment by incident GUID

      select single zzfld000017 into lv_equipmentid from crmd_customer_h where guid = ls_key_tab-value.

      " Search for incident equipment type by equipment

      er_entity-equipmenttypeid = get_eqpm_type_of_eqpm(
            exporting
              ip_equipmentid = lv_equipmentid
            importing
              ep_equipmenttypename = er_entity-value1 ).

    endif. " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EQUIPMENTTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_EQUIPMENTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method equipmenttypeset_get_entityset.

    data:
      lv_obj_number             type char30,
      lv_obj_type_number        type char18,
      lt_eqpm                   type zsoz_tt_eqpm,
      lt_eqpm_types             type zsoz_tt_eqpm_types,
      ls_entityset              like line of et_entityset,
      lv_ext_api_return_code    type sy-subrc,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    field-symbols: <ls_eqpm_type> like line of lt_eqpm_types.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_obj_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                ip_property = 'OBJECTID' ).

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .


    lv_obj_type_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'OBJECTTYPEID' ).


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Search by object id

    if ( lv_obj_number is not initial ).

      " Search for all equipment of a selected object

      exec_ext_api_method(
               exporting
                 ip_method = 'GET_EQPM_OF_OBJECT'
                 ip_obj_number = lv_obj_number
               importing
                   ep_return_code = lv_ext_api_return_code
                   et_eqpm = lt_eqpm ).

      if ( lv_ext_api_return_code ne 0 ).

        return.

      endif. " if ( lv_ext_api_return_code NE 0 )

      " Scanning all found equipment of an object

      loop at lt_eqpm assigning field-symbol(<ls_eqpm>).

        " Search for equipment type of an equipment

        ls_entityset-equipmenttypeid = get_eqpm_type_of_eqpm(
              exporting
                ip_equipmentid = <ls_eqpm>-eqpm_number
              importing
                ep_equipmenttypename = ls_entityset-value1 ).

        append ls_entityset to et_entityset.

      endloop.  " loop at lt_eqpm ASSIGNING FIELD-SYMBOL(<ls_eqpm>)

      " Removing extra duplicates

      sort et_entityset.
      delete adjacent duplicates from et_entityset.

    endif.  " if ( lv_obj_number is not initial )


    " Search by object type

    if ( lv_obj_type_number is not initial ).

      " Search all equipment types of object type

      exec_ext_api_method(
               exporting
                 ip_method = 'GET_EQPM_TYPES_OF_OBJECT_TYPE'
                 ip_obj_type_number = lv_obj_type_number
               importing
                   ep_return_code = lv_ext_api_return_code
                   et_eqpm_types = lt_eqpm_types ).

      if ( lv_ext_api_return_code ne 0 ).

        return.

      endif. " if ( lv_ext_api_return_code NE 0 )

      " Filling output table

      loop at lt_eqpm_types assigning <ls_eqpm_type> where eqpm_type_name in lt_filter_name_with_cases.

        ls_entityset-equipmenttypeid = <ls_eqpm_type>-eqpm_type_num.
        ls_entityset-value1 = <ls_eqpm_type>-eqpm_type_name.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).

    endif. " if ( lv_obj_type_number is not initial )

    " If no object and no object type were specified, we select all available equipment types

    if ( ( lv_obj_type_number is  initial ) and ( lv_obj_number is  initial ) ).

      " Search for all equipment types

      exec_ext_api_method(
                   exporting
                     ip_method = 'GET_ALL_EQPM_TYPES'
                   importing
                       ep_return_code = lv_ext_api_return_code
                       et_eqpm_types = lt_eqpm_types ).

      " Filling output table

      loop at lt_eqpm_types assigning <ls_eqpm_type> where eqpm_type_name in lt_filter_name_with_cases.

        ls_entityset-equipmenttypeid = <ls_eqpm_type>-eqpm_type_num.
        ls_entityset-value1 = <ls_eqpm_type>-eqpm_type_name.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).

    endif. " if ( ( lv_obj_type_number is  initial ) and ( lv_obj_number is  initial ) ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>EXCLUDE_INCIDENTS_BY_FILTERS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IS_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TS_INCIDENT
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [<-()] EP_INCLUDE_RECORD              TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method exclude_incidents_by_filters.


    data: lt_filter_sel_opt type /iwbep/t_cod_select_options,
          lt_entityset      type table of  zcl_zsoz_mpc=>ts_incident,
          lo_descr          type ref to cl_abap_tabledescr,
          lo_type           type ref to cl_abap_datadescr,
          lo_struct         type ref to cl_abap_structdescr,
          lt_components     type cl_abap_structdescr=>component_table,
          lt_set_filters    type /iwbep/t_mgw_select_option.

    field-symbols: <ls_component> like line of lt_components,
                   <lv_value>     type any.

    ep_include_record = abap_true.

    " Getting set filters

    lt_set_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    " Preparing table of payload fields names

    append is_entityset to lt_entityset.

    lo_descr ?= cl_abap_typedescr=>describe_by_data( lt_entityset ).
    lo_type = lo_descr->get_table_line_type( ).
    lo_struct ?= cl_abap_typedescr=>describe_by_name( lo_type->absolute_name ).
    lt_components = lo_struct->get_components( ).

    loop at lt_set_filters assigning field-symbol(<ls_set_filters>).

      clear lt_filter_sel_opt.
      lt_filter_sel_opt = <ls_set_filters>-select_options.

      if <ls_component>  is assigned.
        unassign <ls_component> .
      endif.

      read table lt_components with table key name = <ls_set_filters>-property assigning <ls_component> .

      if <ls_component> is assigned.

        " Picking value of incident record

        assign component <ls_component>-name of structure is_entityset to <lv_value>.

        if sy-subrc = 0.

          " If value doesn't fit to filter condition - exclude record

          if <lv_value> not in lt_filter_sel_opt.

            ep_include_record = abap_false.
            exit.

          endif.

        endif. "  if sy-subrc = 0

      endif. " if <ls_component> is assigned

    endloop. " loop at lt_set_filters ASSIGNING FIELD-SYMBOL(<ls_set_filters>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->EXECUTORSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_EXECUTOR
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method executorset_get_entity.

    types: begin of ty_executor_tt,
             partner     type char10,
             last_name   type char40,
             first_name  type char40,
             middle_name type char40,
             full_name   type char80,
           end of ty_executor_tt.
    data:
      ls_key_tab    like line of it_key_tab,
      lt_executor   type standard table of ty_executor_tt,
      api_object    type ref to cl_ags_crm_1o_api,
      api_object_sd type ref to cl_ags_crm_1o_api_sd,
      et_partner    type crmt_partner_external_wrkt,
      ls_partner    type crmt_partner_external_wrk,
      lv_guid       type crmt_object_guid,
      lv_error_text type bapi_msg,
      lv_bp         type bu_partner.

    " Taking OData key value

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      lv_guid = ls_key_tab-value.

      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.



      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      api_object_sd ?= api_object.

      " Taking partners list

      api_object_sd->get_partners( importing et_partner = et_partner ).

      " Searching for an incident processor BP number as a partner function SLFN0004

      if et_partner is not initial.

        loop at et_partner into ls_partner.
          if ls_partner-ref_partner_fct = 'SLFN0004'.

            lv_bp = ls_partner-partner_no.

            " Leading zeroes conversion

            call function 'CONVERSION_EXIT_ALPHA_INPUT'
              exporting
                input  = lv_bp
              importing
                output = lv_bp.

            " Taking additional BP details

            select partner name_last  name_first namemiddle name1_text
              into table lt_executor from but000 where partner = lv_bp.

            " Filling output structure

            loop at lt_executor assigning field-symbol(<ls_executor>).

              er_entity-executorid = <ls_executor>-partner.
              er_entity-lastname = <ls_executor>-last_name.
              er_entity-firstname = <ls_executor>-first_name.
              er_entity-middlename = <ls_executor>-middle_name.
              er_entity-fullname = <ls_executor>-full_name.

            endloop. " loop at lt_executor assigning field-symbol(<ls_executor>)

          endif. " if ls_partner-ref_partner_fct = 'SLFN0004'
        endloop. " loop at et_partner into ls_partner
      endif. "   if et_partner is not initial
    endif. " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>EXEC_EXT_API_METHOD
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_METHOD                      TYPE        CHAR40
* | [--->] IP_OBJ_NUMBER                  TYPE        CHAR30(optional)
* | [--->] IP_EQPM_NUMBER                 TYPE        CHAR30(optional)
* | [--->] IP_UNIT_NUMBER                 TYPE        CHAR18(optional)
* | [--->] IP_EQPM_TYPE                   TYPE        CHAR18(optional)
* | [--->] IP_PART_NUMBER                 TYPE        ZSOZ_PART_ID(optional)
* | [--->] IP_OBJ_TYPE_NUMBER             TYPE        CHAR18(optional)
* | [--->] IP_UNIT_TYPE                   TYPE        CHAR18(optional)
* | [--->] IP_PART_TYPE                   TYPE        CHAR30(optional)
* | [--->] IP_DEPARTMENT                  TYPE        CHAR4(optional)
* | [--->] IT_ORG_STRUCT_CODES            TYPE        ZSOZ_TT_ORG_STRUCT_CODES(optional)
* | [<---] EP_UNIT_NAME                   TYPE        CHAR40
* | [<---] EP_UNIT_TYPE_NUM               TYPE        CHAR18
* | [<---] EP_UNIT_TYPE_NAME              TYPE        CHAR40
* | [<---] ET_OBJECT_TYPES                TYPE        ZSOZ_TT_OBJECT_TYPES
* | [<---] ET_EQPM_TYPES                  TYPE        ZSOZ_TT_EQPM_TYPES
* | [<---] ET_EQPM                        TYPE        ZSOZ_TT_EQPM
* | [<---] ET_UNITS                       TYPE        ZSOZ_TT_UNITS
* | [<---] ET_PARTS                       TYPE        ZSOZ_TT_PARTS
* | [<---] ET_OBJECTS                     TYPE        ZSOZ_TT_OBJECTS
* | [<---] EP_RETURN_CODE                 TYPE        SY-SUBRC
* | [<---] ET_UNIT_TYPES                  TYPE        ZSOZ_TT_UNIT_TYPES
* | [<---] ET_PART_TYPES                  TYPE        ZSOZ_TT_PART_TYPES
* | [<---] EP_ORG_STRUCT_CODE             TYPE        CHAR12
* | [<---] EP_OBJ_NAME                    TYPE        CHAR40
* | [<---] EP_OBJ_TYPE_NUM                TYPE        CHAR18
* | [<---] EP_OBJ_TYPE_NAME               TYPE        CHAR40
* | [<---] EP_EQPM_NAME                   TYPE        CHAR40
* | [<---] EP_EQPM_TYPE_NUM               TYPE        CHAR18
* | [<---] EP_EQPM_TYPE_NAME              TYPE        CHAR40
* | [<---] EP_PART_DESC                   TYPE        CHAR30
* | [<---] EP_SOZ_AZS_TIME                TYPE        INT4
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method exec_ext_api_method.

    data:
      lv_destination type char258.

    ep_return_code = 1.

    " Exit from method if RFC destination to ERP is not maintained

    lv_destination = get_zsoz_param_value( 'ERP_RFC_DESTINATION' ).

    if lv_destination is initial.

      return.

    endif. " if lv_destination is initial

    " Exit from method if method is not maintained

    if ( ip_method is  initial ).

      return.

    endif. " if ( ip_method is  initial )

    case ip_method.

      when 'GET_ALL_OBJECTS'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_OBJECTS'
            ip_department         = ip_department
          importing
            ep_return_code        = ep_return_code
            et_objects            = et_objects
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECT_DETAILS_BY_NUMBER'.

        if ip_obj_number is not initial.
          call function 'ZSOZ_API_EXT' destination lv_destination
            exporting
              ip_method             = 'GET_OBJECT_DETAILS_BY_NUMBER'
              ip_obj_number         = ip_obj_number
            importing
              ep_return_code        = ep_return_code
              et_objects            = et_objects
            exceptions
              communication_failure = 1
              system_failure        = 2.

        endif. " if ip_obj_number is not INITIAL

      when 'GET_EQPM_OF_OBJECT'.

        if ip_obj_number is not initial.
          call function 'ZSOZ_API_EXT' destination lv_destination
            exporting
              ip_method             = 'GET_EQPM_OF_OBJECT'
              ip_obj_number         = ip_obj_number
            importing
              ep_return_code        = ep_return_code
              et_eqpm               = et_eqpm
            exceptions
              communication_failure = 1
              system_failure        = 2.
        endif. " if ip_obj_number is not INITIAL

      when 'GET_UNITS_OF_EQPM'.

        if ip_eqpm_number is not initial.

          call function 'ZSOZ_API_EXT' destination lv_destination
            exporting
              ip_method             = 'GET_UNITS_OF_EQPM'
              ip_eqpm_number        = ip_eqpm_number
            importing
              ep_return_code        = ep_return_code
              et_units              = et_units
            exceptions
              communication_failure = 1
              system_failure        = 2.

        endif. " if ip_eqpm_number is not initial

      when 'GET_PARTS_OF_UNIT'.

        if ip_unit_number is not initial.

          call function 'ZSOZ_API_EXT' destination lv_destination
            exporting
              ip_method             = 'GET_PARTS_OF_UNIT'
              ip_unit_number        = ip_unit_number
            importing
              ep_return_code        = ep_return_code
              et_parts              = et_parts
            exceptions
              communication_failure = 1
              system_failure        = 2.

        endif. " if ip_unit_number is not initial.

      when 'GET_ALL_EQPM'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_EQPM'
          importing
            ep_return_code        = ep_return_code
            et_eqpm               = et_eqpm
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_ALL_UNITS'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_UNITS'
          importing
            ep_return_code        = ep_return_code
            et_units              = et_units
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_ALL_PARTS'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_PARTS'
          importing
            ep_return_code        = ep_return_code
            et_parts              = et_parts
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_EQPM_OF_EQPM_TYPE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_EQPM_OF_EQPM_TYPE'
            ip_eqpm_type          = ip_eqpm_type
          importing
            ep_return_code        = ep_return_code
            et_eqpm               = et_eqpm
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_EQPM_TYPE_OF_EQPM'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_EQPM_TYPE_OF_EQPM'
            ip_eqpm_number        = ip_eqpm_number
          importing
            ep_return_code        = ep_return_code
            et_eqpm_types         = et_eqpm_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_ALL_EQPM_TYPES'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_EQPM_TYPES'
          importing
            ep_return_code        = ep_return_code
            et_eqpm_types         = et_eqpm_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_ALL_OBJECT_TYPES'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_ALL_OBJECT_TYPES'
          importing
            ep_return_code        = ep_return_code
            et_object_types       = et_object_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECT_TYPE_OF_OBJECT'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_OBJECT_TYPE_OF_OBJECT'
            ip_obj_number         = ip_obj_number
          importing
            ep_return_code        = ep_return_code
            et_object_types       = et_object_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_EQPM_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_EQPM_DETAILS_BY_NUMBER'
            ip_eqpm_number        = ip_eqpm_number
          changing
            et_eqpm               = et_eqpm
          exceptions
            communication_failure = 1
            system_failure        = 2.


      when 'GET_PART_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_PART_DETAILS_BY_NUMBER'
            ip_part_number        = ip_part_number
          importing
            ep_return_code        = ep_return_code
            et_parts              = et_parts
          exceptions
            communication_failure = 1
            system_failure        = 2.


      when 'GET_UNIT_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_UNIT_DETAILS_BY_NUMBER'
            ip_unit_number        = ip_unit_number
          importing
            ep_return_code        = ep_return_code
            et_units              = et_units
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_EQPM_TYPES_OF_OBJECT_TYPE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_EQPM_TYPES_OF_OBJECT_TYPE'
            ip_obj_type_number    = ip_obj_type_number
          importing
            ep_return_code        = ep_return_code
            et_eqpm_types         = et_eqpm_types
          exceptions
            communication_failure = 1
            system_failure        = 2.


      when 'GET_EQPM_TYPE_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_EQPM_TYPE_DETAILS_BY_NUMBER'
            ip_eqpm_type          = ip_eqpm_type
          importing
            ep_return_code        = ep_return_code
            et_eqpm_types         = et_eqpm_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECT_TYPE_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_OBJECT_TYPE_DETAILS_BY_NUMBER'
            ip_obj_type_number    = ip_obj_type_number
          importing
            ep_return_code        = ep_return_code
            et_object_types       = et_object_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_UNIT_TYPE_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_UNIT_TYPE_DETAILS_BY_NUMBER'
            ip_unit_type          = ip_unit_type
          importing
            ep_return_code        = ep_return_code
            et_unit_types         = et_unit_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_PART_TYPE_DETAILS_BY_NUMBER'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_PART_TYPE_DETAILS_BY_NUMBER'
            ip_part_type          = ip_part_type
          importing
            ep_return_code        = ep_return_code
            et_part_types         = et_part_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_PART_TYPES_BY_UNIT_TYPE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_PART_TYPES_BY_UNIT_TYPE'
            ip_unit_type          = ip_unit_type
          importing
            ep_return_code        = ep_return_code
            et_part_types         = et_part_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_UNIT_TYPES_BY_EQPM_TYPE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_UNIT_TYPES_BY_EQPM_TYPE'
            ip_eqpm_type          = ip_eqpm_type
          importing
            ep_return_code        = ep_return_code
            et_unit_types         = et_unit_types
          exceptions
            communication_failure = 1
            system_failure        = 2.


      when 'GET_UNIT_TYPE_OF_UNIT'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_UNIT_TYPE_OF_UNIT'
            ip_unit_number        = ip_unit_number
          importing
            ep_return_code        = ep_return_code
            et_unit_types         = et_unit_types
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECTS_BY_ORG_STRUCTURE_CODE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_OBJECTS_BY_ORG_STRUCTURE_CODE'
            it_org_struct_codes   = it_org_struct_codes
          importing
            ep_return_code        = ep_return_code
            et_objects            = et_objects
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECT_ORG_STRUCTURE_CODE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_OBJECT_ORG_STRUCTURE_CODE'
            ip_obj_number         = ip_obj_number
          importing
            ep_return_code        = ep_return_code
            ep_org_struct_code    = ep_org_struct_code
          exceptions
            communication_failure = 1
            system_failure        = 2.


      when 'GET_SOZ_INCIDENT_PACKAGE'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_SOZ_INCIDENT_PACKAGE'
            ip_obj_number         = ip_obj_number
            ip_eqpm_number        = ip_eqpm_number
            ip_unit_number        = ip_unit_number
            ip_part_number        = ip_part_number
          importing
            ep_return_code        = ep_return_code
            ep_obj_name           = ep_obj_name
            ep_obj_type_num       = ep_obj_type_num
            ep_obj_type_name      = ep_obj_type_name
            ep_eqpm_name          = ep_eqpm_name
            ep_eqpm_type_num      = ep_eqpm_type_num
            ep_eqpm_type_name     = ep_eqpm_type_name
            ep_unit_name          = ep_unit_name
            ep_unit_type_num      = ep_unit_type_num
            ep_unit_type_name     = ep_unit_type_name
            ep_part_desc          = ep_part_desc
          exceptions
            communication_failure = 1
            system_failure        = 2.

      when 'GET_OBJECT_SOZ_AZS_TIME'.

        call function 'ZSOZ_API_EXT' destination lv_destination
          exporting
            ip_method             = 'GET_OBJECT_SOZ_AZS_TIME'
            ip_obj_number         = ip_obj_number
          importing
            ep_return_code        = ep_return_code
            ep_soz_azs_time       = ep_soz_azs_time
          exceptions
            communication_failure = 1
            system_failure        = 2.

    endcase. " case ip_method


    if sy-subrc <> 0.
      ep_return_code = 1.
    endif.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GENERATE_X16_GUID
* +-------------------------------------------------------------------------------------------------+
* | [<-()] EP_X16_GUID                    TYPE        SYSUUID_X16
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method generate_x16_guid.

    " Standard generation of X16 GUID

    try.
        ep_x16_guid = cl_system_uuid=>create_uuid_x16_static( ).

      catch cx_uuid_error.
        ep_x16_guid = '0'.
    endtry.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_BP_NAME1_TEXT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_BP                          TYPE        BU_PARTNER(optional)
* | [<-()] EP_RESULT                      TYPE        CHAR80
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_bp_name1_text.

    data: lv_name_last  type char40,
          lv_name_first type char40,
          lv_namemiddle type char40,
          lv_length     type i.

    " Search by BP number

    if ( ip_bp is supplied ).

      " Taking NAME1_TEXT value

      select single  name1_text into ep_result
       from but000 where name_org4 <> 'ORG' and partner = ip_bp.

      lv_length = strlen( ep_result ).

      if lv_length eq 0.

        " If NAME1_TEXT is empty we create it from names

        select single name_last name_first namemiddle into (lv_name_last, lv_name_first, lv_namemiddle)
         from but000 where name_org4 <> 'ORG' and partner = ip_bp.

        concatenate lv_name_last lv_name_first lv_namemiddle into ep_result separated by space.

      endif. " if sy-subrc <> 0

    endif. "if ( ip_bp is supplied )


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_EQPM_TYPE_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EQUIPMENTTYPEID             TYPE        CHAR18
* | [<-()] EP_EQUIPMENTTYPETEXT           TYPE        CHAR40
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_eqpm_type_details_by_num.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_eqpm_types          type zsoz_tt_eqpm_types.

    exec_ext_api_method(
             exporting
               ip_method = 'GET_EQPM_TYPE_DETAILS_BY_NUMBER'
               ip_eqpm_type   = ip_equipmenttypeid
             importing
              ep_return_code = lv_ext_api_return_code
              et_eqpm_types = lt_eqpm_types ).

    if lv_ext_api_return_code eq 0.
      loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).

        ep_equipmenttypetext = <ls_eqpm_type>-eqpm_type_name.

      endloop. " loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).
    endif. " if lv_ext_api_return_code eq 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_EQPM_TYPE_OF_EQPM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_EQUIPMENTID                 TYPE        CHAR30
* | [<---] EP_EQUIPMENTTYPENAME           TYPE        CHAR40
* | [<-()] EP_EQUIPMENTTYPEID             TYPE        CHAR18
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_eqpm_type_of_eqpm.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_eqpm_type           type zsoz_tt_eqpm_types,
      ls_eqpm_type           type zsoz_ts_eqpm_type.

    exec_ext_api_method(
                 exporting
                   ip_method = 'GET_EQPM_TYPE_OF_EQPM'
                   ip_eqpm_number = ip_equipmentid
                 importing
                     ep_return_code = lv_ext_api_return_code
                     et_eqpm_types = lt_eqpm_type ).

    if ( lv_ext_api_return_code eq 0 ).

      read table lt_eqpm_type into ls_eqpm_type index 1.

      if ls_eqpm_type is not initial.

        ep_equipmenttypeid = ls_eqpm_type-eqpm_type_num.
        ep_equipmenttypename = ls_eqpm_type-eqpm_type_name.

      endif. " if ls_eqpm_type is not INITIAL

    endif. " if ( lv_ext_api_return_code NE 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_FILTER_SELECT_OPTIONS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [--->] IP_PROPERTY                    TYPE        STRING
* | [<-()] ET_SELECT_OPTIONS              TYPE        /IWBEP/T_COD_SELECT_OPTIONS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_filter_select_options.

    data(it_filter_so) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    if line_exists( it_filter_so[ property = ip_property ] ).

      et_select_options = it_filter_so[ property = ip_property ]-select_options.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_FILTER_VALUE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET
* | [--->] IP_PROPERTY                    TYPE        STRING
* | [<-()] EP_VALUE                       TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_filter_value.

    data  rg_filter_so     type /iwbep/t_cod_select_options.

    data(it_filter_so) = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    if line_exists( it_filter_so[ property = ip_property ] ).

      rg_filter_so = it_filter_so[ property = ip_property ]-select_options.
      loop at rg_filter_so assigning field-symbol(<rs_filter_so>).
        ep_value = <rs_filter_so>-low.
      endloop.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_MLFN_NAME_BY_GUID
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CHECK_AUTHORITY             TYPE        AC_BOOL(optional)
* | [--->] IP_GUID                        TYPE        ZSOZ_DIR_GUID
* | [<-()] EP_NAME                        TYPE        CHAR258
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_mlfn_name_by_guid.

    if ( ( ip_check_authority eq abap_true ) and ( check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ) eq abap_true ) ) or
      ( ip_check_authority eq abap_false ).

      select single name into ep_name from zsoz_mlfn_dir where guid = ip_guid.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_OBJECTS_OF_USER_BY_ATTRS
* +-------------------------------------------------------------------------------------------------+
* | [<-()] ET_OBJECTS                     TYPE        ZSOZ_TT_OBJECTS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_objects_of_user_by_attrs.

    data:
      lt_attrib      type standard table of  pt1222,
      wa_object      type zsoz_ts_object,
      lt_assignments type crmt_ppm_om_user_assignmnts_ta.

    call method cl_crm_ppm_um_toolkit=>get_assignments_of_user
      exporting
        iv_user          = sy-uname
        iv_read_root_org = 'X'
      importing
        et_assignments   = lt_assignments
      exceptions
        others           = 1.

    if sy-subrc = 0.

      " Reading attributes of a position

      loop at lt_assignments assigning field-symbol(<ls_assignments>).

        call function 'RH_OM_ATTRIBUTES_READ'
          exporting
            otype    = 'S'
            objid    = <ls_assignments>-oposition
            scenario = 'SERVICE'
            seldate  = sy-datum
          tables
            attrib   = lt_attrib
          exceptions
            others   = 1.

        if sy-subrc = 0.

          " Searching for ZSOZOBJLST attribute value

          loop at lt_attrib assigning field-symbol(<ls_attrib>) where attrib eq 'ZSOZOBJLST'.

            clear wa_object.
            wa_object-obj_number = <ls_attrib>-low.

            append wa_object to et_objects.

          endloop. "loop at lt_attrib ASSIGNING FIELD-SYMBOL(<ls_attrib>)

        endif. " if sy-subrc = 0

        " Removing duplicates

        sort et_objects.
        delete adjacent duplicates from et_objects.

      endloop.  " loop at lt_assignments ASSIGNING FIELD-SYMBOL(<ls_assignments>).

    endif. " if sy-subrc = 0





  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_OBJECT_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_OBJECTID                    TYPE        CHAR30
* | [<---] EP_OBJECTLOCATION              TYPE        CHAR4
* | [<-()] EP_OBJECTTEXT                  TYPE        CHAR40
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_object_details_by_num.
    data:
      lv_ext_api_return_code type sy-subrc,
      lt_object              type zsoz_tt_objects.

    exec_ext_api_method(
           exporting
             ip_method = 'GET_OBJECT_DETAILS_BY_NUMBER'
             ip_obj_number   = ip_objectid
           importing
            ep_return_code = lv_ext_api_return_code
            et_objects = lt_object ).

    if lv_ext_api_return_code eq 0.



      loop at lt_object assigning field-symbol(<ls_object>).

        " Object text

        if ep_objecttext is supplied.

          ep_objecttext = <ls_object>-obj_name.

        endif. " if ep_objecttext is supplied

        " Object location

        if ep_objectlocation is supplied.

          ep_objectlocation = <ls_object>-obj_location.

        endif. " if ep_objectlocation is supplied


      endloop. " loop at lt_object assigning field-symbol(<ls_object>)





    endif. " if lv_ext_api_return_code eq 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_OBJECT_TYPE_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_OBJECTTYPEID                TYPE        CHAR18
* | [<-()] EP_OBJECTTYPETEXT              TYPE        CHAR40
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_object_type_details_by_num.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_object_type         type zsoz_tt_object_types.

    exec_ext_api_method(
               exporting
                 ip_method = 'GET_OBJECT_TYPE_DETAILS_BY_NUMBER'
                 ip_obj_type_number   = ip_objecttypeid
               importing
                ep_return_code  = lv_ext_api_return_code
                et_object_types = lt_object_type ).

    if ( lv_ext_api_return_code eq 0 ).

      loop at lt_object_type assigning field-symbol(<ls_object_type>).

        ep_objecttypetext = <ls_object_type>-obj_type_name.

      endloop. " loop at lt_object_types assigning field-symbol(<ls_object_types>)

    endif. " if ( lv_ext_api_return_code eq 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_OBJECT_TYPE_OF_OBJECT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_OBJECTID                    TYPE        CHAR30
* | [<---] EP_OBJECTTYPENAME              TYPE        CHAR40
* | [<-()] EP_OBJECTTYPEID                TYPE        CHAR18
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_object_type_of_object.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_object_types        type zsoz_tt_object_types,
      ls_object_type         type zsoz_ts_object_type.


    exec_ext_api_method(
                   exporting
                     ip_method = 'GET_OBJECT_TYPE_OF_OBJECT'
                     ip_obj_number = ip_objectid
                   importing
                       ep_return_code = lv_ext_api_return_code
                       et_object_types = lt_object_types ).

    if ( lv_ext_api_return_code eq 0 ).

      read table lt_object_types into ls_object_type index 1.

      if ls_object_type is not initial.

        ep_objecttypeid = ls_object_type-obj_type_num.
        ep_objecttypename = ls_object_type-obj_type_name.

      endif. " if ls_object_types is not INITIAL

    endif. "  if ( lv_ext_api_return_code eq 0 ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_ORG_UNIT_CODE_BY_BP_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_BP                          TYPE        BU_PARTNER
* | [<-()] EP_ORG_UNIT_CODE               TYPE        SHORT_D
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_org_unit_code_by_bp_num.

    data:
          lv_org_unit_num type sobid.

    " Searching for BP org unit number

    select single objid into lv_org_unit_num from hrp1001 where sobid = ip_bp and sclas = 'BP'.

    " Searching for the code

    select single short into ep_org_unit_code from hrp1000 where objid = lv_org_unit_num .

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_PART_TYPE_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_PARTTYPEID                  TYPE        CHAR30
* | [<-()] EP_PARTTYPETEXT                TYPE        CHAR30
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_part_type_details_by_num.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_part_types          type zsoz_tt_part_types.

    exec_ext_api_method(
                   exporting
                      ip_method = 'GET_PART_TYPE_DETAILS_BY_NUMBER'
                      ip_part_type = ip_parttypeid
                   importing
                      ep_return_code = lv_ext_api_return_code
                      et_part_types = lt_part_types ).

    if lv_ext_api_return_code eq 0.

      loop at lt_part_types assigning field-symbol(<ls_part_type>).
        ep_parttypetext = <ls_part_type>-part_type_desc.
      endloop. " loop at lt_parts ASSIGNING FIELD-SYMBOL(<ls_parts>)

    endif. "if lv_ext_api_return_code eq 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_PART_TYPE_OF_TYPE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_PART_NUMBER                 TYPE        ZSOZ_PART_ID
* | [<-()] EP_PART_TYPE                   TYPE        CHAR30
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_part_type_of_type.

    data: lv_temp_string type string.

    if  ( ip_part_number cp '*' ) and ( ip_part_number is not initial ) and ( ip_part_number ne 'null' ) and ( ip_part_number cs '_' ).

      lv_temp_string = substring_after( val = ip_part_number sub = '_' ).

      if strlen( lv_temp_string ) > 3.

        ep_part_type = substring( val = lv_temp_string off = 3 ).

      endif. " if strlen( lv_temp_string ) > 3


    endif. " if ip_part_number CP '*' ...

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_PRBL_NAME_BY_GUID
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CHECK_AUTHORITY             TYPE        AC_BOOL(optional)
* | [--->] IP_GUID                        TYPE        ZSOZ_DIR_GUID
* | [<-()] EP_NAME                        TYPE        CHAR258
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_prbl_name_by_guid.

    if ( ( ip_check_authority eq abap_true ) and ( check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'R' ) eq abap_true ) ) or
      ( ip_check_authority eq abap_false ).

      select single name into ep_name from zsoz_prbl_dir where guid = ip_guid.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_PROCESSOR_RESPONSIBILITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_ORG_UNIT                    TYPE        CHAR12
* | [<-()] EP_DEPARTMENT                  TYPE        CHAR12
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_processor_responsibility.

    data lv_string_parser type char12.

    " Searching for processor  department according to code naming convention SOZ_<Department name>_*

    if ip_org_unit cp 'SOZ_*'.

      lv_string_parser = substring_after( val = ip_org_unit sub = 'SOZ_' ).

      if lv_string_parser cs '_'.
        ep_department = substring_before( val = lv_string_parser sub = '_' ).
      else.
        ep_department  = lv_string_parser.
      endif.

    endif. " if ip_org_unit cp 'SOZ_*'

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_PROPERTY_NAME_BY_ID_HUB
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_PROPERTY_TYPE               TYPE        CHAR30
* | [--->] IP_PROPERTY_ID                 TYPE        CHAR128
* | [<-()] EP_NAME                        TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_property_name_by_id_hub.

    data: lv_property_type       type char30,
          lv_property_id         type char128,
          lv_ext_api_return_code type sy-subrc,
          lv_unit_number         type char18,
          lv_obj_number          type char30,
          lv_part_id             type zsoz_part_id,
          lt_parts               type zsoz_tt_parts,
          lv_equipmentid         type char30,
          lt_eqpm                type zsoz_tt_eqpm,
          ls_eqpm                type zsoz_ts_eqpm,
          lt_watchers            type table of bu_partner,
          lv_fullname            type bu_name1tx,
          lt_root_cause          type table of char32,
          lv_rca_text            type char258,
          lv_bp                  type bu_partner,
          lv_obj_type_number     type char18,
          lv_eqpm_type_number    type char18,
          lv_employer_org_unit   type sobid,
          lt_higher_org_units    type table of swhactor,
          lv_highest_org_unit_bp type bu_partner,
          lv_department          type bu_partner,
          lv_guid                type zsoz_dir_guid.

    field-symbols: <ls_root_cause> like line of lt_root_cause.

    lv_property_type = ip_property_type.
    lv_property_id = ip_property_id.

    condense lv_property_type.

    case lv_property_type.

      when 'PARTID'.

        lv_part_id = lv_property_id.

        if ( lv_part_id is initial ) or ( lv_part_id eq ' ' ) or ( lv_part_id eq 'null' ).
          exit.

        endif.

        exec_ext_api_method(
           exporting
              ip_method = 'GET_PART_DETAILS_BY_NUMBER'
              ip_part_number = lv_part_id
           importing
              ep_return_code = lv_ext_api_return_code
              et_parts = lt_parts ).

        if lv_ext_api_return_code eq 0.

          loop at lt_parts assigning field-symbol(<ls_parts>).

            ep_name = <ls_parts>-part_desc.

          endloop.

        endif. " if lv_ext_api_return_code eq 0

      when 'UNITID'.

        lv_unit_number = lv_property_id.

        ep_name = get_unit_details_by_num( lv_unit_number ).


      when 'EQUIPMENTID'.

        lv_equipmentid = lv_property_id.



        exec_ext_api_method(
                       exporting
                         ip_method = 'GET_EQPM_DETAILS_BY_NUMBER'
                         ip_eqpm_number = lv_equipmentid
                       importing
                           ep_return_code = lv_ext_api_return_code
                           et_eqpm = lt_eqpm ).

        if lv_ext_api_return_code eq 0.
          read table lt_eqpm into ls_eqpm index 1.

          if ls_eqpm is not initial.

            ep_name = ls_eqpm-eqpm_name.

          endif.  " if ls_eqpm is not initial

        endif. " lv_ext_api_return_code

      when 'OBJECTID'.

        lv_obj_number = lv_property_id.

        ep_name = get_object_details_by_num( lv_obj_number ).

      when 'MALFUNCTIONID'.

        "select single name into ep_name  from zsoz_mlfn_dir where guid = ip_property_id.
        lv_guid = ip_property_id.
        ep_name = get_mlfn_name_by_guid( ip_guid = lv_guid ip_check_authority = abap_true ).

      when 'PROBLEMID'.

        lv_guid = ip_property_id.
        ep_name = get_prbl_name_by_guid( ip_guid = lv_guid ip_check_authority = abap_true ).

      when 'SOLUTIONID'.

        lv_guid = ip_property_id.
        ep_name = get_sltn_name_by_guid( ip_guid = lv_guid ip_check_authority = abap_true ).

      when 'STATUS'.

        select single txt30 from tj30t into ep_name where stsma = 'ZSOZ0001' and spras = sy-langu and estat = ip_property_id.


      when 'PRIORITY'.

        select single txt_long into ep_name from scpriot where priority = ip_property_id and langu = sy-langu.

        if ep_name is not initial.
          ep_name = substring_after( val = ep_name sub = ':' ).
          condense ep_name.
        endif.

      when 'WATCHERS'.

        split ip_property_id at ';' into table lt_watchers.

        loop at lt_watchers assigning field-symbol(<ls_watcher>).

          clear lv_fullname.

          select single name1_text into lv_fullname  from but000 where partner = <ls_watcher>.

          if ep_name is initial.
            ep_name = lv_fullname.
          else.
            concatenate ep_name ';' lv_fullname into ep_name.
          endif.

        endloop. " loop at lt_watchers assigning field-symbol(<ls_watcher>)

      when 'EXECUTORID'.

        lv_bp = ip_property_id.
        ep_name = get_bp_name1_text( lv_bp ).

      when 'DEPARTMENTID'.

        select single objid into lv_employer_org_unit from hrp1001 where sobid = ip_property_id and sclas = 'BP'.

        if sy-subrc = 0.

          call function 'RH_STRUC_GET'
            exporting
              act_otype      = 'O'
              act_objid      = lv_employer_org_unit
              act_wegid      = 'O-O'
            tables
              result_tab     = lt_higher_org_units
            exceptions
              no_plvar_found = 1
              no_entry_found = 2
              others         = 3.

          if sy-subrc = 0.

            if lt_higher_org_units is not initial.

              " Picking up last record as it is a top node

              data(ls_highest_org_unit) = lt_higher_org_units[ lines( lt_higher_org_units ) ].

              " Searching for bp of top node

              select single sobid into lv_highest_org_unit_bp from hrp1001 where objid = ls_highest_org_unit-objid and sclas = 'BP'.

              lv_department = lv_highest_org_unit_bp.

              if lv_department is not initial.

                select single name_org2 into ep_name  from but000
                         where partner = lv_department.

              endif. " if lv_department is not initial

              exit.

            endif. " if lt_higher_org_units is not initial

          endif. " if sy-subrc = 0

        endif. "if sy-subrc = 0

      when 'SUPPORTGROUPID'.

        select single name_org2 into ep_name  from but000
           where partner = ip_property_id.

      when 'OBJECTTYPEID'.

        lv_obj_type_number = ip_property_id.

        ep_name = get_object_type_details_by_num( lv_obj_type_number ).

      when 'EQUIPMENTTYPEID'.

        lv_eqpm_type_number = ip_property_id.

        ep_name = get_eqpm_type_details_by_num( lv_eqpm_type_number ).

    endcase. " case ip_property_name


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_ROOT_CAUSE_GUIDS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_OBJECTID                    TYPE        CHAR30(optional)
* | [--->] IP_EQUIPMENTID                 TYPE        CHAR30(optional)
* | [--->] IP_UNITID                      TYPE        CHAR18(optional)
* | [--->] IP_PARTID                      TYPE        ZSOZ_PART_ID(optional)
* | [--->] IP_SEARCH_TYPE                 TYPE        CHAR1
* | [--->] IP_OBJECTTYPEID                TYPE        CHAR18(optional)
* | [--->] IP_EQUIPMENTTYPEID             TYPE        CHAR30(optional)
* | [--->] IP_UNITTYPEID                  TYPE        CHAR18(optional)
* | [--->] IP_PARTTYPEID                  TYPE        CHAR30(optional)
* | [<---] ET_GUIDS                       TYPE        ZSOZ_TT_DIR_GUIDS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_root_cause_guids.

    data:
      lv_objecttypeid    type char18,
      lv_equipmenttypeid type char30,
      lv_unittypeid      type char18,
      lv_parttypeid      type char30.

    " Search works only in case a user has an access to ZSOZ_ROOT_CAUSE table

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_true.

      " Reading by object id, equipment id, unit id, part id,
      " if types are not provided

      if ( ( ip_objecttypeid is initial ) and ( ip_equipmenttypeid is initial ) and
          ( ip_unittypeid is initial ) and  ( ip_parttypeid is initial ) ) .

        " Get Object type

        lv_objecttypeid = get_object_type_of_object( ip_objectid ).

        " Get Equipment type

        lv_equipmenttypeid = get_eqpm_type_of_eqpm( ip_equipmentid ).

        " Get Unit type

        lv_unittypeid = get_unit_type_of_unit( ip_unitid ).

        " Get Part type

        lv_parttypeid = get_part_type_of_type( ip_partid ).

      else.

        lv_objecttypeid       = ip_objecttypeid .
        lv_equipmenttypeid     = ip_equipmenttypeid.
        lv_unittypeid          = ip_unittypeid.
        lv_parttypeid         = ip_parttypeid.

      endif. "  if ( ( ip_objecttypeid is INITIAL ) and ( ip_equipmenttypeid is INITIAL )

      if  ( lv_objecttypeid is not initial ) and ( lv_equipmenttypeid is not initial ).

        case ip_search_type.

          when 'S'. " Search for Solution

            select sltn_guid into table et_guids
              from zsoz_root_cause
                where
                  objecttypeid = lv_objecttypeid and
                  equipmenttypeid = lv_equipmenttypeid and
                  unittypeid = lv_unittypeid and
                  parttypeid = lv_parttypeid.

          when 'P'. " Search for Problem

            select prbl_guid into table et_guids
             from zsoz_root_cause
               where
                  objecttypeid = lv_objecttypeid and
                  equipmenttypeid = lv_equipmenttypeid and
                  unittypeid = lv_unittypeid and
                  parttypeid = lv_parttypeid.

        endcase. " case ip_search_type

      endif. " if ( ( lv_objecttypeid is not initial ) and ( lv_equipmenttypeid is not initial )

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_true

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_SHOW_TYPE_PARAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_HEADER                      TYPE        TIHTTPNVP
* | [<-()] EP_SHOW_TYPE                   TYPE        CHAR1
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_show_type_param.

    field-symbols: <fs_header> type /iwbep/s_mgw_name_value_pair.

    " Getting full URL

    read table ip_header assigning <fs_header> with key name = '~request_uri'.

    " Searching ShowType parameter

    search <fs_header>-value for 'ShowType'.

    if ( sy-fdpos > 0 ).

      data(lv_showtype) = substring_after( val = <fs_header>-value sub = 'ShowType=' ).

      if ( lv_showtype eq 'true' ).
        ep_show_type = 'X'.
      endif.  " if ( lv_showtype eq 'yes' )

    endif. "  if ( sy-fdpos > 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_SLA_TIMES_FOR_REQUEST
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_MALFUNCTION_GUID            TYPE        ZSOZ_DIR_GUID
* | [--->] IP_DEPARTMENTID                TYPE        BU_PARTNER
* | [--->] IP_PRIORITY                    TYPE        CHAR1
* | [--->] IP_EQUIPMENTTYPEID             TYPE        CHAR18
* | [--->] IP_OBJECTTYPEID                TYPE        CHAR18
* | [--->] IP_UNITTYPEID                  TYPE        CHAR18
* | [--->] IP_PARTTYPEID                  TYPE        CHAR30
* | [--->] IP_SOZ_AZS_TIME                TYPE        INT4(optional)
* | [<---] EP_LEAD_DATE                   TYPE        SY-DATUM
* | [<---] EP_LEAD_TIME                   TYPE        SY-UZEIT
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_sla_times_for_request.

    data:
      lt_zsoz_processtime   type standard table of zsoz_processtime,
      lv_leadtime           type /iwbep/sb_odata_ty_int2,
      lt_unittypeid_filter  type range of char18,
      wa_unittypeid_filter  like line of lt_unittypeid_filter,
      lt_parttypeid_filter  type range of char30,
      wa_parttypeid_filter  like line of lt_parttypeid_filter,
      lv_zprocess_time_auth type ac_bool.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_zprocess_time_auth = check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'R' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Additional search ranges: unit type and part type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ip_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = ip_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if ip_unittypeid is not initial

    if ip_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = ip_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if ip_parttypeid is not initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Get SLA setup from ZSOZ_PROCESSTIME
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lv_zprocess_time_auth eq abap_true.

      select
        rtlowhour
        rtmiddlehour
        rthighhour
        rtveryhighhour
        ltlowhour
        ltmiddlehour
        lthighhour
        ltveryhighhour
      into corresponding fields of table lt_zsoz_processtime
      from zsoz_processtime
      where
        malfunction_guid = ip_malfunction_guid and
        equipmenttypeid = ip_equipmenttypeid and
        objecttypeid = ip_objecttypeid and
        departmentid = ip_departmentid and
        priority = ip_priority and
        unittypeid in lt_unittypeid_filter and
        parttypeid in lt_parttypeid_filter.

    endif. " if lv_zprocess_time_auth eq abap_true

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Get response time and lead time setup
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lt_zsoz_processtime is not initial.

      loop at lt_zsoz_processtime assigning field-symbol(<ls_zsoz_processtime>).

        case ip_priority.

          when '3'. " meidum

            lv_leadtime = <ls_zsoz_processtime>-ltmiddlehour.

          when '4'. " low

            lv_leadtime = <ls_zsoz_processtime>-ltlowhour.

          when '2'. " high

            lv_leadtime = <ls_zsoz_processtime>-lthighhour.

          when '1'. " very high

            lv_leadtime = <ls_zsoz_processtime>-ltveryhighhour.

        endcase. " case <ls_zsoz_processtime>-priority

      endloop. " loop at lt_zsoz_processtime ASSIGNING FIELD-SYMBOL(<ls_zsoz_processtime>).

    else.

      " Setting default values

      case ip_priority.

        when '3'. " meidum

          lv_leadtime = 24.

        when '4'. " low

          lv_leadtime = 48.

        when '2'. " high

          lv_leadtime = 8.

        when '1'. " very high

          lv_leadtime = 2.

      endcase. " case <ls_zsoz_processtime>-priority

    endif. " if lt_zsoz_processtime is not  initial

    "  Adding time lag

    lv_leadtime = lv_leadtime + ip_soz_azs_time.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Calculating Lead time
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if  ( lv_leadtime is initial ).
      return.
    endif.

    call method zcl_zsoz_dpc_ext=>calc_sla_by_srv_profile
      exporting
        ip_added_hours_total = lv_leadtime
      importing
        ep_sla_date          = ep_lead_date
        ep_sla_time          = ep_lead_time.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_SLTN_NAME_BY_GUID
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_CHECK_AUTHORITY             TYPE        AC_BOOL(optional)
* | [--->] IP_GUID                        TYPE        ZSOZ_DIR_GUID
* | [<-()] EP_NAME                        TYPE        CHAR258
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_sltn_name_by_guid.

    if ( ( ip_check_authority eq abap_true ) and ( check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ) eq abap_true ) ) or
      ( ip_check_authority eq abap_false ).

      select single name into ep_name from zsoz_sltn_dir where guid = ip_guid.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_UNIT_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_UNITID                      TYPE        CHAR18
* | [<-()] EP_UNITTEXT                    TYPE        CHAR40
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_unit_details_by_num.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_units               type zsoz_tt_units.

    exec_ext_api_method(
       exporting
         ip_method = 'GET_UNIT_DETAILS_BY_NUMBER'
         ip_unit_number = ip_unitid
       importing
           ep_return_code = lv_ext_api_return_code
           et_units = lt_units ).

    if lv_ext_api_return_code eq 0.

      loop at lt_units assigning field-symbol(<ls_unit>).
        ep_unittext = <ls_unit>-unit_name.
      endloop. " loop at lt_units assigning field-symbol(<ls_unit>)

    endif. " if lv_ext_api_return_code eq 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_UNIT_TYPE_DETAILS_BY_NUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_UNITTYPEID                  TYPE        CHAR18
* | [<-()] EP_UNITTYPETEXT                TYPE        CHAR40
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_unit_type_details_by_num.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_unit_types          type zsoz_tt_unit_types.

    exec_ext_api_method(
              exporting
                ip_method = 'GET_UNIT_TYPE_DETAILS_BY_NUMBER'
                ip_unit_type =  ip_unittypeid
              importing
                  ep_return_code = lv_ext_api_return_code
                  et_unit_types = lt_unit_types ).

    if lv_ext_api_return_code eq 0.

      loop at lt_unit_types assigning field-symbol(<ls_unit_type>).
        ep_unittypetext = <ls_unit_type>-unit_type_name.
      endloop. " loop at lt_units ASSIGNING FIELD-SYMBOL(<ls_units>)

    endif. "if lv_ext_api_return_code eq 0.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_UNIT_TYPE_OF_UNIT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_UNITID                      TYPE        CHAR18
* | [<-()] EP_UNITTYPEID                  TYPE        CHAR18
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_unit_type_of_unit.

    data:
      lv_ext_api_return_code type sy-subrc,
      lt_unit_type           type zsoz_tt_unit_types,
      ls_unit_type           type zsoz_ts_unit_type.

    exec_ext_api_method(
                    exporting
                      ip_method = 'GET_UNIT_TYPE_OF_UNIT'
                      ip_unit_number =  ip_unitid
                   importing
                      ep_return_code = lv_ext_api_return_code
                      et_unit_types = lt_unit_type ).

    if ( lv_ext_api_return_code eq 0 ).
      read table lt_unit_type into ls_unit_type index 1.

      if ls_unit_type is not initial.

        ep_unittypeid = ls_unit_type-unit_type_num.

      endif.  "if ls_eqpm_type is not INITIAL
    endif. "  if ( lv_ext_api_return_code eq 0 ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_USER_DEPARTMENT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_USER                        TYPE        SY-UNAME
* | [<---] EP_DEPARTMENT_CODE             TYPE        SHORT_D
* | [<-()] EP_DEPARTMENT                  TYPE        BU_PARTNER
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_user_department.

    data:
      lv_user_partner        type bu_partner,
      lt_employer_bp         type standard table of bu_partner,
      lv_employer_org_unit   type sobid,
      lt_higher_org_units    type table of swhactor,
      lv_highest_org_unit_bp type bu_partner,
      lv_org_units_shift     type int4.

    " Authorizations related variables

    data: lt_user_roles  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_processor( lt_user_roles ).

      " If user is processor then we take top-1 record, a one record below SOZ_SUPPORT (root node to store support groups)

      lv_org_units_shift = 1.

    endif. " if user_is_processor( lt_user_roles )

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " get BP for current user

    call function 'CRM_ERMS_FIND_BP_FOR_USER'
      exporting
        iv_user_id = ip_user
      importing
        ev_bupa_no = lv_user_partner.

    " get BP for curent user partner from but000 table if FM giving an error during runtime

    if lv_user_partner is initial.
      select single partner into lv_user_partner from but000 where bu_sort1 = ip_user.
    endif.

    " Searching for requester org unit bp

    select partner1 into table lt_employer_bp from but050 where partner2 = lv_user_partner and reltyp = 'BUR010'.

    loop at lt_employer_bp assigning field-symbol(<ls_employer_bp>).

      clear lv_employer_org_unit.

      " Searching for requester org unit number

      select single objid into lv_employer_org_unit from hrp1001 where sobid = <ls_employer_bp> and sclas = 'BP'.

      " If user is not a processor then we should avoid groups named like SOZ_*
      " If user is a processor we should select only groups like SOZ_*

      select count( * ) from hrp1000 up to 1 rows where objid = lv_employer_org_unit and short not like 'SOZ_%'.

      if ( sy-subrc ne 0 ) and  ( lv_org_units_shift eq 0 ) or
        ( sy-subrc eq 0 ) and  ( lv_org_units_shift eq 1 ).

        continue.

      endif.

      " Getting org. structure

      call function 'RH_STRUC_GET'
        exporting
          act_otype      = 'O'
          act_objid      = lv_employer_org_unit
          act_wegid      = 'O-O'
        tables
          result_tab     = lt_higher_org_units
        exceptions
          no_plvar_found = 1
          no_entry_found = 2
          others         = 3.

      if sy-subrc = 0.

        if lt_higher_org_units is not initial.

          " Picking up org unit record with a shift from a top node

          data(ls_highest_org_unit) = lt_higher_org_units[ lines( lt_higher_org_units ) - lv_org_units_shift ].

          " Searching for bp of top node

          select single sobid into lv_highest_org_unit_bp from hrp1001 where objid = ls_highest_org_unit-objid and sclas = 'BP'.

          ep_department = lv_highest_org_unit_bp.

          " Adding text code of found department

          select single short into ep_department_code from hrp1000 where objid = ls_highest_org_unit-objid.

          if ep_department_code cs 'SOZ'.
            ep_department_code = get_processor_responsibility( ep_department_code ).
          endif.

          exit.

        endif. " if lt_higher_org_units is not initial

      endif. " if sy-subrc = 0

      "endif. "if sy-subrc = 0

    endloop. " loop at lt_employer_bp ASSIGNING FIELD-SYMBOL(<ls_employer_bp>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_USER_SOZ_ROLE_AND_ORG_UNIT
* +-------------------------------------------------------------------------------------------------+
* | [<---] ET_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_user_soz_role_and_org_unit.

    data:
      wa_role                        type zsoz_ts_user_role.
*      wa_top_visible_org_unit_code_c type zsoz_ts_org_struct_code,
*      wa_top_visible_org_unit_code_p type zsoz_ts_org_struct_code.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Creator
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if  check_soz_authority( 'AUTHOR' )  eq abap_true.

      wa_role-role = 'C'.
      append wa_role to et_roles.
      clear wa_role.

    endif. " if  check_soz_authority( 'AUTHOR' )  eq abap_true.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Watcher
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if  check_soz_authority( 'WATCHER' )  eq abap_true.
      wa_role-role = 'W'.
      append wa_role to et_roles.

    endif. " if  check_soz_authority( 'WATCHER' )  eq abap_true

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Processor
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if  check_soz_authority( 'PROCESSOR' )  eq abap_true.

      wa_role-role = 'P'.
      append wa_role to et_roles.
      clear wa_role.

    endif. " if  check_soz_authority( 'PROCESSOR' )  eq abap_true.
*
*    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
*    "   Administrator
*    "~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if  check_soz_authority( 'ADMIN' )  eq abap_true.

      wa_role-role = 'A'.
      append wa_role to et_roles.

    endif. " if  check_soz_authority( 'ADMIN' )  eq abap_true

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>GET_ZSOZ_PARAM_VALUE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_PARAM_NAME                  TYPE        CHAR20
* | [<-()] EP_VALUE                       TYPE        CHAR258
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method get_zsoz_param_value.

    select single value from zsoz_parameters into ep_value
       where param = ip_param_name.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->HISTORYDETAILSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_HISTORYDETAIL
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method historydetailset_get_entityset.

    data:
      lt_zsoz_req_his_det type table of zsoz_req_his_det,
      lt_zsoz_req_his_hdr type table of zsoz_req_his_hdr,
      ls_entityset        like line of et_entityset,
      ls_key_tab          like line of it_key_tab,
      lv_guid             type crmt_object_guid,
      lv_valuetext        type string,
      lv_property_type    type char30,
      lv_property_id      type char128,
      lv_sys_tzone        type timezone,
      lv_timestamp        type timestamp,
      lv_date             type sy-datum,
      lv_time             type sy-uzeit.

    field-symbols <ls_zsoz_req_his_det> like line of lt_zsoz_req_his_det.

    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.
      lv_guid = ls_key_tab-value.
    endif.

    " Getting system timezone

    call function 'GET_SYSTEM_TIMEZONE'
      importing
        timezone = lv_sys_tzone.

    " Search for history header records by incident GUID

    if lv_guid is not initial.

      select
        username
        change_date
        change_time
        action
        change_guid
      into corresponding fields of table lt_zsoz_req_his_hdr
        from zsoz_req_his_hdr
        where guid = lv_guid.

      " Looping through all found history header records

      loop at lt_zsoz_req_his_hdr assigning field-symbol(<ls_zsoz_req_his_hdr>).

        clear lt_zsoz_req_his_det.

        if <ls_zsoz_req_his_det> is assigned.
          unassign <ls_zsoz_req_his_det>.
        endif.

        " Searching for all history detail records, corresponding to a current history header record

        select
           field
           value
         into corresponding fields of table lt_zsoz_req_his_det
           from zsoz_req_his_det
           where change_guid = <ls_zsoz_req_his_hdr>-change_guid.

        " Filling output table

        loop at lt_zsoz_req_his_det assigning <ls_zsoz_req_his_det>.

          ls_entityset-field =  <ls_zsoz_req_his_det>-field.
          ls_entityset-value = <ls_zsoz_req_his_det>-value.
          ls_entityset-historyguid = <ls_zsoz_req_his_hdr>-change_guid.
          ls_entityset-refguid = lv_guid.

          " Adding russian translation

          ls_entityset-fieldinrussian = translate_to_russian( <ls_zsoz_req_his_det>-field ).

          if ls_entityset-fieldinrussian is initial.
            continue.
          endif.

          " Adding value description

          lv_property_type = <ls_zsoz_req_his_det>-field.
          lv_property_id = <ls_zsoz_req_his_det>-value.

          " For time related fields converting output format

          if <ls_zsoz_req_his_det>-field cs 'time'.

            " Converting time stamp to system time

            lv_timestamp = lv_property_id.

            convert time stamp lv_timestamp time zone lv_sys_tzone
                    into date lv_date time lv_time.


            concatenate lv_date lv_time into lv_property_id.

            lv_valuetext = convert_time_stamp( lv_property_id ).

          else.

            " For regular (not time related) fields adding property value description

            lv_valuetext = get_property_name_by_id_hub(
                ip_property_type = lv_property_type
                ip_property_id   = lv_property_id ).

          endif. " if <ls_zsoz_req_his_det>-field cs 'time'

          " If description hasn't been found we set value as a value description

          if lv_valuetext is not initial.
            ls_entityset-valuetext = lv_valuetext.
          else.
            ls_entityset-valuetext = <ls_zsoz_req_his_det>-value.
          endif. " if lv_valuetext is not initial

          append  ls_entityset to et_entityset.

        endloop. " loop at lt_zsoz_req_his_det assigning field-symbol(<ls_zsoz_req_his_det>)
      endloop. " loop at lt_zsoz_req_his_hdr ASSIGNING FIELD-SYMBOL(<ls_zsoz_req_his_hdr>)
    endif.    "  if lv_guid is not INITIAL

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->HISTORYHEADERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_HISTORYHEADER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method historyheaderset_get_entityset.

    data: lv_guid                 type crmt_object_guid,
          ls_key_tab              like line of it_key_tab,
          lt_zsoz_req_his_hdr     type table of zsoz_req_his_hdr,
          ls_entityset            like line of et_entityset,
          lv_user_partner         type bu_partner,
          lv_timestamp            type timestamp,
          lv_sys_tzone            type timezone,
          lv_text_for_translation type char50.

    "  " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      lv_guid = ls_key_tab-value.

      " Search for history header records by incident GUID

      select
        username
        change_date
        change_time
        action
        change_guid
      into corresponding fields of table lt_zsoz_req_his_hdr
        from zsoz_req_his_hdr
        where guid = lv_guid.

      " Getting system timezone

      call function 'GET_SYSTEM_TIMEZONE'
        importing
          timezone = lv_sys_tzone.

      " Looping through all history header records

      loop at lt_zsoz_req_his_hdr assigning field-symbol(<ls_zsoz_req_his_hdr>).

        ls_entityset-refguid = lv_guid.

        " Additional check for consistency: history header has history detail records underneath

        select count(*) from zsoz_req_his_det up to 1 rows where change_guid = <ls_zsoz_req_his_hdr>-change_guid.

        if sy-subrc <> 0.
          continue.
        endif.

        " Filling output table

        ls_entityset-historyguid = <ls_zsoz_req_his_hdr>-change_guid.
        ls_entityset-username = <ls_zsoz_req_his_hdr>-username.

        " Translating action name to Russian

        clear lv_text_for_translation.
        lv_text_for_translation = <ls_zsoz_req_his_hdr>-action.
        condense lv_text_for_translation.
        ls_entityset-action = translate_to_russian( lv_text_for_translation ).

        " Getting BP for a user, who made the change

        clear lv_user_partner.

        call function 'CRM_ERMS_FIND_BP_FOR_USER'
          exporting
            iv_user_id = <ls_zsoz_req_his_hdr>-username
          importing
            ev_bupa_no = lv_user_partner.

        " Taking additional BP details

        if lv_user_partner is not initial.
          select single name_last name_first namemiddle name1_text into ( ls_entityset-lastname, ls_entityset-firstname, ls_entityset-middlename, ls_entityset-fullname )
             from but000 where partner = lv_user_partner.
        endif.

        " Preparing timestamp

        convert date <ls_zsoz_req_his_hdr>-change_date time <ls_zsoz_req_his_hdr>-change_time
                into time stamp lv_timestamp time zone lv_sys_tzone.

        if lv_timestamp is not initial.
          ls_entityset-changedate = lv_timestamp.
        endif.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_zsoz_req_his_hdr ASSIGNING FIELD-SYMBOL(<ls_zsoz_req_his_hdr>)

    endif.  " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->INCIDENTSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_INCIDENT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method incidentset_create_entity.

    types: begin of ty_status_text_tt,
             status_text type j_txt30,
           end of ty_status_text_tt.

    constants:
      lc_crm_create    type crmt_mode value 'A',
      lc_partner_ty_bp type crmt_partner_no_type value 'BP'.

    data:
      lo_cl_ags_crm_1o_api    type ref to cl_ags_crm_1o_api,
      lo_cl_ags_crm_1o_api_sd type ref to cl_ags_crm_1o_api_sd,
      lv_user_partner_in      type bu_partner,
      lv_user_partner_out     type crmt_partner_no,
      lt_text                 type crmt_text_comt,
      ls_text                 type crmt_text_com,
      ls_text_line            type tline,
      lt_text_lines           type comt_text_lines_t,
      lv_guid                 type crmt_object_guid,
      ls_customer_h           type crmt_customer_h_com,
      lv_log_handle           type balloghndl,
      lv_error_text           type bapi_msg,
      ls_orderadm_h           type crmt_orderadm_h_wrk,
      lv_user_status          type crm_j_status,
      lt_status_text          type standard table of ty_status_text_tt,
      lt_partner              type crmt_partner_external_wrkt,
      ls_partner              type crmt_partner_external_wrk,
      lv_bp                   type bu_partner,
      lv_equipmentid          type char30,
      lv_objectid             type char30,
      lv_unitid               type char18,
      lv_partid               type zsoz_part_id,
      lv_supportgroupid       type crmt_partner_no,
      lv_user_id              type uname,
      lt_partners             type comt_partner_comt,
      ls_partners             type comt_partner_com,
      lt_watchers             type table of bu_partner,
      lv_departmentid         type bu_partner,
      lv_malfunctionid        type char32.

    " Authorizations related variables

    data:
      lt_user_roles type zsoz_tt_user_roles.

    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--
    "   PART 0
    "   Creating incident in IT Service Management
    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    " If user is not a creator then process is stopped

    if ( user_is_creator( lt_user_roles ) eq abap_false ) and
      ( user_is_only_creator( lt_user_roles ) eq abap_false ).

      lv_error_text = 'Ошибка сохранения записи: пользователь не может быть автором заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if user_is_creator( lt_user_roles ) eq abap_false


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Creation preparation block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload from POST

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Starting an incident API creation sequence

    cl_ags_crm_1o_api=>get_instance(
    exporting
      iv_process_mode = lc_crm_create
      iv_process_type = 'ZSOZ'
    importing
      eo_instance = lo_cl_ags_crm_1o_api
      ).

    if lo_cl_ags_crm_1o_api is not bound.

      lv_error_text = 'Ошибка сохранения записи: метод создания не может быть вызван'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if lo_cl_ags_crm_1o_api is not bound

    lo_cl_ags_crm_1o_api_sd ?= lo_cl_ags_crm_1o_api.



    " Taking new incident GUID

    lv_guid = lo_cl_ags_crm_1o_api->get_guid( ).

    if lv_guid is initial.

      lv_error_text = 'Ошибка сохранения записи: GUID не был получен'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if lv_guid is initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting a reporter from sy-uname
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_user_id = sy-uname.

    condense lv_user_id.

    call function 'CRM_ERMS_FIND_BP_FOR_USER'
      exporting
        iv_user_id = lv_user_id
      importing
        ev_bupa_no = lv_user_partner_in.

    lv_user_partner_out = lv_user_partner_in.

    if lv_user_partner_out is not initial.

      lo_cl_ags_crm_1o_api_sd->set_reporter( iv_partner_number = lv_user_partner_out ).

    endif. " if lv_user_partner_out is not INITIAL

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting a Support Team
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_supportgroupid = er_entity-supportgroupid.

    if lv_supportgroupid is not initial.

      lo_cl_ags_crm_1o_api_sd->set_team( iv_partner_number = lv_supportgroupid ).

    endif.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting  Watchers into "Administrator" function SLFN0001
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    split er_entity-watchers at ';' into table lt_watchers.

    loop at lt_watchers assigning field-symbol(<ls_watcher>).

      clear ls_partners.

      ls_partners-ref_guid           = lv_guid.
      ls_partners-ref_kind           = 'A'.
      ls_partners-kind_of_entry      = 'C'.
      ls_partners-no_type            = lc_partner_ty_bp.
      ls_partners-partner_fct        = 'SLFN0001'.
      ls_partners-partner_no         = <ls_watcher>.

      insert ls_partners into table lt_partners.

    endloop.  "loop at lt_watchers ASSIGNING FIELD-SYMBOL(<ls_watcher>)

    if lt_partners is not initial.

      call method lo_cl_ags_crm_1o_api->set_partners
        exporting
          it_partner        = lt_partners
        changing
          cv_log_handle     = lv_log_handle
        exceptions
          document_locked   = 1
          error_occurred    = 2
          no_authority      = 3
          no_change_allowed = 4
          others            = 5.

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения: невозможно сохранить данные партнеров'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

    endif. " if lt_partners is not INITIAL

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting Description
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if er_entity-description is not initial.

      lo_cl_ags_crm_1o_api->set_short_text( exporting iv_short_text = er_entity-description ).

    endif. " if er_entity-description is not INITIAL

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting Text
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if er_entity-note is not initial.

      ls_text-ref_guid = lv_guid.
      ls_text-tdid = 'SU99'.
      ls_text-tdstyle = 'SYSTEM'.        .
      ls_text-mode = 'I'.
      ls_text_line-tdline = er_entity-note.

      append ls_text_line to lt_text_lines.

      ls_text-lines = lt_text_lines.
      append ls_text to lt_text.

      lo_cl_ags_crm_1o_api->set_texts(
         exporting
           it_text           =  lt_text
         exceptions
           error_occurred    = 1
           document_locked   = 2
           no_change_allowed = 3
           no_authority      = 4
           others            = 5
       ).

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения: невозможно сохранить текст заявки'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

    endif. " if er_entity-note is not INITIAL


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting custom fields in customer_h space
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Incident GUID

    " Getting structure with key fields of created incident

    lo_cl_ags_crm_1o_api->get_orderadm_h( importing es_orderadm_h = ls_orderadm_h ).

    if ls_orderadm_h-object_id is not initial.
      ls_customer_h-ref_guid = ls_orderadm_h-object_id.
    endif.

    " Equipment ID

    if  er_entity-equipmentid is not initial.
      "   ls_customer_h-zzfld000001 = er_entity-equipmentid.
      ls_customer_h-zzfld000017 = er_entity-equipmentid.

    endif.

    " Object ID

    if er_entity-objectid is not initial.
      "  ls_customer_h-zzfld000004 = er_entity-objectid.
      ls_customer_h-zzfld000015 = er_entity-objectid.


    endif.

    " Malfunction ID

    if er_entity-malfunctionid is not initial.
      ls_customer_h-zzfld00000s = er_entity-malfunctionid.
    endif.

    " Dapartment ID

    if  er_entity-departmentid is not initial.
      ls_customer_h-zzfld000018 = er_entity-departmentid.
    endif.

    " Unit ID

    if er_entity-unitid is not initial.
      ls_customer_h-zzfld000019 = er_entity-unitid.
    endif.

    " Part ID

    if er_entity-partid is not initial.
      ls_customer_h-ZZFLD00001A = er_entity-partid.
    endif.

    " Lead times: planned and fact

    if er_entity-leadtime is not initial.

      " Initialization of lead time planned

      ls_customer_h-zzfld00000h = er_entity-leadtime.

      " Initialization of lead time fact

      ls_customer_h-zzfld000010 = er_entity-leadtime.

    endif.

    " Event time

    if er_entity-eventtime is not initial.
      ls_customer_h-zzfld000011 = er_entity-eventtime.
    endif.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Setting Priority
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if er_entity-priority is not initial.

      lo_cl_ags_crm_1o_api->set_priority( exporting iv_priority = er_entity-priority ).

    endif. " if er_entity-priority is not initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Finalizing customer_h records and saving document
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lo_cl_ags_crm_1o_api->set_customer_h( exporting is_customer_h = ls_customer_h ).

    "Record document and return Solution Manager ID and Solution Manager GUID

    lo_cl_ags_crm_1o_api->save(
      changing
        cv_log_handle = lv_log_handle
      exceptions
        others = 1 ).

    if ( sy-subrc = 0 ).

      " Adding history record on an incident creation event

      record_request_history(
             exporting
               ip_guid = lv_guid
               is_payload = er_entity
               ip_action   = 'C' ).

    else.

      lv_error_text = 'Ошибка сохранения записи: исключительная ситуация'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )



    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--
    "   PART 1
    "   Sending created incident data as HTTP response
    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--

    lo_cl_ags_crm_1o_api->get_orderadm_h( importing es_orderadm_h = ls_orderadm_h ).

    " Generic fields

    er_entity-guid = ls_orderadm_h-guid.
    er_entity-id = ls_orderadm_h-object_id.
    er_entity-cdate = ls_orderadm_h-created_at.
    er_entity-description = ls_orderadm_h-description.

    " Opening an incident by GUID

    clear lo_cl_ags_crm_1o_api.

    call method cl_ags_crm_1o_api=>get_instance
      exporting
        iv_header_guid                = ls_orderadm_h-guid
        iv_process_mode               = 'C'
        iv_process_type               = 'ZSOZ'
      importing
        eo_instance                   = lo_cl_ags_crm_1o_api
      exceptions
        invalid_parameter_combination = 1
        error_occurred                = 2
        others                        = 3.

    if sy-subrc <> 0.

      lv_error_text = 'Внутренняя ошибка приложения'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "  if sy-subrc <> 0

    " Status

    lo_cl_ags_crm_1o_api->get_status( importing ev_user_status = lv_user_status ).
    er_entity-status = lv_user_status.

    select txt30 from tj30t into table lt_status_text where estat = lv_user_status and stsma = 'ZSOZ0001' and spras = sy-langu.

    " Status text

    loop at lt_status_text assigning field-symbol(<ls_status_text>).

      er_entity-statustext = <ls_status_text>-status_text.

    endloop.

    " Priority

    lo_cl_ags_crm_1o_api->get_priority( importing ev_priority = er_entity-priority ).

    " Priority text

    select single txt_long into er_entity-priorityname from scpriot where priority = er_entity-priority and langu = sy-langu.

    " Partners

    clear:
    lt_partner,
    ls_partner.

    lo_cl_ags_crm_1o_api->get_partners( importing et_partner = lt_partner ).

    if lt_partner is not initial.

      loop at lt_partner into ls_partner.

        lv_bp = ls_partner-partner_no.

        " Leading zeroes conversion

        call function 'CONVERSION_EXIT_ALPHA_INPUT'
          exporting
            input  = lv_bp
          importing
            output = lv_bp.

        case ls_partner-ref_partner_fct.

          when 'SLFN0004'. " Executor

            er_entity-executorid = lv_bp.

          when 'SLFN0002'. " Author

            er_entity-cuserid = lv_bp.


          when 'SLFN0003'. " Support group

            er_entity-supportgroupid = lv_bp.

        endcase. " case ls_partner-ref_partner_fct

      endloop. "loop at lt_partner into ls_partner

    endif. "if et_partner is not initial

*    " Searching for custom fields

    select single
      zzfld000017
      zzfld000015
      zzfld00000s
      zzfld00000h
      zzfld000019
      ZZFLD00001A
      zzfld000018
      zzfld000010
      zzfld000011
    into
      ( lv_equipmentid,
        lv_objectid,
        lv_malfunctionid,
        er_entity-leadtime,
        lv_unitid,
        lv_partid,
        lv_departmentid,
        er_entity-leadtimefact,
        er_entity-eventtime
      )
    from crmd_customer_h where guid = ls_orderadm_h-guid.

    er_entity-equipmentid = lv_equipmentid.
    er_entity-objectid = lv_objectid.
    er_entity-unitid = lv_unitid.
    er_entity-partid = lv_partid.
    er_entity-cusername = sy-uname.
    er_entity-malfunctionid = lv_malfunctionid.
    er_entity-departmentid = lv_departmentid.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->INCIDENTSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method incidentset_delete_entity.

    data:
      lv_guid       type crmt_object_guid,
      lt_guid       type crmt_object_guid_tab,
      lv_error_text type bapi_msg.

    " Taking OData key value: incident GUID

    read table it_key_tab into data(ls_key_tab) with key name = 'Guid'.

    lv_guid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_guid is initial.

      lv_error_text = 'Ошибка удаления записи: не задан GUID заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if lv_guid is initial

    clear lt_guid.
    insert lv_guid into table lt_guid.

    " Deleting an incident by GUID

    call function 'CRM_ORDER_DELETE'
      exporting
        it_objects_to_delete  = lt_guid
        iv_no_check           = abap_false
        iv_no_bdoc_send       = abap_true
      exceptions
        single_deletion_error = 1
        deletion_error        = 2
        no_authority          = 3
        others                = 4.


    if ( sy-subrc <> 0 ).

      lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->INCIDENTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_INCIDENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method incidentset_get_entity.

    types: begin of ty_status_text_tt,
             status_text type j_txt30,
           end of ty_status_text_tt.

    data:
      lt_incidents      type standard table of crmd_orderadm_h,
      lv_guid           type crmt_object_guid,
      api_object        type ref to cl_ags_crm_1o_api,
      et_partner        type crmt_partner_external_wrkt,
      ls_partner        type crmt_partner_external_wrk,
      lv_user_status    type crm_j_status,
      lt_status_text    type standard table of ty_status_text_tt,
      lv_bp             type bu_partner,
      lv_equipmentid    type char30,
      lv_objectid       type char30,
      lv_unitid         type char18,
      lv_partid         type zsoz_part_id,
      lt_watchers       type standard table of bu_partner,
      wa_watcher        like line of lt_watchers,
      lv_malfunctionid  type char32,
      lv_solutionid     type char32,
      lv_problemid      type char32,
      lv_prioritytext   type sc_text,
      lv_time_char      type char8,
      lv_date_char      type char8,
      lv_timestamp_char type char20,
      lv_timestamp      type e2ea_timestamp,
      lv_duration_sec   type integer,
      lv_property_id    type char128,
      lv_error_text     type bapi_msg,
      lv_return_code    type sy-subrc.

    " Taking OData key value: incident GUID

    read table it_key_tab into data(ls_key_tab) with key name = 'Guid'.

    lv_guid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_guid is initial.
      lv_error_text = 'Ошибка чтения записи: не задан GUID заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif.

    " Taking key fields from incidents table by incident GUID

    select object_id created_at created_by from crmd_orderadm_h into corresponding fields of table lt_incidents
      where guid = lv_guid.

    " Processing found incident record

    loop at lt_incidents assigning field-symbol(<ls_incident>).

      " Filling output structure

      er_entity-guid = lv_guid.
      er_entity-id = <ls_incident>-object_id.
      er_entity-cdate = <ls_incident>-created_at.
      er_entity-description = <ls_incident>-description.

      " Searching for custom fields

      select single
        zzfld000017
        zzfld000015
        zzfld00000s
        zzfld00000t
        zzfld00000h
        zzfld000018
        zzfld000019
        zzfld00001a
        zzfld00000y
        zzfld00000z
        zzfld000010
        zzfld000011
      into
        ( lv_equipmentid ,
          lv_objectid,
          lv_malfunctionid,
          er_entity-completiontime,
          er_entity-leadtime,
          er_entity-departmentid,
          lv_unitid,
          lv_partid,
          lv_solutionid,
          lv_problemid,
          er_entity-leadtimefact,
          er_entity-eventtime
         )
      from crmd_customer_h where guid = lv_guid.

      " Filling output structure

      er_entity-equipmentid = lv_equipmentid.
      er_entity-objectid = lv_objectid.
      er_entity-malfunctionid = lv_malfunctionid.
      er_entity-solutionid = lv_solutionid.
      er_entity-problemid = lv_problemid.
      er_entity-unitid = lv_unitid.
      er_entity-partid = lv_partid.

      " Adding equipment type

      if lv_equipmentid is not initial.
        er_entity-equipmenttypeid = get_eqpm_type_of_eqpm( lv_equipmentid ).
      endif.

      " Adding object type

      if lv_objectid is not initial.
        er_entity-objecttypeid = get_object_type_of_object( lv_objectid ).
      endif.

      " Adding unit type

      if lv_unitid is not initial.
        er_entity-unittypeid = get_unit_type_of_unit( lv_unitid ).
      endif. " if lv_unitid is not initial

      " Adding part type

      if lv_partid is not initial.
        er_entity-parttypeid = get_part_type_of_type( lv_partid ).
      endif. "   if lv_partid is not initial.


      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      " Searching for request status

      api_object->get_status( importing ev_user_status = lv_user_status ).

      er_entity-status = lv_user_status.

      " Receiving status text

      select txt30 from tj30t into table lt_status_text where estat = lv_user_status and stsma = 'ZSOZ0001' and spras = sy-langu.

      loop at lt_status_text assigning field-symbol(<ls_status_text>).

        er_entity-statustext = <ls_status_text>-status_text.

      endloop.

      " Search for priority

      api_object->get_priority( importing ev_priority = er_entity-priority ).

      clear lv_prioritytext.

      select single txt_long into lv_prioritytext from scpriot where priority = er_entity-priority and langu = sy-langu.

      lv_prioritytext = substring_after( val = lv_prioritytext sub = ':' ).
      condense lv_prioritytext.

      er_entity-priorityname = lv_prioritytext.

      " Search for partners

      api_object->get_partners( importing et_partner = et_partner ).

      if et_partner is not initial.

        loop at et_partner into ls_partner.

          lv_bp = ls_partner-partner_no.

          " Leading zeroes conversion

          call function 'CONVERSION_EXIT_ALPHA_INPUT'
            exporting
              input  = lv_bp
            importing
              output = lv_bp.

          case ls_partner-ref_partner_fct.

              " Executor

            when 'SLFN0004'.

              er_entity-executorid = lv_bp.

              " Author

            when 'SLFN0002'.

              er_entity-cuserid = lv_bp.

              " Support group

            when 'SLFN0003'.

              er_entity-supportgroupid = lv_bp.

              " Watcher

            when 'SLFN0001'.

              clear wa_watcher.

              wa_watcher = lv_bp.
              append wa_watcher to lt_watchers.

          endcase. " case ls_partner-ref_partner_fct

        endloop. "loop at et_partner into ls_partner

      endif. "if et_partner is not initial

      " Adding author user name by Business Partner

      call function 'CRM_ERMS_FIND_USER_FOR_BP'
        exporting
          ev_bupa_no = er_entity-cuserid
        importing
          ev_user_id = er_entity-cusername.

      " Setting watchers watchers

      loop at lt_watchers assigning field-symbol(<ls_watcher>).

        if er_entity-watchers is initial.
          er_entity-watchers = <ls_watcher>.
        else.
          concatenate er_entity-watchers ';' <ls_watcher> into er_entity-watchers .
        endif.

      endloop. " loop at lt_watchers assigning field-symbol(<ls_watcher>)

      " Adding Malfunction text

      er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

      " Adding text description for problem

      er_entity-problemtext = get_prbl_name_by_guid( ip_guid = er_entity-problemid ip_check_authority = abap_true ).

      " Adding text description for solution

      er_entity-solutiontext = get_sltn_name_by_guid( ip_guid = er_entity-solutionid ip_check_authority = abap_true ).

      " Text and type descriptions from ERP

      exec_ext_api_method(
                exporting
                   ip_method             = 'GET_SOZ_INCIDENT_PACKAGE'
                 ip_obj_number         = lv_objectid
                 ip_eqpm_number        = lv_equipmentid
                 ip_unit_number        = lv_unitid
                 ip_part_number        = lv_partid
               importing
                 ep_return_code        = lv_return_code
                 ep_obj_name           = er_entity-objecttext
                 ep_obj_type_num       = er_entity-objecttypeid
                 ep_obj_type_name     = er_entity-objecttypetext
                 ep_eqpm_name          = er_entity-equipmenttext
                 ep_eqpm_type_num      = er_entity-equipmenttypeid
                 ep_eqpm_type_name     = er_entity-equipmenttypetext
                 ep_unit_name          = er_entity-unittext
                 ep_unit_type_num      = er_entity-unittypeid
                 ep_unit_type_name     = er_entity-unittypetext
                 ep_part_desc          = er_entity-parttext
                 ).

      er_entity-parttypeid = get_part_type_of_type( lv_partid ).

      " Adding full name by Business Partner

      er_entity-cuserfullname = get_bp_name1_text( er_entity-cuserid ).

      " Adding executor full name

      er_entity-executorfullname = get_bp_name1_text( er_entity-executorid ).

      " Adding support group text

      select single name_org2 into er_entity-supportgrouptext from but000
         where partner = er_entity-supportgroupid.

      select single name_org2 into er_entity-departmenttext from but000
        where partner = er_entity-departmentid.

      " Getting troubleshooting time

      er_entity-troubleshootingtime = 0.

      " For statuses Withdrawn (E0010) and Confirmed (E0008)  it is a difference between completion timestamp and creation timestamp

      if ( er_entity-status = 'E0008' ) or
        ( er_entity-status = 'E0010' ).

        calc_duration_btw_timestamps(
           exporting
             ip_timestamp_1  = er_entity-cdate
             ip_timestamp_2  = er_entity-completiontime
           importing
             ep_duration = lv_duration_sec ).

      else.

        " For statuses except Withdrawn (E0010) and Confirmed (E0008)  it is a difference between now and creation timestamp

        if ( er_entity-cdate is not initial ).

          lv_time_char  = sy-uzeit.
          lv_date_char = sy-datum.

          concatenate lv_date_char lv_time_char into lv_timestamp_char.
          lv_timestamp = lv_timestamp_char.

          calc_duration_btw_timestamps(
           exporting
             ip_timestamp_1  = er_entity-cdate
             ip_timestamp_2  = lv_timestamp
           importing
             ep_duration = lv_duration_sec ).

        endif. " if ( er_entity-cdate is not initial )

      endif. " if ( er_entity-status = 'E0008' )

      er_entity-troubleshootingtime = lv_duration_sec div 60.

    endloop. " loop at lt_incidents assigning field-symbol(<ls_incident>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->INCIDENTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_INCIDENT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method incidentset_get_entityset.


    types: begin of ty_status_text_tt,
             status_text type j_txt30,
           end of ty_status_text_tt.

    types: begin of ty_partners_tt,
             partner type bu_partner,
           end of ty_partners_tt.

    data:
      ls_entityset             like line of et_entityset,
      lt_incidents             type standard table of crmd_orderadm_h,
      ls_incidents             like line of lt_incidents,
      lv_user_status           type crm_j_status,
      lt_status_text           type standard table of ty_status_text_tt,
      api_object               type ref to cl_ags_crm_1o_api,
      et_partner               type crmt_partner_external_wrkt,
      ls_partner               type crmt_partner_external_wrk,
      lv_bp                    type bu_partner,
      lv_equipmentid           type char30,
      lv_objectid              type char30,
      lv_unitid                type char18,
      lv_partid                type zsoz_part_id,
      lt_watchers              type standard table of bu_partner,
      wa_watcher               like line of lt_watchers,
      lv_prioritytext          type sc_text,
      lv_property_id           type char128,
      lv_include_record        type ac_bool,
      lt_set_filters           type /iwbep/t_mgw_select_option,
      lv_malfunctionid         type char32,
      lv_solutionid            type char32,
      lv_problemid             type char32,
      lt_employer_bp           type standard table of ty_partners_tt,
      lv_error_text            type bapi_msg,
      lv_return_code           type sy-subrc,
      lv_user_department_code  type short_d,
      lv_mlfn_dir_auth         type ac_bool,
      lv_prbl_dir_auth         type ac_bool,
      lv_sltn_dir_auth         type ac_bool,
      lv_e0008_days_to_show    type int2,
      lv_completiontime_offset type timestamp,
      lv_timestamp             type timestamp,
      lv_sys_tzone             type timezone.

    " Filters related variables

    data:
      lt_filter_cdate type /iwbep/t_cod_select_options.

    " Authorizations related variables

    data:
      lt_user_roles            type zsoz_tt_user_roles,
      lv_user_bp               type bu_partner,
      lt_permitted_objects     type zsoz_tt_objects,
      lv_all_objects_permitted type ac_bool,
      lt_filter_object         type range of char30,
      wa_filter_object         like line of lt_filter_object.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    " If roles list is initial or user is only administrator then we produce error

    if ( lt_user_roles is initial ) or ( user_is_only_administrator( lt_user_roles ) eq abap_true ).

      lv_error_text = 'Ошибка: у пользователя отсутствуют необходимые авторизации'.

    endif. " if ( lt_user_roles is initial ) or ( user_is_only_administrator( lt_user_roles ) eq abap_true )

    " Get a BP for current user

    call function 'CRM_ERMS_FIND_BP_FOR_USER'
      exporting
        iv_user_id = sy-uname
      importing
        ev_bupa_no = lv_user_bp.

    " Get processors org unit bp

    if ( user_is_processor( lt_user_roles ) eq abap_true ).

      select partner1 into table lt_employer_bp from but050 where partner2 = lv_user_bp and reltyp = 'BUR010'.

    endif. " if ( user_is_processor( lt_user_roles ) eq abap_true )

    " Authorizations to view custom tables

    lv_mlfn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ).
    lv_prbl_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'R' ).
    lv_sltn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters and primary selection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^


    lt_set_filters = io_tech_request_context->get_filter( )->get_filter_select_options( ).

    "ZZZZZZZZZZZZZZZZZZZZZZZZ new filter

    "data(lo_filter_tree) = io_tech_request_context->get_filter_expression_tree( ).

    "  io_tech_request_context->get_filter_expression_tree( )->mo_filter_parser->get_expression_tree( IMPORTING eo_filter = DATA(expr) ).

    try.
        data(lo_filter_tree) = io_tech_request_context->get_filter_expression_tree( ).
      catch /iwbep/cx_mgw_busi_exception.
    endtry.




    "ZZZZZZZZZZZZZZZZZZZZZZZZ new filter

    " Amount of days to show E0008 status

    lv_e0008_days_to_show = get_zsoz_param_value( 'DAYS_TO_SHOW_E0008' ).


    " Filter by Creation date to speed up selection from DB before final filtering


    lt_filter_cdate = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'CDATE' ).


    " If user is creator, he/she can view incidents on all objects he has in his scope

    if ( user_is_creator( lt_user_roles ) eq abap_true ) or
        ( user_is_only_creator( lt_user_roles ) eq abap_true ).

      " Getting a list of objects, which creator can observe

      lt_permitted_objects = get_objects_of_user_by_attrs( ).

      " Check if user has access to all objects

      read table lt_permitted_objects with key obj_number = 'all' transporting no fields.

      if sy-subrc = 0.

        lv_all_objects_permitted = abap_true.

        "Get user's department code

        get_user_department(
           exporting
              ip_user = sy-uname
              importing
                ep_department_code = lv_user_department_code ).

      else.

        "Preparing objects filter

        loop at lt_permitted_objects assigning field-symbol(<ls_permitted_objects>).

          wa_filter_object-sign = 'I'.
          wa_filter_object-option = 'EQ'.
          wa_filter_object-low = <ls_permitted_objects>.

          append wa_filter_object to lt_filter_object.

        endloop. " loop at lt_permitted_objects assigning field-symbol(<ls_permitted_objects>)

      endif. " if sy-subrc = 0

    endif. "if user_is_creator( lt_user_roles ) eq abap_true


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    select
      guid object_id created_at description created_by
      from crmd_orderadm_h  into  corresponding fields of table lt_incidents
      where
        process_type = 'ZSOZ' and
        created_at in lt_filter_cdate.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Records processing block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    loop at lt_incidents into ls_incidents.

      clear: ls_entityset,
             et_partner.

      " Adding generic incident fields

      ls_entityset-guid = ls_incidents-guid.
      ls_entityset-id = ls_incidents-object_id.
      ls_entityset-cdate = ls_incidents-created_at.
      ls_entityset-description = ls_incidents-description.

      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = ls_incidents-guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      " Getting partners

      clear lt_watchers.

      api_object->get_partners( importing et_partner = et_partner ).

      if et_partner is not initial.

        loop at et_partner into ls_partner.

          lv_bp = ls_partner-partner_no.

          " Leading zeroes conversion

          call function 'CONVERSION_EXIT_ALPHA_INPUT'
            exporting
              input  = lv_bp
            importing
              output = lv_bp.

          case ls_partner-ref_partner_fct.

              " Executor

            when 'SLFN0004'.

              ls_entityset-executorid = lv_bp.

              " Author

            when 'SLFN0002'.

              ls_entityset-cuserid = lv_bp.

              " Support group

            when 'SLFN0003'.

              ls_entityset-supportgroupid = lv_bp.

              " Watcher

            when 'SLFN0001'.

              clear wa_watcher.

              wa_watcher = lv_bp.
              append wa_watcher to lt_watchers.

          endcase.

        endloop. "loop at et_partner into ls_partner

      endif. "if et_partner is not initial

      " Picking custom fields

      select single
        zzfld000017
        zzfld000015
        zzfld00000s
        zzfld00000t
        zzfld00000h
        zzfld000018
        zzfld000019
        zzfld00001a
        zzfld00000y
        zzfld00000z
        zzfld000010
        zzfld000011
      into
      (
        lv_equipmentid ,
        lv_objectid,
        lv_malfunctionid,
        ls_entityset-completiontime,
        ls_entityset-leadtime,
        ls_entityset-departmentid,
        lv_unitid,
        lv_partid,
        lv_solutionid,
        lv_problemid,
        ls_entityset-leadtimefact,
        ls_entityset-eventtime
      )
      from crmd_customer_h where guid = ls_incidents-guid.

      ls_entityset-equipmentid = lv_equipmentid.
      ls_entityset-objectid = lv_objectid.
      ls_entityset-malfunctionid = lv_malfunctionid.
      ls_entityset-solutionid = lv_solutionid.
      ls_entityset-problemid = lv_problemid.
      ls_entityset-unitid = lv_unitid.
      ls_entityset-partid = lv_partid.


      " nununununununununununununununununununununununununununununununnunununununununununununununununununununununununununununununun
      " Authorization Check Start
      " nununununununununununununununununununununununununununununununnunununununununununununununununununununununununununununununun

      " If user is only creator and cannot view all object of department
      " then he/she can view only those which include objects from his scope

      if ( user_is_only_creator( lt_user_roles ) eq abap_true ) and

        (
            ( ( lv_all_objects_permitted eq abap_false ) and ( lv_objectid not in lt_filter_object ) )
                  or
              ( ( lv_all_objects_permitted eq abap_true ) and ( get_org_unit_code_by_bp_num( ls_entityset-departmentid ) ne lv_user_department_code ) )
            ).

*          ( lv_all_objects_permitted eq abap_false ) and
*          ( lv_objectid not in lt_filter_object ).

        continue.

      endif. " if ( user_is_only_creator( lt_user_roles ) eq abap_true )

      " If processor opens the list he/she can only see incidents related to objects of same department

      if ( user_is_processor( lt_user_roles ) eq abap_true ).

        " Check if incident is related to a support group, where processor is working

        read table lt_employer_bp with key partner =  ls_entityset-supportgroupid transporting no fields.

        " Incident is not related to a support group, where processor is working

        if sy-subrc <> 0.

          " User is just a processor

          if (
               ( user_is_creator( lt_user_roles ) eq abap_false ) and
               ( user_is_watcher( lt_user_roles ) eq abap_false ) ).

            " Skipping, as incident not related to support group of processor

            continue.

          endif. " User is just a processor

          " User is creator and processor

          if ( user_is_creator( lt_user_roles ) eq abap_true ) and
            ( user_is_watcher( lt_user_roles ) eq abap_false ) and
            (
            ( ( lv_all_objects_permitted eq abap_false ) and ( lv_objectid not in lt_filter_object ) )
                  or
              ( ( lv_all_objects_permitted eq abap_true ) and ( get_org_unit_code_by_bp_num( ls_entityset-departmentid ) ne lv_user_department_code ) )
            ).

            " Skipping, as creator doesn't have an access to object of incident

            continue.

          endif. " User is creator and processor


          " User is watcher and processor

          if (
              ( user_is_creator( lt_user_roles ) eq abap_false ) and
              ( user_is_watcher( lt_user_roles ) eq abap_true ) and
              not (  line_exists( lt_watchers[ table_line = lv_user_bp ] ) )
            ).

            " Skipping, as watcher is not in a list of watchers of the incident

            continue.

          endif. " User is watcher and processor

          " User is creator, watcher and processor

          if (
               ( user_is_creator( lt_user_roles ) eq abap_false ) and
               ( user_is_watcher( lt_user_roles ) eq abap_true ) and

               ( ( lv_all_objects_permitted eq abap_false ) and  ( lv_objectid not in lt_filter_object ) )
                  or ( ( lv_all_objects_permitted eq abap_true ) and ( get_org_unit_code_by_bp_num( ls_entityset-departmentid ) ne lv_user_department_code ) ) and

               not (  line_exists( lt_watchers[ table_line = lv_user_bp ] ) )
             ).

            " Skipping, as creator doesn't have an access to object of incident
            " Skipping, as watcher is not in a list of watchers of the incident

            continue.

          endif.

        endif. "if sy-subrc <> 0

      endif. " if user_is_processor( lt_roles )

      " Checking if user is only watcher and skipping if he is not in the list of watchers of the incident

      if user_is_only_watcher( lt_user_roles ).

        if not line_exists( lt_watchers[ table_line = lv_user_bp ] ).

          continue.

        endif. " if not line_exists( lt_watchers[ table_line = lv_user_bp ] )

      endif. " if user_is_only_watcher( lt_user_roles )

      " Additional check if user includes creator role and watcher roles, but excludes processor roles

      if ( user_is_creator( lt_user_roles ) eq abap_true ) and
            ( user_is_processor( lt_user_roles ) eq abap_false ) and
              ( user_is_watcher( lt_user_roles )  eq abap_true ).

        " Creator doesn't have an access to object of incident

        if (
            ( ( lv_all_objects_permitted eq abap_false ) and ( lv_objectid not in lt_filter_object ) )
                  or
              ( ( lv_all_objects_permitted eq abap_true ) and ( get_org_unit_code_by_bp_num( ls_entityset-departmentid ) ne lv_user_department_code ) )
            ).

          if not line_exists( lt_watchers[ table_line = lv_user_bp ] ).

            " Skipping, as watcher is not in a list of watchers of the incident

            continue.

          else.

            " Skipping, as creator doesn't have an access to object of incident

            continue.

          endif. " if user_is_watcher( lt_user_roles )
        endif. " if ( ls_entityset-cuserid ne lv_user_bp )
      endif. " if ( user_is_creator( lt_user_roles ) eq abap_true )

      " nununununununununununununununununununununununununununununununnunununununununununununununununununununununununununununununun
      " Authorization Check End
      " nununununununununununununununununununununununununununununununnunununununununununununununununununununununununununununununun

      " Searching for request status

      api_object->get_status( importing ev_user_status = lv_user_status ).


      " Additional filter for E0008 status

      if ( lv_user_status = 'E0008' ) and ( lv_e0008_days_to_show > 0 ).


        data(lv_e0008_days_to_show_seconds) = lv_e0008_days_to_show * 86400.

        call function 'TIMESTAMP_DURATION_ADD'
          exporting
            timestamp_in    = ls_entityset-completiontime
            duration        = lv_e0008_days_to_show_seconds
            unit            = 'S'
          importing
            timestamp_out   = lv_completiontime_offset
          exceptions
            timestamp_error = 1
            others          = 2.

        " Get current timestamp

        call function 'GET_SYSTEM_TIMEZONE'
          importing
            timezone = lv_sys_tzone.

        convert date sy-datum time sy-uzeit
                 into time stamp lv_timestamp time zone lv_sys_tzone.

        if lv_timestamp > lv_completiontime_offset.
          continue.
        endif.


      endif. " if lv_e0008_days_to_show > 0

      ls_entityset-status = lv_user_status.



      " Receiving status text

      select txt30 from tj30t into table lt_status_text where estat = lv_user_status and stsma = 'ZSOZ0001' and spras = sy-langu.

      loop at lt_status_text assigning field-symbol(<ls_status_text>).

        ls_entityset-statustext = <ls_status_text>-status_text.

      endloop.

      " Priority

      api_object->get_priority( importing ev_priority = ls_entityset-priority ).

      clear lv_prioritytext.

      select single txt_long into lv_prioritytext  from scpriot where priority = ls_entityset-priority and langu = sy-langu.

      lv_prioritytext = substring_after( val = lv_prioritytext sub = ':' ).
      condense lv_prioritytext.

      ls_entityset-priorityname = lv_prioritytext.


      " Adding text description for malfunction

      if lv_mlfn_dir_auth eq abap_true.
        ls_entityset-malfunctiontext = get_mlfn_name_by_guid( ip_guid = ls_entityset-malfunctionid ip_check_authority = abap_false ).
      endif.


      " Adding text description for problem

      if lv_prbl_dir_auth eq abap_true.
        ls_entityset-problemtext = get_prbl_name_by_guid( ip_guid = ls_entityset-problemid ip_check_authority = abap_false ).
      endif.
      " Adding text description for solution

      if lv_sltn_dir_auth eq abap_true.
        ls_entityset-solutiontext = get_sltn_name_by_guid( ip_guid = ls_entityset-solutionid ip_check_authority = abap_false ).
      endif.

      " Text and type descriptions from ERP

      exec_ext_api_method(
                exporting
                   ip_method             = 'GET_SOZ_INCIDENT_PACKAGE'
                 ip_obj_number         = lv_objectid
                 ip_eqpm_number        = lv_equipmentid
                 ip_unit_number        = lv_unitid
                 ip_part_number        = lv_partid
               importing
                 ep_return_code        = lv_return_code
                 ep_obj_name           = ls_entityset-objecttext
                 ep_obj_type_num       = ls_entityset-objecttypeid
                 ep_obj_type_name     = ls_entityset-objecttypetext
                 ep_eqpm_name          = ls_entityset-equipmenttext
                 ep_eqpm_type_num      = ls_entityset-equipmenttypeid
                 ep_eqpm_type_name     = ls_entityset-equipmenttypetext
                 ep_unit_name          = ls_entityset-unittext
                 ep_unit_type_num      = ls_entityset-unittypeid
                 ep_unit_type_name     = ls_entityset-unittypetext
                 ep_part_desc          = ls_entityset-parttext
                 ).

      ls_entityset-parttypeid = get_part_type_of_type( lv_partid ).

      " Adding author user name

      ls_entityset-cusername = ls_incidents-created_by.

      " Adding full name by Business Partner

      ls_entityset-cuserfullname = get_bp_name1_text( ls_entityset-cuserid ).

      " Adding executor full name

      ls_entityset-executorfullname = get_bp_name1_text( ls_entityset-executorid ).

      " Adding support group text

      select single name_org2 into ls_entityset-supportgrouptext from but000
         where partner = ls_entityset-supportgroupid.

      " Adding department text

      select single name_org2 into ls_entityset-departmenttext from but000
        where partner = ls_entityset-departmentid.

      " Getting watchers

      loop at lt_watchers assigning field-symbol(<ls_watcher>).

        if ls_entityset-watchers is initial.
          ls_entityset-watchers = <ls_watcher>.
        else.
          concatenate ls_entityset-watchers ';' <ls_watcher> into ls_entityset-watchers .
        endif.

      endloop. " loop at lt_watchers assigning field-symbol(<ls_watcher>)

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Executing filtering
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      if lt_set_filters is not initial.

        clear lv_include_record.

        lv_include_record = exclude_incidents_by_filters( io_tech_request_context  = io_tech_request_context
                                         is_entityset = ls_entityset ).

        if lv_include_record eq abap_false.
          continue.
        endif.

      endif. " if lt_set_filters is not initial

      append ls_entityset to et_entityset.

    endloop. " loop at lt_incidents into ls_incidents


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Executing sorting on whole entity set
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    sort_incidents(
      exporting
        it_order     =   it_order
      changing
        ct_entityset = et_entityset ).


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->INCIDENTSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_INCIDENT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method incidentset_update_entity.

    constants:
      lc_partner_ty_bp type crmt_partner_no_type value 'BP'.

    data:
      lv_guid                   type crmt_object_guid,
      api_object                type ref to cl_ags_crm_1o_api,
      api_object_sd             type ref to cl_ags_crm_1o_api_sd,
      lt_status                 type crmt_status_comt,
      ls_status                 type crmt_status_com,
      lt_text                   type crmt_text_comt,
      ls_text                   type crmt_text_com,
      ls_text_line              type tline,
      lt_text_lines             type comt_text_lines_t,
      lv_user_partner_in        type bu_partner,
      lv_user_partner_out       type crmt_partner_no,
      lv_error_text             type bapi_msg,
      lv_status                 type  crm_j_status,
      lv_timestamp              type timestamp,
      ev_log_handle             type balloghndl,
      lt_partners               type comt_partner_comt,
      ls_partners               type comt_partner_com,
      lt_watchers               type table of bu_partner,
      lv_log_handle             type balloghndl,
      lt_watchers_to_delete     type crmt_partner_external_wrkt,
      lv_unitid                 type char18,
      lv_partid                 type zsoz_part_id,
      lv_malfunctionid          type zsoz_dir_guid,
      lv_malfunctionid_char     type char32,
      lv_malfunction_changed    type char1,
      lv_nullable_action_unitid type char1,
      lv_nullable_action_partid type char1.

    " Authorizations related variables

    data:
          lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    " Only creators and processors can change incidents

    if ( ( user_is_creator( lt_user_roles ) eq abap_false ) and ( user_is_only_creator( lt_user_roles ) eq abap_false ) ) and
        ( user_is_processor( lt_user_roles ) eq abap_false ).

      lv_error_text = 'Ошибка сохранения записи: пользователь не может редактировать заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if user_is_only_watcher( lt_user_roles ) eq abap_true

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Processing block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: incident GUID

    read table it_key_tab into data(ls_key_tab) with key name = 'Guid'.
    lv_guid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_guid is initial.

      lv_error_text = 'Ошибка чтения записи: не задан GUID заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if lv_guid is initial

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Opening an incident by GUID

    call method cl_ags_crm_1o_api=>get_instance
      exporting
        iv_header_guid                = lv_guid
        iv_process_mode               = 'C'
        iv_process_type               = 'ZSOZ'
      importing
        eo_instance                   = api_object
      exceptions
        invalid_parameter_combination = 1
        error_occurred                = 2
        others                        = 3.

    if sy-subrc <> 0.

      lv_error_text = 'Внутренняя ошибка приложения'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "  if sy-subrc <> 0

    " Setting priority

    if er_entity-priority is not initial.

      api_object->set_priority( exporting iv_priority = er_entity-priority ).

    endif. " if er_entity-priority IS NOT INITIAL

    " Setting record Desciption

    if er_entity-description is not initial.

      api_object->set_short_text( exporting iv_short_text = er_entity-description ).

    endif. " if er_entity-description IS INITIAL

    " Setting text note

    if er_entity-note is not initial.

      ls_text-ref_guid = lv_guid.
      ls_text-tdid = 'SU99'.
      ls_text-tdstyle = 'SYSTEM'.        .
      ls_text-mode = 'I'.
      ls_text_line-tdline = er_entity-note.

      append ls_text_line to lt_text_lines.

      ls_text-lines = lt_text_lines.
      append ls_text to lt_text.

      api_object->set_texts(
         exporting
           it_text           =  lt_text
         exceptions
           error_occurred    = 1
           document_locked   = 2
           no_change_allowed = 3
           no_authority      = 4
           others            = 5 ).

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения: невозможно сохранить текст заявки'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

    endif. " if er_entity-note IS NOT INITIAL

    "  Setting partners

    api_object_sd ?= api_object.

    " Creator

    if ( er_entity-cuserid is not initial ).

      lv_user_partner_in = er_entity-cuserid.
      lv_user_partner_out = lv_user_partner_in.

      api_object_sd->set_reporter( iv_partner_number = lv_user_partner_out ).

    endif. " if ( er_entity-cuserid IS NOT INITIAL )

    " Executor

    if ( er_entity-executorid is not initial ).

      lv_user_partner_in = er_entity-executorid.
      lv_user_partner_out = lv_user_partner_in.

      api_object_sd->set_processor( iv_partner_number = lv_user_partner_out ).

    endif. " if ( er_entity-executorid IS NOT INITIAL )

    " Support group

    if ( er_entity-supportgroupid is not initial ).

      lv_user_partner_in = er_entity-supportgroupid.
      lv_user_partner_out = lv_user_partner_in.

      api_object_sd->set_team( iv_partner_number = lv_user_partner_out ).

    endif. " if ( er_entity-executorid IS NOT INITIAL )

    " Setting watchers

    if er_entity-watchers is not initial.

      " Firstly we need to erase watchers set previously

      api_object->get_partners( importing et_partner = lt_watchers_to_delete ).

      if lt_watchers_to_delete is not initial.

        delete lt_watchers_to_delete where partner_fct <> 'SLFN0001'.

        api_object->remove_partners(
        exporting
          it_partner = lt_watchers_to_delete
          ).

      endif. " if lt_watchers_to_delete is not INITIAL

      " Adding new watchers

      split er_entity-watchers at ';' into table lt_watchers.

      loop at lt_watchers assigning field-symbol(<ls_watcher>).

        clear ls_partners.

        ls_partners-ref_guid           = lv_guid.
        ls_partners-ref_kind           = 'A'. " Header
        ls_partners-kind_of_entry      = 'C'. "Entered manually
        ls_partners-no_type            = lc_partner_ty_bp. "'BP'.
        ls_partners-partner_fct        = 'SLFN0001'.
        ls_partners-partner_no         = <ls_watcher>.

        insert ls_partners into table lt_partners.

      endloop.  "loop at lt_watchers ASSIGNING FIELD-SYMBOL(<ls_watcher>)

      " Setting new watchers

      if lt_partners is not initial.

        call method api_object->set_partners
          exporting
            it_partner        = lt_partners
          changing
            cv_log_handle     = lv_log_handle
          exceptions
            document_locked   = 1
            error_occurred    = 2
            no_authority      = 3
            no_change_allowed = 4
            others            = 5.

        if sy-subrc <> 0.

          lv_error_text = 'Внутренняя ошибка приложения: невозможно сохранить данные партнеров'.

          raise exception type /iwbep/cx_mgw_busi_exception
            exporting
              message_container = send_error_response( lv_error_text ).

        endif. "  if sy-subrc <> 0

      endif. " if lt_partners is not INITIAL

    endif. " if er_entity-watchers is not INITIAL

    " Setting Equipment Id

    if er_entity-equipmentid is not initial.

      update crmd_customer_h set zzfld000017 = er_entity-equipmentid where guid = lv_guid.

    endif.

    " Setting Object Id

    if er_entity-objectid is not initial.
      update crmd_customer_h set zzfld000015 = er_entity-objectid where guid = lv_guid.
    endif.

    " Checking in which statuse we are now

    api_object->get_status( importing ev_user_status = lv_status ).

    " Check if part and/or unit was changed so we should put malfunction, problem and solution to null
    " Only for status 'In process'

    if ( lv_status = 'E0002' ).

      " Unit Id nullable operation

      if ( er_entity-unitid is not initial ).

        if ( er_entity-unitid eq 'null' ).

          lv_nullable_action_unitid = 'X'.
          clear lv_unitid.
          update crmd_customer_h set zzfld000019 = lv_unitid where guid = lv_guid.

        else.

          select single  zzfld000019
            into lv_unitid
            from crmd_customer_h where guid = lv_guid.

          if  ( er_entity-unitid ne lv_unitid ).

            lv_nullable_action_unitid = 'X'.
            update crmd_customer_h set zzfld000019 = er_entity-unitid where guid = lv_guid.

          endif. " if ( lv_unitid is not initial )
        endif. " if ( er_entity-unitid is not initial )
      endif. " if ( er_entity-unitid is not initial )


      " Part Id nullable operation

      if ( er_entity-partid is not initial ).

        if ( er_entity-partid eq 'null' ).

          lv_nullable_action_partid = 'X'.

          clear lv_partid.

          update crmd_customer_h set zzfld00001a = lv_partid where guid = lv_guid.

        else.

          select single   zzfld00001a
            into lv_partid
            from crmd_customer_h where guid = lv_guid.

          if  ( er_entity-partid ne lv_partid ) .

            lv_nullable_action_partid = 'X'.

            update crmd_customer_h set zzfld00001a = er_entity-partid where guid = lv_guid.

          endif. " if ( ( lv_unitid is not initial )

        endif. " if ( er_entity-partid eq 'null' )

      endif. "if ( er_entity-partid is not initial )


      " Additional check, if malfunction has been changed

      if ( er_entity-malfunctionid is not initial ).

        select single zzfld00000s
          into lv_malfunctionid_char
          from crmd_customer_h where guid = lv_guid.

        lv_malfunctionid = lv_malfunctionid_char.

        if  ( er_entity-malfunctionid ne lv_malfunctionid ) .

          lv_malfunction_changed = 'X'.

        endif. " if  ( er_entity-malfunctionid ne lv_malfunctionid )

      endif. " if ( er_entity-malfunctionid is not initial )

    endif. " if ( lv_status = 'E0002' )

    " Setting Malfunction Id

    if ( er_entity-malfunctionid is not initial ) or
      ( lv_nullable_action_unitid = 'X' or lv_nullable_action_partid = 'X' ).

      update crmd_customer_h set zzfld00000s = er_entity-malfunctionid where guid = lv_guid.

    endif.

    " Setting department id

    if er_entity-departmentid is not initial.
      update crmd_customer_h set zzfld000018 = er_entity-departmentid where guid = lv_guid.
    endif.

    " Lead time plan

    if er_entity-leadtime is not initial.
      update crmd_customer_h set zzfld00000h = er_entity-leadtime where guid = lv_guid.
    endif.

    " Lead time fact

    if er_entity-leadtimefact is not initial.
      update crmd_customer_h set zzfld000010 = er_entity-leadtimefact where guid = lv_guid.
    endif.

    " Solution

    if ( er_entity-solutionid is not initial ) or
    ( lv_nullable_action_unitid = 'X' or lv_nullable_action_partid = 'X' ) or
     ( lv_malfunction_changed = 'X' ).
      update crmd_customer_h set zzfld00000y = er_entity-solutionid where guid = lv_guid.
    endif.

    " Problem

    if ( er_entity-problemid is not initial ) or
            ( lv_nullable_action_unitid = 'X' or lv_nullable_action_partid = 'X' ) or
      ( lv_malfunction_changed = 'X' ).
      update crmd_customer_h set zzfld00000z = er_entity-problemid where guid = lv_guid.
    endif.

    " Setting  completion time in a final status

    if ( er_entity-status = 'E0008' ) or
      ( er_entity-status = 'E0010' ).

      data lv_sys_tzone type timezone.

      call function 'GET_SYSTEM_TIMEZONE'
        importing
          timezone = lv_sys_tzone.

      convert date sy-datum time sy-uzeit
        into time stamp lv_timestamp time zone lv_sys_tzone.

      " Set completion time

      update crmd_customer_h set zzfld00000t = lv_timestamp where guid = lv_guid.

    endif. " if ( er_entity-status = 'E0008' )

    " Setting statuses


    " Setting to In Process if we are in new and executor is set

    if ( lv_status = 'E0001' ) and ( er_entity-executorid is not initial ).

      ls_status-status = 'E0002'.

    else.

      ls_status-status = er_entity-status.

    endif. " if ( lv_status = 'E0001' ) and ( er_entity-executorid is not initial )

    if ls_status-status is not initial.

      ls_status-ref_guid = lv_guid.
      ls_status-ref_kind = 'A'.
      ls_status-user_stat_proc = 'ZSOZ0001'.
      ls_status-activate = 'X'.

      append ls_status to lt_status.

      api_object->set_status(
        exporting
          it_status             = lt_status
        changing
          cv_log_handle         = ev_log_handle
        exceptions
          document_locked       = 1
          error_occurred        = 2
          no_authority          = 3
          no_change_allowed     = 4
          others                = 5
      ).

    endif. " if ls_status-status is not initial

    if sy-subrc <> 0.

      lv_error_text = 'Внутренняя ошибка приложения: невозможно установить статус заявки'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "  if sy-subrc <> 0

    call method api_object->save(
      changing
        cv_log_handle = ev_log_handle
      exceptions
        others        = 1 ).

    if ( sy-subrc = 0 ).

      " Adding history record on an incident update event

      record_request_history(
             exporting
               ip_guid = lv_guid
               is_payload = er_entity
               ip_action   = 'U' ).

    else.

      lv_error_text = 'Ошибка сохранения записи: исключительная ситуация'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->LEADTIMECALCULAT_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_LEADTIMECALCULATION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method leadtimecalculat_get_entity.


    data: lv_malfunction_guid	   type zsoz_dir_guid,
          lv_departmentid	       type bu_partner,
          lv_priority	           type char1,
          lv_equipmenttypeid     type char18,
          lv_objecttypeid	       type char18,
          lv_parttypeid          type char30,
          lv_unittypeid          type char18,
          lv_date                type sy-datum,
          lv_time                type sy-uzeit,
          lv_sys_tzone           type timezone,
          lv_soz_azs_time        type int4,
          lv_objectid            type char30,
          lv_ext_api_return_code type sy-subrc.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Taking OData key values
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunction_guid = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'DepartmentId'.
    lv_departmentid = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.
    clear ls_key_tab.


    read table it_key_tab into ls_key_tab with key name = 'PriorityId'.
    lv_priority = ls_key_tab-value.
    clear ls_key_tab.

    read table it_key_tab into ls_key_tab with key name = 'ObjectId'.
    lv_objectid = ls_key_tab-value.
    clear ls_key_tab.


    if ( ( lv_malfunction_guid is initial ) or
      ( lv_equipmenttypeid  is initial ) or
      ( lv_departmentid is initial ) or
      ( lv_objecttypeid  is initial ) or
      ( lv_priority is initial ) or
      ( lv_objectid is initial ) ).

      exit.

    endif.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Performing calculation and providing reply
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Get time lag from SOZ_AZS_TIME

    exec_ext_api_method(
             exporting
               ip_method = 'GET_OBJECT_SOZ_AZS_TIME'
               ip_obj_number = lv_objectid
             importing
                 ep_return_code = lv_ext_api_return_code
                 ep_soz_azs_time = lv_soz_azs_time ).

    " Executing calculation method

    call method zcl_zsoz_dpc_ext=>get_sla_times_for_request
      exporting
        ip_malfunction_guid = lv_malfunction_guid
        ip_departmentid     = lv_departmentid
        ip_priority         = lv_priority
        ip_equipmenttypeid  = lv_equipmenttypeid
        ip_objecttypeid     = lv_objecttypeid
        ip_unittypeid       = lv_unittypeid
        ip_parttypeid       = lv_parttypeid
        ip_soz_azs_time     = lv_soz_azs_time
      importing
        ep_lead_date        = lv_date
        ep_lead_time        = lv_time.


    " For now solution only works with RUS05 which is equal for all work days of Service Profile

    if ( ( lv_date is not initial ) and ( lv_time is not initial ) ) .

      call function 'GET_SYSTEM_TIMEZONE'
        importing
          timezone = lv_sys_tzone.

      convert date lv_date time lv_time
           into time stamp data(lv_timestamp) time zone lv_sys_tzone.

      er_entity-leadtime = lv_timestamp.

    endif. "if ( ( lv_date is not initial ) and ( lv_time is not initial ) )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->MALFUNCTIONSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_MALFUNCTION
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method malfunctionset_create_entity.

    data: wa_zsoz_mlfn_dir type zsoz_mlfn_dir,
          lv_error_text    type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    " Checking database level access

    if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Adding new value to database

    if er_entity-value1 is not initial.

      wa_zsoz_mlfn_dir-guid = generate_x16_guid( ).
      wa_zsoz_mlfn_dir-name = er_entity-value1.

      insert zsoz_mlfn_dir from wa_zsoz_mlfn_dir.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка сохранения записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc <> 0 )

    endif. " if er_entity-value1 is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->MALFUNCTIONSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method malfunctionset_delete_entity.

    data: lv_malfunctionid type zsoz_dir_guid,
          lv_error_text    type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.

    lv_malfunctionid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_malfunctionid is initial.

      lv_error_text = 'Ошибка: не задан GUID неисправности'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif.

    " Deletion of the record

    delete from zsoz_mlfn_dir
      where guid = lv_malfunctionid.

    if ( sy-subrc <> 0 ).

      lv_error_text = 'Ошибка удаления записи'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->MALFUNCTIONSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_MALFUNCTION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method malfunctionset_get_entity.

    data:
      ls_key_tab            like line of it_key_tab,
      lt_mlfn_catalogue     type standard table of zsoz_mlfn_dir,
      wa_mlfn_catalogue     type  zsoz_mlfn_dir,
      lv_malfunctionid_char type char32,
      lv_error_text         type bapi_msg.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false

    " Option 1: read by Malfunction
    " Taking OData key value: malfunction GUID

    read table it_key_tab into ls_key_tab with key name = 'MalfunctionId'.

    if ls_key_tab is not initial.

      select guid name into corresponding fields of table lt_mlfn_catalogue
        from zsoz_mlfn_dir
          where guid = ls_key_tab-value.

    else.

      " Option 2: read by Incident
      " Taking OData key value: incident GUID

      read table it_key_tab into ls_key_tab with key name = 'Guid'.

      if ls_key_tab is not initial.

        " Search for incident malfunction by incident GUID

        select single zzfld00000s
          into lv_malfunctionid_char from crmd_customer_h where guid = ls_key_tab-value.

        wa_mlfn_catalogue-guid = lv_malfunctionid_char.

        " select  single name into  wa_mlfn_catalogue-name from zsoz_mlfn_dir where guid = wa_mlfn_catalogue-guid.

        wa_mlfn_catalogue-name = get_mlfn_name_by_guid( ip_guid = wa_mlfn_catalogue-guid ip_check_authority = abap_false ).
        append wa_mlfn_catalogue to lt_mlfn_catalogue.

      endif. " if ls_key_tab is not initial

    endif. " if ls_key_tab is not initial.

    " Filling output structure

    loop at lt_mlfn_catalogue assigning field-symbol(<ls_mlfn_catalogue>).

      er_entity-malfunctionid = <ls_mlfn_catalogue>-guid.
      er_entity-value1 = <ls_mlfn_catalogue>-name.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_mlfn_catalogue>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->MALFUNCTIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_MALFUNCTION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method malfunctionset_get_entityset.

    data:
      ls_entityset              like line of et_entityset,
      lt_mlfn_catalogue         type standard table of zsoz_mlfn_dir,
      lv_equipmenttypeid        type char30,
      lv_unittypeid             type char18,
      lv_parttypeid             type char30,
      lv_equipmentid            type char30,
      lv_objectid               type char30,
      lt_mlfn_guids             type zsoz_tt_dir_guids,
      lt_orderby                type /iwbep/t_mgw_tech_order,
      ls_orderby                type /iwbep/s_mgw_tech_order,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options,
      wa_mlfn_catalogue         type  zsoz_mlfn_dir,
      lt_unittypeid_filter      type range of char18,
      wa_unittypeid_filter      like line of lt_unittypeid_filter,
      lt_parttypeid_filter      type range of char30,
      wa_parttypeid_filter      like line of lt_parttypeid_filter,
      lv_objecttypeid           type char18,
      lv_departmentid           type bu_partner,
      ls_key_tab                like line of it_key_tab,
      lv_error_text             type bapi_msg,
      lv_timeswithgroupingguid  type zsoz_dir_guid.

    field-symbols: <ls_mlfn_catalogue> like line of lt_mlfn_catalogue,
                   <ls_mlfn_guids>     like line of lt_mlfn_guids.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false



    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters and keys collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objectid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'OBJECTID' ).

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'EQUIPMENTTYPEID' ).


    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                              ip_property = 'UNITTYPEID' ).

    if lv_unittypeid is initial.

      read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
      lv_unittypeid = ls_key_tab-value.
      clear ls_key_tab.

    endif. " if lv_unittypeid is initial


    lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'PARTTYPEID' ).

    if lv_parttypeid is initial.

      read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
      lv_parttypeid = ls_key_tab-value.
      clear ls_key_tab.

    endif. " if lv_parttypeid is initial

    " Equipment type id

    if lv_equipmenttypeid is initial.

      read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
      lv_equipmenttypeid = ls_key_tab-value.
      clear ls_key_tab.

    endif. " if lv_equipmenttypeid is initial

    " Object type id

    if lv_objecttypeid is initial.

      read table it_key_tab into ls_key_tab with key name = 'ObjectTypeId'.
      lv_objecttypeid = ls_key_tab-value.
      clear ls_key_tab.

    endif. " if lv_objecttypeid is initial

    " Department id

    if lv_departmentid is initial.

      read table it_key_tab into ls_key_tab with key name = 'DepartmentId'.
      lv_departmentid = ls_key_tab-value.
      clear ls_key_tab.

    endif. " if lv_departmentid is initial

    " TimesWithGrouping Identifier

    read table it_key_tab into ls_key_tab with key name = 'Guid'.
    lv_timeswithgroupingguid = ls_key_tab-value.
    clear ls_key_tab.

    " Preparing additional keys for units and parts

    if lv_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = lv_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if lv_unittypeid is not initial

    if lv_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = lv_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if lv_parttypeid is not initial

    " Search for equipment type

    if lv_equipmenttypeid is initial.

      lv_equipmentid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                          ip_property = 'EQUIPMENTID' ).

      lv_equipmenttypeid = get_eqpm_type_of_eqpm( lv_equipmentid ).

    endif. " if lv_equipmenttypeid is INITIAL




    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Additional filtering by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data collection and processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Option 1: search by object id and equipment type id

    if ( lv_objectid is not initial ) and ( lv_equipmenttypeid is not initial ).

      if ( lt_unittypeid_filter is not initial ) or ( lt_parttypeid_filter is not initial ).

        " Additional filter by units and parts

        select malfunction_guid into table lt_mlfn_guids
          from zsoz_router
          where objectid = lv_objectid and
            equipmenttypeid = lv_equipmenttypeid and
            unittypeid in lt_unittypeid_filter and
            parttypeid in lt_parttypeid_filter.

      else.

        " Search for records with empty units and parts

        select malfunction_guid into table lt_mlfn_guids
            from zsoz_router
            where objectid = lv_objectid and
              equipmenttypeid = lv_equipmenttypeid and
              unittypeid = '' and
              parttypeid = ''.

      endif. " if ( lt_unittypeid_filter is not initial ) or ( lt_parttypeid_filter is not initial )

      loop at lt_mlfn_guids assigning <ls_mlfn_guids>.

        clear wa_mlfn_catalogue.

        select single guid name into corresponding fields of wa_mlfn_catalogue from zsoz_mlfn_dir where guid = <ls_mlfn_guids> and
           name in lt_filter_name_with_cases.

        append wa_mlfn_catalogue to lt_mlfn_catalogue.

      endloop.  " loop at lt_mlfn_guids ASSIGNING FIELD-SYMBOL(<ls_mlfn_guids>)

    else.


      " Option 2: search for malfunctions related to Processing Times dictionary

      if ( lv_timeswithgroupingguid is not initial ).

        select
          child_guid
          into table lt_mlfn_guids
          from zsoz_dict_links where
              parent_guid = lv_timeswithgroupingguid and
          relation_name = 'T2M'.


        loop at lt_mlfn_guids assigning <ls_mlfn_guids>.

          clear wa_mlfn_catalogue.

          select single guid name into corresponding fields of wa_mlfn_catalogue from zsoz_mlfn_dir where guid = <ls_mlfn_guids> and
             name in lt_filter_name_with_cases.

          append wa_mlfn_catalogue to lt_mlfn_catalogue.

        endloop.  " loop at lt_mlfn_guids ASSIGNING FIELD-SYMBOL(<ls_mlfn_guids>)

      else.

        " Option 3: search all malfunctions

        select guid name
          into corresponding fields of table lt_mlfn_catalogue
            from zsoz_mlfn_dir where name in lt_filter_name_with_cases.

      endif.

    endif. "  if ( lv_objectid is not INITIAL ) and ( lv_equipmenttypeid is not INITIAL )

    " Filling output table

    loop at lt_mlfn_catalogue assigning <ls_mlfn_catalogue>.

      ls_entityset-malfunctionid = <ls_mlfn_catalogue>-guid.

      if <ls_mlfn_catalogue>-name is not initial.

        ls_entityset-value1 = <ls_mlfn_catalogue>-name.

      else.

        " select  single name into ls_entityset-value1 from zsoz_mlfn_dir where guid = <ls_mlfn_catalogue>-guid.
        ls_entityset-value1 = get_mlfn_name_by_guid( ip_guid = <ls_mlfn_catalogue>-guid ip_check_authority = abap_false ).

      endif. " if <ls_mlfn_catalogue>-name is not initial

      if lv_timeswithgroupingguid is not initial.
        ls_entityset-timeswithgroupingguid = lv_timeswithgroupingguid.
      endif.

      append ls_entityset to et_entityset.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_mlfn_catalogue>)

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Sorting by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_orderby = io_tech_request_context->get_orderby( ).

    read table lt_orderby into ls_orderby index 1.
    if sy-subrc = 0.
      if ls_orderby-property eq 'VALUE1'.

        if ls_orderby-order eq 'desc'.

          sort et_entityset by value1 descending.

        endif. " if ls_orderby-order eq 'desc'

        if ls_orderby-order eq 'asc'.

          sort et_entityset by value1 ascending.
        endif. " if ls_orderby-order eq 'asc'

      endif.  " IF ls_orderby-property EQ 'RATING'

    endif. " if sy-subrc = 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->MALFUNCTIONSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_MALFUNCTION
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method malfunctionset_update_entity.

    data:
      ls_key_tab       like line of it_key_tab,
      lv_malfunctionid type zsoz_dir_guid,
      lv_error_text    type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: malfunctoin GUID

    read table it_key_tab into ls_key_tab with key name = 'MalfunctionId'.

    if ls_key_tab is not initial.

      lv_malfunctionid  = ls_key_tab-value.

      " Picking update payload

      io_data_provider->read_entry_data( importing es_data = er_entity ).

      " Updating a record in database

      update zsoz_mlfn_dir
         set name = er_entity-value1
         where guid = lv_malfunctionid.

      if sy-subrc <> 0.

        lv_error_text = 'Ошибка обновления записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).
      endif. " if sy-subrc <> 0

    endif. "if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->OBJECTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_OBJECT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method objectset_get_entity.

    data:
      ls_key_tab    like line of it_key_tab,
      lv_obj_number type char30,
      lv_showtype   type char1.

    " Search by object id
    " Taking OData key value: object ID

    read table it_key_tab into ls_key_tab with key name = 'ObjectId'.

    if ls_key_tab is not initial.

      lv_obj_number = ls_key_tab-value.

    else.

      " Search by incident GUID
      " Taking OData key value: incident GUID

      read table it_key_tab into ls_key_tab with key name = 'Guid'.

      if ls_key_tab is not initial.

        " Search for incident object by incident GUID

        select single zzfld000015 into lv_obj_number from crmd_customer_h where guid = ls_key_tab-value.

      endif. " if ls_key_tab is not initial

    endif. " if ls_key_tab is not initial

    if lv_obj_number is not initial.


      " Picking HTTP URL parameter ShowType to understand, if we should include type into output

      lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

      er_entity-objectid = lv_obj_number.
      er_entity-value1 = get_object_details_by_num( lv_obj_number ).

      if lv_showtype = 'X'.

        " Adding object type

        er_entity-objecttypeid = get_object_type_of_object( lv_obj_number ).

      endif. " if lv_showtype = 'X'

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->OBJECTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_OBJECT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method objectset_get_entityset.

    data:
      ls_entityset               like line of et_entityset,
      lv_ext_api_return_code     type sy-subrc,
      lt_objects                 type zsoz_tt_objects,
      lt_permitted_objects       type zsoz_tt_objects,
      lt_permitted_objects_range type   range of char30,
      wa_permitted_objects_range like line of lt_permitted_objects_range,
      lv_showtype                type char1,
      lt_filter_name             type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases  type /iwbep/t_cod_select_options,
      lv_departmentid            type bu_partner,
      lv_org_unit_code           type short_d,
      lv_departmentcode          type char4.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " nunununununununununununununununununununununununununununununun
    " Authorization Check Start
    " nunununununununununununununununununununununununununununununun

    " Get a list of objects, permitted for a user

    lt_permitted_objects = get_objects_of_user_by_attrs( ).

    " Check for all objects access
    " If we have 'all' record detected in attributes, then
    " user can access all objects of a department

    read table lt_permitted_objects with key obj_number = 'all' transporting no fields.

    if sy-subrc = 0.

      " Collecting all objects of a department

      "    lv_departmentid = get_user_department( sy-uname ).


      lv_departmentid = get_user_department(
        exporting
           ip_user = sy-uname
           importing
             ep_department_code = lv_org_unit_code ).

      if ( ( sy-subrc = 0 ) and ( lv_org_unit_code is not initial ) ).

        lv_departmentcode = lv_org_unit_code.

        exec_ext_api_method(
          exporting
            ip_method = 'GET_ALL_OBJECTS'
            ip_department = lv_departmentcode
          importing
              ep_return_code = lv_ext_api_return_code
              et_objects = lt_objects ).

      endif. " if sy-subrc = 0

    else.

      " Collecting all objects and then removing those, which are not permitted for a user

      exec_ext_api_method(
        exporting
          ip_method = 'GET_ALL_OBJECTS'
        importing
            ep_return_code = lv_ext_api_return_code
            et_objects = lt_objects ).

      " Preparing permitted objects range

      loop at lt_permitted_objects assigning field-symbol(<ls_permitted_objects>).

        wa_permitted_objects_range-sign = 'I'.
        wa_permitted_objects_range-option = 'EQ'.
        wa_permitted_objects_range-low = <ls_permitted_objects>.
        append wa_permitted_objects_range to lt_permitted_objects_range.

      endloop.  " loop at lt_permitted_objects ASSIGNING FIELD-SYMBOL(<ls_permitted_objects>)

      " Removing those objects, which are not permitted for a user

      delete lt_objects where obj_number not in lt_permitted_objects_range.

    endif. " if sy-subrc <> 0

    " nunununununununununununununununununununununununununununununun
    " Authorization Check End
    " nunununununununununununununununununununununununununununununun

    if ( lv_ext_api_return_code ne 0 ).

      return.

    endif. " if ( lv_ext_api_return_code NE 0 )

    " Picking HTTP URL parameter ShowType to understand, if we should include type into output

    lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

    loop at lt_objects assigning field-symbol(<ls_object>) where obj_name in lt_filter_name_with_cases.

      ls_entityset-objectid = <ls_object>-obj_number.
      ls_entityset-value1 = <ls_object>-obj_name.

      if lv_showtype = 'X'.

        " Adding object type

        ls_entityset-objecttypeid = get_object_type_of_object( <ls_object>-obj_number ).

      endif. " if lv_showtype = 'X'

      append ls_entityset to et_entityset.

    endloop. " loop at lt_objects ASSIGNING FIELD-SYMBOL(<ls_object>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->OBJECTTYPESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_OBJECTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method objecttypeset_get_entity.

    data:
      ls_key_tab    like line of it_key_tab,
      lv_obj_number type char30.

    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident object id by incident GUID

      select single zzfld000015 into lv_obj_number from crmd_customer_h where guid = ls_key_tab-value.

    endif. " " if ls_key_tab is not initial

    if lv_obj_number is not initial.

      " Adding object type id

      er_entity-objecttypeid = get_object_type_of_object(
           exporting
             ip_objectid = lv_obj_number
           importing
             ep_objecttypename = er_entity-value1 ).


    endif.  " if lv_obj_number is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->OBJECTTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_OBJECTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method objecttypeset_get_entityset.

    data:
      lt_object_types        type zsoz_tt_object_types,
      ls_entityset           like line of et_entityset,
      lv_ext_api_return_code type sy-subrc.

    " Searching for all possible object types

    exec_ext_api_method(
                exporting
                  ip_method = 'GET_ALL_OBJECT_TYPES'
                importing
                    ep_return_code = lv_ext_api_return_code
                    et_object_types = lt_object_types ).

    " Filling output table

    if lv_ext_api_return_code eq 0.

      loop at lt_object_types assigning field-symbol(<ls_object_type>).

        ls_entityset-objecttypeid = <ls_object_type>-obj_type_num.
        ls_entityset-value1 = <ls_object_type>-obj_type_name.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_eqpm_types assigning field-symbol(<ls_eqpm_type>).

    endif. " if lv_ext_api_return_code eq 0


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PARTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_PART
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method partset_get_entity.

    data:

      ls_key_tab             like line of it_key_tab,
      lv_part_id             type zsoz_part_id,
      lt_parts               type zsoz_tt_parts,
      lv_ext_api_return_code type sy-subrc,
      lv_showtype            type char1.


    " Search by incident
    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident part by incident GUID

      select single ZZFLD00001A into lv_part_id from crmd_customer_h where guid = ls_key_tab-value.

    else.

      " Search by part
      " Taking OData key value: part ID

      read table it_key_tab into ls_key_tab with key name = 'PartId'.

      if ls_key_tab is not initial.

        lv_part_id = ls_key_tab-value.

      endif. "  if ls_key_tab is not initial

    endif.

    if ( lv_part_id is not initial ) and ( lv_part_id ne 'null' ) and ( lv_part_id ne ' ' ).

      " Getting part details by number

      exec_ext_api_method(
               exporting
                  ip_method = 'GET_PART_DETAILS_BY_NUMBER'
                  ip_part_number = lv_part_id
               importing
                  ep_return_code = lv_ext_api_return_code
                  et_parts = lt_parts ).

      if ( lv_ext_api_return_code ne 0 ).

        return.

      endif. " if ( lv_ext_api_return_code NE 0 )

      " Picking HTTP URL parameter ShowType to understand, if we should include type into output

      lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

      " Filling output structure

      loop at lt_parts assigning field-symbol(<ls_parts>).

        er_entity-partid = <ls_parts>-part_number.
        er_entity-value1 = <ls_parts>-part_desc.

        " Skipping values with length of 0 or 1 symbols

        if ( strlen( <ls_parts>-part_value  ) > 1 ).

          concatenate er_entity-value1 ':' <ls_parts>-part_value into  er_entity-value1.

        endif. " if ( strlen( <ls_parts>-part_value  ) > 1 )

        " Adding part type

        if lv_showtype = 'X'.

          er_entity-parttypeid = get_part_type_of_type( <ls_parts>-part_number ).

        endif. " if lv_showtype = 'X'
      endloop. " loop at lt_parts ASSIGNING FIELD-SYMBOL(<ls_parts>)
    endif. " if lv_part_id is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PARTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_PART
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method partset_get_entityset.


    data:
      ls_entityset              like line of et_entityset,
      lt_parts                  type zsoz_tt_parts,
      lv_unit_number            type char18,
      lv_ext_api_return_code    type sy-subrc,
      lv_showtype               type char1,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering by unit
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^


    lv_unit_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'UNITID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lv_unit_number is not initial.

      " Search by specific unit

      exec_ext_api_method(
          exporting
             ip_method = 'GET_PARTS_OF_UNIT'
             ip_unit_number = lv_unit_number
          importing
             ep_return_code = lv_ext_api_return_code
             et_parts = lt_parts ).

    else. " Select all available parts

      exec_ext_api_method(
    exporting
       ip_method = 'GET_ALL_PARTS'
    importing
       ep_return_code = lv_ext_api_return_code
       et_parts = lt_parts ).

    endif. " if lv_unit_number is not INITIAL.

    if ( lv_ext_api_return_code ne 0 ).

      return.

    endif. " if ( lv_ext_api_return_code NE 0 )

    " Picking HTTP URL parameter ShowType to understand, if we should include type into output

    lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

    " Filling output table

    loop at lt_parts assigning field-symbol(<ls_parts>) where part_desc in lt_filter_name_with_cases.

      ls_entityset-partid = <ls_parts>-part_number.
      ls_entityset-value1 = <ls_parts>-part_desc.

      " Skipping values with length of 0 or 1 symbols

      if ( strlen( <ls_parts>-part_value  ) > 1 ).
        concatenate ls_entityset-value1 ':' <ls_parts>-part_value into  ls_entityset-value1.
      endif.

      if lv_showtype = 'X'.
        ls_entityset-parttypeid = get_part_type_of_type( <ls_parts>-part_number ).
      endif. " if lv_showtype = 'X'

      append ls_entityset to et_entityset.

    endloop. " loop at lt_parts ASSIGNING FIELD-SYMBOL(<ls_parts>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PARTTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_PARTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method parttypeset_get_entityset.

    data:
      ls_entityset           like line of et_entityset,
      lv_unittypeid          type char18,
      lt_part_types          type zsoz_tt_part_types,
      lv_ext_api_return_code type sy-subrc.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Unit type filter

    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'UNITTYPEID' ).

    if lv_unittypeid is initial.
      return.
    endif.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    " Search for part type of unit type

    exec_ext_api_method(
                    exporting
                      ip_method = 'GET_PART_TYPES_BY_UNIT_TYPE'
                      ip_unit_type   = lv_unittypeid
                    importing
                     ep_return_code  = lv_ext_api_return_code
                     et_part_types = lt_part_types ).

    " Filling output table

    if lv_ext_api_return_code eq 0.

      loop at lt_part_types assigning field-symbol(<ls_part_type>).

        ls_entityset-parttypeid = <ls_part_type>-part_type_name.
        ls_entityset-value1 = <ls_part_type>-part_type_desc.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_part_types ASSIGNING FIELD-SYMBOL(<ls_part_type>)

    endif. " if lv_ext_api_return_code eq 0.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>PREPARE_FILTER_FOR_TEXT_SEARCH
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_FILTER                      TYPE        /IWBEP/T_COD_SELECT_OPTIONS
* | [<-()] ET_FILTER_FOR_SEARCH           TYPE        /IWBEP/T_COD_SELECT_OPTIONS
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method prepare_filter_for_text_search.

    data:

      wa_filter_for_search like line of et_filter_for_search,
      lv_low_temp          type char40,
      lv_first_symbol      type char1.

    " Adding record for search in lower case and first capitalize

    et_filter_for_search = it_filter.

    loop at it_filter assigning field-symbol(<ls_filter>).

      " Record with lower case

      wa_filter_for_search-sign = <ls_filter>-sign.
      wa_filter_for_search-option = <ls_filter>-option.
      lv_low_temp  =  <ls_filter>-low.
      translate lv_low_temp to lower case.
      wa_filter_for_search-low = lv_low_temp.

      append  wa_filter_for_search to et_filter_for_search.

      " Record with first captial

      clear lv_first_symbol.

      wa_filter_for_search-sign = <ls_filter>-sign.
      wa_filter_for_search-option = <ls_filter>-option.
      lv_low_temp  =  <ls_filter>-low.

      lv_first_symbol = lv_low_temp(1).

      if  lv_first_symbol = '*'.
        translate lv_low_temp+1(1) to upper case.
      else.
        translate lv_low_temp+0(1) to upper case.
      endif.

      wa_filter_for_search-low = lv_low_temp.

      append  wa_filter_for_search to et_filter_for_search.

    endloop. " loop at lt_filter ASSIGNING FIELD-SYMBOL(<ls_filter>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PRIORITYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_PRIORITY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method priorityset_get_entityset.

    data:
      ls_entityset       like line of et_entityset,
      lv_prioritytext    type sc_text,
      lv_malfunctionid   type zsoz_dir_guid,
      lv_equipmentid     type char30,
      lv_objecttypeid    type char18,
      lv_objectid        type char30,
      lv_equipmenttypeid type char18,
      lv_priority_filter type c length 1,
      lv_departmentid    type bu_partner.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Searching for a specific priority

    " Malfunction id
    lv_malfunctionid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'MALFUNCTIONID' ).

    if  lv_malfunctionid is not initial.

      " Equipment id

      lv_equipmentid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                 ip_property = 'EQUIPMENTID' ).

      if lv_equipmentid is not initial.

        " Object id

        lv_objectid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                 ip_property = 'OBJECTID' ).

      endif. "if lv_equipmentid is not initial

    endif. " if  lv_malfunctionid is not initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Search for equipment type

    lv_equipmenttypeid = get_eqpm_type_of_eqpm( lv_equipmentid ).

    " Search for object type

    lv_objecttypeid = get_object_type_of_object( lv_objectid ).

    if ( lv_malfunctionid is not initial )
      and ( lv_equipmenttypeid is not initial )
      and ( lv_objecttypeid is not initial ).

      " Selecting records from processing time dictionary

      select single priority departmentid
          into ( lv_priority_filter, lv_departmentid )
          from zsoz_processtime
          where
            malfunction_guid = lv_malfunctionid and
            equipmenttypeid = lv_equipmenttypeid and
            objecttypeid = lv_objecttypeid.

      " Default priority equals 3 ( medium ).

      if sy-subrc <> 0.
        lv_priority_filter = 3.
      endif.


    endif. " if ( lv_malfunctionid is not initial )


    "Get all available CRM priorities list

    data(lt_entityset) = cl_ai_crm_gw_utilities=>get_priorities( ).

    " Filling output table

    loop at lt_entityset assigning field-symbol(<ls_entityset>).

      " Record inclusion check based on filter value

      if ( lv_malfunctionid is not initial )
        and ( lv_equipmenttypeid is not initial )
        and ( lv_objecttypeid is not initial )
        and ( lv_priority_filter is not initial ) .

        if <ls_entityset>-key <> lv_priority_filter.
          continue.
        endif.

      endif. " if ( lv_malfunctionid is not initial )

      " Removing figure and : in the beginning of priority name

      lv_prioritytext = substring_after( val = <ls_entityset>-value sub = ':' ).
      condense lv_prioritytext.

      ls_entityset-priority = <ls_entityset>-key.
      ls_entityset-description = lv_prioritytext.
      ls_entityset-malfunctionid = lv_malfunctionid.
      ls_entityset-equipmentid  = lv_equipmentid.
      ls_entityset-departmentid = lv_departmentid.
      ls_entityset-objectid  = lv_objectid.

      append ls_entityset to et_entityset.

    endloop. " loop at lt_entityset assigning field-symbol(<ls_entityset>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROBLEMSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_PROBLEM
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method problemset_create_entity.

    data: wa_zsoz_prbl_dir type zsoz_prbl_dir,
          lv_error_text    type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).


    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Inserting new problem record

    if er_entity-value1 is not initial.

      wa_zsoz_prbl_dir-guid = generate_x16_guid( ).
      wa_zsoz_prbl_dir-name = er_entity-value1.

      insert zsoz_prbl_dir from wa_zsoz_prbl_dir.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка сохранения записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc <> 0 )

    endif. " if er_entity-value1 is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROBLEMSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method problemset_delete_entity.

    data: lv_problemid  type zsoz_dir_guid,
          lv_error_text type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: problem id

    read table it_key_tab into data(ls_key_tab) with key name = 'ProblemId'.

    lv_problemid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_problemid is initial.

      lv_error_text = 'Ошибка  удаления записи: не задан GUID причины'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if lv_problemid is initial

    " Record deletion

    delete from zsoz_prbl_dir
      where guid = lv_problemid.

    if ( sy-subrc <> 0 ).

      lv_error_text = 'Ошибка удаления записи'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROBLEMSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_PROBLEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method problemset_get_entity.

    data:
      lt_problem_catalogue type standard table of zsoz_prbl_dir,
      wa_problem_catalogue type  zsoz_prbl_dir,
      ls_key_tab           like line of it_key_tab,
      lv_problemid_char    type char32,
      lv_error_text        type bapi_msg.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Search by problem
    " Taking OData key value: problem id

    read table it_key_tab into ls_key_tab with key name = 'ProblemId'.

    if ls_key_tab is not initial.

      select guid name into corresponding fields of table lt_problem_catalogue from zsoz_prbl_dir where guid = ls_key_tab-value.

    else.

      " Search by incident
      " Taking OData key value: incident GUID

      read table it_key_tab into ls_key_tab with key name = 'Guid'.

      if ls_key_tab is not initial.

        " Search for incident problem by incident GUID

        select single zzfld00000z
          into lv_problemid_char from crmd_customer_h where guid = ls_key_tab-value.

        wa_problem_catalogue-guid = lv_problemid_char.

        "   select  single name into  wa_problem_catalogue-name from zsoz_prbl_dir where guid = wa_problem_catalogue-guid.

        wa_problem_catalogue-name = get_prbl_name_by_guid( ip_guid = wa_problem_catalogue-guid ip_check_authority = abap_false ).

        append wa_problem_catalogue to lt_problem_catalogue.

      endif. " if ls_key_tab is not initial

    endif.  " if ls_key_tab is not initial

    " Filling output structure

    loop at lt_problem_catalogue assigning field-symbol(<ls_problem_catalogue>).

      er_entity-problemid = <ls_problem_catalogue>-guid.
      er_entity-value1 = <ls_problem_catalogue>-name.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_problem_catalogue>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROBLEMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_PROBLEM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method problemset_get_entityset.

    data:
      ls_entityset              like line of et_entityset,
      lt_problem_catalogue      type standard table of zsoz_prbl_dir,
      wa_problem_catalogue      type zsoz_prbl_dir,
      lv_objecttypeid           type char18,
      lv_equipmenttypeid        type char30,
      lv_unittypeid             type char18,
      lv_parttypeid             type char30,
      lv_objectid               type char30,
      lv_equipmentid            type char30,
      lv_unitid                 type char18,
      lv_partid                 type zsoz_part_id,
      lt_guids                  type zsoz_tt_dir_guids,
      lv_error_text             type bapi_msg,
      lt_orderby                type /iwbep/t_mgw_tech_order,
      ls_orderby                type /iwbep/s_mgw_tech_order,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    field-symbols <ls_guid> like line of lt_guids.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering collection: name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering collection: object, equipment, unit, part,
    "   object type, equipment type, unit type, part type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objectid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'OBJECTID' ).

    lv_equipmentid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                  ip_property = 'EQUIPMENTID' ).


    lv_unitid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'UNITID' ).

    lv_partid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'PARTID' ).

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                            ip_property = 'OBJECTTYPEID' ).

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                  ip_property = 'EQUIPMENTTYPEID' ).

    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'UNITTYPEID' ).

    lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'PARTTYPEID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  MODE 1: problem search when a user updates an incident
    "
    "  Searching problems by
    "  object, equipment, unit, part
    "  OR
    "  object type, equipment type, unit type, part type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Object, equipment, unit, part

    if ( lv_objectid is not initial ) and
      ( lv_equipmentid is not initial ) and
      ( lv_unitid is not initial ) and
      ( lv_partid is not initial ).

      " Getting problems guids

      call method zcl_zsoz_dpc_ext=>get_root_cause_guids
        exporting
          ip_objectid    = lv_objectid
          ip_equipmentid = lv_equipmentid
          ip_unitid      = lv_unitid
          ip_partid      = lv_partid
          ip_search_type = 'P'
        importing
          et_guids       = lt_guids.

      " Adding problem descriptions

      loop at lt_guids assigning <ls_guid>.

        clear wa_problem_catalogue.

        select single guid name into corresponding fields of wa_problem_catalogue
                from zsoz_prbl_dir where guid = <ls_guid>.

        append wa_problem_catalogue to lt_problem_catalogue.

      endloop. " loop at lt_guids ASSIGNING FIELD-SYMBOL(<ls_guid>)

    else.

      " Object type, equipment type, unit type, part type

      if ( lv_objecttypeid is not initial ) and
        ( lv_equipmenttypeid is not initial ).

        " Getting problems guids

        call method zcl_zsoz_dpc_ext=>get_root_cause_guids
          exporting
            ip_objecttypeid    = lv_objecttypeid
            ip_equipmenttypeid = lv_equipmenttypeid
            ip_unittypeid      = lv_unittypeid
            ip_parttypeid      = lv_parttypeid
            ip_search_type     = 'P'
          importing
            et_guids           = lt_guids.

        " Adding problem descriptions

        loop at lt_guids assigning <ls_guid>.

          clear wa_problem_catalogue.

          select single guid name into corresponding fields of wa_problem_catalogue
                  from zsoz_prbl_dir where guid = <ls_guid>.

          append wa_problem_catalogue to lt_problem_catalogue.

        endloop. " loop at lt_guids ASSIGNING FIELD-SYMBOL(<ls_guid>)

      endif. " if ( lv_objectid is not initial )

    endif.  " if  ( lv_objecttypeid is not initial )

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  MODE 2: problem search when working with dictionary "Root Cause"
    "
    "  Searching problems by object type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                       ip_property = 'OBJECTTYPEID' ).

    if ( lv_objectid is initial ) and
      ( lv_equipmentid is initial ) and
      ( lv_unitid is initial ) and
      ( lv_partid is initial ) and
      ( lv_objecttypeid is not initial ) and
      ( lv_equipmenttypeid is initial ) and
      ( lv_unittypeid is initial ) and
      ( lv_parttypeid is initial ).

      select  w~guid w~name
         from ( zsoz_root_cause as c
         inner join zsoz_prbl_dir as w on w~guid = c~prbl_guid ) into corresponding fields of table lt_problem_catalogue
         where c~objecttypeid = lv_objecttypeid.

    endif. " if ( lv_objectid is initial ) and


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    " MODE 3: problem search when working with dictionary "Problems"
    "
    " Showing all problems without filtering
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( lv_objectid is initial ) and
      ( lv_equipmentid is initial ) and
      ( lv_unitid is initial ) and
      ( lv_partid is initial ) and
      ( lv_objecttypeid is initial ) and
      ( lv_equipmenttypeid is initial ) and
      ( lv_unittypeid is initial ) and
      ( lv_parttypeid is initial ).

      select guid name into corresponding fields of table lt_problem_catalogue
          from zsoz_prbl_dir.

    endif. " if ( lv_malfunctionid is initial )

    " Delete possible duplicate records

    sort lt_problem_catalogue by name.
    delete adjacent duplicates from lt_problem_catalogue.

    " Filling output table

    loop at lt_problem_catalogue assigning field-symbol(<ls_problem_catalogue>) where name in lt_filter_name_with_cases.

      ls_entityset-problemid = <ls_problem_catalogue>-guid.
      ls_entityset-value1 = <ls_problem_catalogue>-name.

      append ls_entityset to et_entityset.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_problem_catalogue>)

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Sorting by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_orderby = io_tech_request_context->get_orderby( ).

    read table lt_orderby into ls_orderby index 1.
    if sy-subrc = 0.
      if ls_orderby-property eq 'VALUE1'.

        if ls_orderby-order eq 'desc'.

          sort et_entityset by value1 descending.

        endif. " if ls_orderby-order eq 'desc'

        if ls_orderby-order eq 'asc'.

          sort et_entityset by value1 ascending.
        endif. " if ls_orderby-order eq 'asc'

      endif.  " IF ls_orderby-property EQ 'RATING'

    endif. " if sy-subrc = 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROBLEMSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_PROBLEM
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method problemset_update_entity.

    data:
      ls_key_tab    like line of it_key_tab,
      lv_problemid  type zsoz_dir_guid,
      lv_error_text type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: problem id

    read table it_key_tab into ls_key_tab with key name = 'ProblemId'.

    if ls_key_tab is not initial.

      lv_problemid  = ls_key_tab-value.

      " Picking update payload

      io_data_provider->read_entry_data( importing es_data = er_entity ).

      " Updating a record

      update zsoz_prbl_dir
         set name = er_entity-value1
         where guid = lv_problemid.

      if sy-subrc <> 0.

        lv_error_text = 'Ошибка обновления записи: исключительная ситуация'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).
      endif. " if sy-subrc <> 0

    endif. " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->PROFILESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_PROFILE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method profileset_get_entityset.

    data:
      ls_entityset    like line of et_entityset,
      lv_user_partner type bu_partner,
      lv_last_name    type char40,
      lv_first_name   type char40,
      lv_middle_name  type char40,
      lv_full_name    type char80,
      lv_sobid        type sobid.

    " Authorizations related variables

    data:
      lt_user_roles             type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Preparing data of a current user

    " Get BP for current user

    call function 'CRM_ERMS_FIND_BP_FOR_USER'
      exporting
        iv_user_id = sy-uname
      importing
        ev_bupa_no = lv_user_partner.

    " Get BP for curent user partner from but000 table if FM giving an error during runtime

    if lv_user_partner is initial.
      select single partner into lv_user_partner from but000 where bu_sort1 = sy-uname.
    endif.

    if lv_user_partner is not initial.

      " Taking additional BP details

      select single  name_last  name_first namemiddle name1_text into (lv_last_name, lv_first_name , lv_middle_name, lv_full_name)
        from but000 where name_org4 <> 'ORG' and partner = lv_user_partner.

      " Filling output table

      ls_entityset-employeeid = lv_user_partner.
      ls_entityset-lastname = lv_last_name.
      ls_entityset-firstname = lv_first_name.
      ls_entityset-middlename = lv_middle_name.
      ls_entityset-fullname = lv_full_name.
      ls_entityset-username = sy-uname.

      " Searching for department details

      ls_entityset-departmentid = get_user_department( sy-uname ).

      " Taking additional BP details

      select single name_org2 into ls_entityset-departmenttext from but000
        where partner = ls_entityset-departmentid.

      " Adding user roles

      loop at lt_user_roles assigning field-symbol(<ls_user_role>).

        concatenate ls_entityset-userroles <ls_user_role>-role into ls_entityset-userroles.

      endloop. " loop at lt_user_roles ASSIGNING FIELD-SYMBOL(<ls_user_role>)

      append ls_entityset to et_entityset.

    endif. " if lv_user_partner is not initial.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>RECORD_REQUEST_HISTORY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IS_PAYLOAD                     TYPE        ZCL_ZSOZ_MPC=>TS_INCIDENT(optional)
* | [--->] IP_ACTION                      TYPE        CHAR1
* | [--->] IP_GUID                        TYPE        CRMT_OBJECT_GUID
* | [--->] IP_FILENAME                    TYPE        STRING(optional)
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method record_request_history.

    data:
      wa_zsoz_req_his_hdr type zsoz_req_his_hdr,
      wa_zsoz_req_his_det type zsoz_req_his_det,
      lt_payload          type table of zcl_zsoz_mpc=>ts_incident,
      lo_descr            type ref to cl_abap_tabledescr,
      lo_type             type ref to cl_abap_datadescr,
      lo_struct           type ref to cl_abap_structdescr,
      lt_components       type cl_abap_structdescr=>component_table,
      lv_x16_guid         type zsoz_dir_guid.

    field-symbols : <lv_value> type any.

    " Adding header record

    lv_x16_guid = generate_x16_guid( ).

    wa_zsoz_req_his_hdr-guid = ip_guid.
    wa_zsoz_req_his_hdr-username = sy-uname.
    wa_zsoz_req_his_hdr-change_date = sy-datum.
    wa_zsoz_req_his_hdr-change_time = sy-uzeit.
    wa_zsoz_req_his_hdr-action = ip_action.
    wa_zsoz_req_his_hdr-change_guid = lv_x16_guid.

    insert  zsoz_req_his_hdr from wa_zsoz_req_his_hdr.

    case ip_action.

      when 'A'.

        " Attachment addition: filling with file name

        clear wa_zsoz_req_his_det.

        wa_zsoz_req_his_det-change_guid = lv_x16_guid.
        wa_zsoz_req_his_det-field = 'FILENAME'.
        wa_zsoz_req_his_det-value = ip_filename.

        insert  zsoz_req_his_det from wa_zsoz_req_his_det.


      when others.

        append is_payload to lt_payload.

        " Preparing table of payload fields names

        lo_descr ?= cl_abap_typedescr=>describe_by_data( lt_payload ).
        lo_type = lo_descr->get_table_line_type( ).
        lo_struct ?= cl_abap_typedescr=>describe_by_name( lo_type->absolute_name ).
        lt_components = lo_struct->get_components( ).

        loop at lt_components assigning field-symbol(<ls_component>).

          assign component <ls_component>-name of structure is_payload to <lv_value>.

          if sy-subrc = 0.

            if <lv_value> is not initial.

              clear wa_zsoz_req_his_det.

              wa_zsoz_req_his_det-change_guid = lv_x16_guid.
              wa_zsoz_req_his_det-field = <ls_component>-name.
              wa_zsoz_req_his_det-value = <lv_value>.

              if <lv_value> is not initial.

                insert zsoz_req_his_det from wa_zsoz_req_his_det.

              endif.

            endif. " if <lv_value> is not initial

          endif. " if sy-subrc = 0

        endloop. " loop at lt_components assigning field-symbol(<ls_component>)

    endcase. " case ip_action

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROOTCAUSESET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROOTCAUSE
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method rootcauseset_create_entity.

    data:
      wa_zsoz_root_cause type zsoz_root_cause,
      lv_error_text      type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Record uniqueness validation

    select count( * ) from zsoz_root_cause
      where
      objecttypeid = er_entity-objecttypeid and
      equipmenttypeid = er_entity-equipmenttypeid and
      unittypeid = er_entity-unittypeid and
      parttypeid = er_entity-parttypeid and
      prbl_guid = er_entity-problemid and
      sltn_guid = er_entity-solutionid.

    " Record is unique

    if sy-subrc <> 0 .

      wa_zsoz_root_cause-record_guid = generate_x16_guid( ).
      wa_zsoz_root_cause-objecttypeid = er_entity-objecttypeid.
      wa_zsoz_root_cause-equipmenttypeid = er_entity-equipmenttypeid.
      wa_zsoz_root_cause-unittypeid = er_entity-unittypeid.
      wa_zsoz_root_cause-parttypeid = er_entity-parttypeid.
      wa_zsoz_root_cause-prbl_guid = er_entity-problemid.
      wa_zsoz_root_cause-sltn_guid = er_entity-solutionid.

      insert zsoz_root_cause from wa_zsoz_root_cause.

      if ( sy-subrc = 0 ).

        " Adding text descriptions

        " Object Type

        er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

        " Equipment Type

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

        " Unit Type

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part Type

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

        " Solution

        " select single name into er_entity-solutiontext from zsoz_sltn_dir where guid = er_entity-solutionid.

        er_entity-solutiontext = get_sltn_name_by_guid( ip_guid = er_entity-solutionid ip_check_authority = abap_true ).

        " Problem

        "select single name into er_entity-problemtext from zsoz_prbl_dir where guid = er_entity-problemid.

        er_entity-problemtext = get_prbl_name_by_guid( ip_guid = er_entity-problemid ip_check_authority = abap_true ).

      endif. " if ( sy-subrc = 0 )

    else.

      " Record is not unique

      lv_error_text = 'Запись с такими значениями уже существует'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if sy-subrc <> 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROOTCAUSESET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method rootcauseset_delete_entity.

    data:
      lv_equipmenttypeid type char18,
      lv_objecttypeid    type char18,
      lv_unittypeid      type char18,
      lv_parttypeid      type char30,
      lv_error_text      type bapi_msg,
      lt_parttypeid      type range of char30,
      wa_parttypeid      like line of lt_parttypeid,
      lt_unittypeid      type range of char18,
      wa_unittypeid      like line of lt_unittypeid,
      lv_problemid       type zsoz_dir_guid,
      lv_solutionid      type zsoz_dir_guid.

    " Authorizations related variables

    data:
      lt_user_roles type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    " Object type id

    read table it_key_tab into data(ls_key_tab) with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Problem id

    read table it_key_tab into ls_key_tab with key name = 'ProblemId'.
    lv_problemid = ls_key_tab-value.
    clear ls_key_tab.

    " Solution id

    read table it_key_tab into ls_key_tab with key name = 'SolutionId'.
    lv_solutionid = ls_key_tab-value.
    clear ls_key_tab.


    if ( lv_objecttypeid is not initial ) and
      ( lv_equipmenttypeid is not initial ) and
      ( lv_problemid is not initial ) and
      ( lv_solutionid is not initial ).

      " Additional filter for unit type

      if lv_unittypeid is not initial.

        wa_unittypeid-sign = 'I'.
        wa_unittypeid-option = 'EQ'.
        wa_unittypeid-low = lv_unittypeid.
        append wa_unittypeid to lt_unittypeid.

      endif. " if lv_unittypeid is not INITIAL

      " Additional filter for part type

      if lv_parttypeid is not initial.

        wa_parttypeid-sign = 'I'.
        wa_parttypeid-option = 'EQ'.
        wa_parttypeid-low = lv_parttypeid.
        append wa_parttypeid to lt_parttypeid.

      endif. " if lv_parttypeid is not INITIAL

      " Record deletion

      delete
        from zsoz_root_cause
      where
        objecttypeid = lv_objecttypeid and
        equipmenttypeid = lv_equipmenttypeid and
        prbl_guid = lv_problemid and
        sltn_guid = lv_solutionid and
        unittypeid in lt_unittypeid and
        parttypeid in lt_parttypeid.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка удаления записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    endif. " if ( lv_malfunctionid is not initial )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROOTCAUSESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROOTCAUSE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method rootcauseset_get_entity.


    data:
      lv_equipmenttypeid type char18,
      lv_objecttypeid    type char18,
      lv_unittypeid      type char18,
      lv_error_text      type bapi_msg,
      lv_parttypeid      type char30,
      wa_zsoz_root_cause type zsoz_root_cause.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    " Object type id

    read table it_key_tab into data(ls_key_tab) with key name = 'ObjectTypeId'.

    lv_objecttypeid = ls_key_tab-value.

    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.

    lv_equipmenttypeid = ls_key_tab-value.

    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.

    lv_unittypeid = ls_key_tab-value.

    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.

    lv_parttypeid = ls_key_tab-value.

    " Fetching data from RootCause dictionary

    select single
      objecttypeid
      equipmenttypeid
      unittypeid
      parttypeid
      prbl_guid
      sltn_guid
   into corresponding fields of wa_zsoz_root_cause
   from zsoz_root_cause where
    objecttypeid = lv_objecttypeid and
    equipmenttypeid = lv_equipmenttypeid and
    unittypeid = lv_unittypeid and
    parttypeid = lv_parttypeid.

    if sy-subrc = 0.

      " Filling output table

      er_entity-objecttypeid =  wa_zsoz_root_cause-objecttypeid.
      er_entity-equipmenttypeid = wa_zsoz_root_cause-equipmenttypeid.
      er_entity-unittypeid = wa_zsoz_root_cause-unittypeid.
      er_entity-parttypeid = wa_zsoz_root_cause-parttypeid.
      er_entity-problemid = wa_zsoz_root_cause-prbl_guid.
      er_entity-solutionid = wa_zsoz_root_cause-sltn_guid.

      " Adding text descriptions

      " Object Type

      er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

      " Equipment Type

      er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

      " Unit Type

      er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

      " Part Type

      er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

      " Solution

      er_entity-solutiontext = get_sltn_name_by_guid( ip_guid = er_entity-solutionid ip_check_authority = abap_true ).

      " Problem

      er_entity-problemtext = get_prbl_name_by_guid( ip_guid = er_entity-problemid ip_check_authority = abap_true ).

    endif. " if sy-subrc <> 0.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROOTCAUSESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_ROOTCAUSE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method rootcauseset_get_entityset.


    data:
      ls_entityset              like line of et_entityset,
      lt_zsoz_root_cause        type standard table of zsoz_root_cause,
      lt_orderby                type /iwbep/t_mgw_tech_order,
      ls_orderby                type /iwbep/s_mgw_tech_order,
      lt_otab                   type abap_sortorder_tab,
      ls_oline                  type abap_sortorder,
      lv_error_text             type bapi_msg,
      lt_filter_objecttypeid    type /iwbep/t_cod_select_options,
      lt_filter_equipmenttypeid type /iwbep/t_cod_select_options,
      lt_filter_unittypeid      type /iwbep/t_cod_select_options,
      lt_filter_parttypeid      type /iwbep/t_cod_select_options,
      lv_prbl_dir_auth          type ac_bool,
      lv_sltn_dir_auth          type ac_bool.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'R' ) eq abap_false

    " Authorizations to view custom tables

    lv_prbl_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_PRBL_DIR' ip_action = 'R' ).
    lv_sltn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ).


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_objecttypeid = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'OBJECTTYPEID' ).

    lt_filter_equipmenttypeid = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'EQUIPMENTTYPEID' ).

    lt_filter_unittypeid = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'UNITTYPEID' ).

    lt_filter_parttypeid = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'PARTTYPEID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Fetching records from RootCause dictionary

    select
       record_guid
       objecttypeid
       equipmenttypeid
       unittypeid
       parttypeid
       prbl_guid
       sltn_guid
    into corresponding fields of table lt_zsoz_root_cause
    from zsoz_root_cause
      where objecttypeid in lt_filter_objecttypeid and
      equipmenttypeid in lt_filter_equipmenttypeid and
      unittypeid in lt_filter_unittypeid and
      parttypeid in lt_filter_parttypeid.

    " Filling output table

    loop at lt_zsoz_root_cause  assigning field-symbol(<ls_zsoz_root_cause>).

      clear ls_entityset.

      ls_entityset-objecttypeid = <ls_zsoz_root_cause>-objecttypeid.
      ls_entityset-equipmenttypeid = <ls_zsoz_root_cause>-equipmenttypeid.
      ls_entityset-unittypeid = <ls_zsoz_root_cause>-unittypeid.
      ls_entityset-parttypeid = <ls_zsoz_root_cause>-parttypeid.
      ls_entityset-problemid = <ls_zsoz_root_cause>-prbl_guid.
      ls_entityset-solutionid = <ls_zsoz_root_cause>-sltn_guid.

      " Adding text descriptions

      " Object Type

      ls_entityset-objecttypetext = get_object_type_details_by_num( <ls_zsoz_root_cause>-objecttypeid ).

      " Equipment Type

      ls_entityset-equipmenttypetext = get_eqpm_type_details_by_num( <ls_zsoz_root_cause>-equipmenttypeid ).

      " Unit Type

      ls_entityset-unittypetext = get_unit_type_details_by_num( <ls_zsoz_root_cause>-unittypeid ).

      " Part Type

      ls_entityset-parttypetext = get_part_type_details_by_num( <ls_zsoz_root_cause>-parttypeid ).

      " Solution

      "select single name into ls_entityset-solutiontext from zsoz_sltn_dir where guid = <ls_zsoz_root_cause>-sltn_guid.




      " Problem

      "select single name into ls_entityset-problemtext from zsoz_prbl_dir where guid = <ls_zsoz_root_cause>-prbl_guid.

      if lv_prbl_dir_auth eq abap_true.
        ls_entityset-problemtext = get_prbl_name_by_guid( ip_guid = <ls_zsoz_root_cause>-prbl_guid ip_check_authority = abap_false ).
      endif.

      append ls_entityset to et_entityset.

    endloop. " loop at lt_zsoz_root_cause  assigning field-symbol(<ls_zsoz_root_cause>)

    " Working with sorting
    " Picking up sorting order

    lt_orderby = io_tech_request_context->get_orderby( ).

    loop at  lt_orderby into ls_orderby.

      if sy-subrc = 0.

        case ls_orderby-property.

          when 'OBJECTTYPEID'.

            " Object type id

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'OBJECTTYPEID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'OBJECTTYPEID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'

            append ls_oline to lt_otab.

          when 'EQUIPMENTTYPEID'.

            " Equipment type id

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'EQUIPMENTTYPEID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'EQUIPMENTTYPEID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'
            append ls_oline to lt_otab.

          when 'UNITTYPEID'.

            " Unit type id

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'UNITTYPEID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'UNITTYPEID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'

          when 'PARTTYPEID'.

            " Part type id

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'PARTTYPEID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'PARTID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'

            append ls_oline to lt_otab.

        endcase. " case ls_orderby-property

      endif. "if sy-subrc = 0

    endloop. " loop at  lt_orderby into ls_orderby

    if lt_otab is not initial.

      sort et_entityset by (lt_otab).

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->`
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROOTCAUSE
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method rootcauseset_update_entity.


    data:
      lv_equipmenttypeid type char18,
      lv_objecttypeid    type char18,
      lv_unittypeid      type char18,
      lv_parttypeid      type char30,
      lv_record_guid     type sysuuid_x16,
      lv_error_text      type bapi_msg,
      lt_parttypeid      type range of char30,
      wa_parttypeid      like line of lt_parttypeid,
      lt_unittypeid      type range of char18,
      wa_unittypeid      like line of lt_unittypeid,
      lv_problemid       type zsoz_dir_guid,
      lv_solutionid      type zsoz_dir_guid.

    " Authorizations related variables

    data:
      lt_user_roles  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROOT_CAUSE' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload
    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Reading Ids

    " Object type id

    read table it_key_tab into data(ls_key_tab) with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Problem id

    read table it_key_tab into ls_key_tab with key name = 'ProblemId'.
    lv_problemid = ls_key_tab-value.
    clear ls_key_tab.

    " Solution id

    read table it_key_tab into ls_key_tab with key name = 'SolutionId'.
    lv_solutionid = ls_key_tab-value.
    clear ls_key_tab.

    if ( lv_objecttypeid is not initial ) and
        ( lv_equipmenttypeid is not initial ) and
         ( lv_problemid is not initial ) and
          ( lv_solutionid is not initial ).

      " Additional filter: unit type

      if lv_unittypeid is not initial.

        wa_unittypeid-sign = 'I'.
        wa_unittypeid-option = 'EQ'.
        wa_unittypeid-low = lv_unittypeid.
        append wa_unittypeid to lt_unittypeid.

      endif. " if lv_unittypeid is not INITIAL

      " Additional filter: part type

      if lv_parttypeid is not initial.

        wa_parttypeid-sign = 'I'.
        wa_parttypeid-option = 'EQ'.
        wa_parttypeid-low = lv_parttypeid.
        append wa_parttypeid to lt_parttypeid.

      endif. " if lv_parttypeid is not INITIAL

      " Fetching record GUID from RootCause dictionary

      select single
       record_guid
         into lv_record_guid
         from zsoz_root_cause where
           objecttypeid = lv_objecttypeid and
           equipmenttypeid = lv_equipmenttypeid and
           prbl_guid = lv_problemid and
           sltn_guid = lv_solutionid and
           unittypeid in lt_unittypeid and
           parttypeid in lt_parttypeid.

      if er_entity-solutionid is initial.
        er_entity-solutionid = lv_solutionid.
      endif.

      if er_entity-problemid is initial.
        er_entity-problemid = lv_problemid.
      endif.

      if lv_record_guid is not initial.

        " Update record by GUID

        update zsoz_root_cause
          set
             sltn_guid = er_entity-solutionid
             prbl_guid = er_entity-problemid
        where
          record_guid = lv_record_guid.

        if ( sy-subrc <> 0 ).

          lv_error_text = 'Ошибка сохранения записи'.

          raise exception type /iwbep/cx_mgw_busi_exception
            exporting
              message_container = send_error_response( lv_error_text ).

        endif. " if ( sy-subrc <> 0 )

        "Adding text descriptions

        " Object Type

        er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

        " Equipment Type

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

        " Unit Type

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part Type

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

        " Solution

        er_entity-solutiontext = get_sltn_name_by_guid( ip_guid = er_entity-solutionid ip_check_authority = abap_true ).

        " Problem
        er_entity-problemtext = get_prbl_name_by_guid( ip_guid = er_entity-problemid ip_check_authority = abap_true ).


      endif. "  if lv_record_guid is not initial.

    endif. " if ( lv_objecttypeid is not initial )


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROUTESSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROUTES
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method routesset_create_entity.

    data:
      wa_zsoz_router       type zsoz_router,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter,
      lv_error_text        type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false


    if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^


    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Additional filter: unit type

    if er_entity-unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = er_entity-unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if er_entity-unittypeidis not initial

    " Additional filter: part type

    if er_entity-parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = er_entity-parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if er_entity-parttypeid is not initial

    " Record uniquiness validation

    select count( * ) from zsoz_router
      where
        malfunction_guid = er_entity-malfunctionid and
        equipmenttypeid = er_entity-equipmenttypeid and
        objectid = er_entity-objectid and
        unittypeid  in lt_unittypeid_filter and
        parttypeid in lt_parttypeid_filter.

    if sy-subrc <> 0 .

      " Record is unique, doing an insert

      wa_zsoz_router-record_guid = generate_x16_guid( ).
      wa_zsoz_router-malfunction_guid = er_entity-malfunctionid.
      wa_zsoz_router-equipmenttypeid = er_entity-equipmenttypeid.
      wa_zsoz_router-objectid = er_entity-objectid.
      wa_zsoz_router-supportgroupid = er_entity-supportgroupid.
      wa_zsoz_router-parttypeid = er_entity-parttypeid.
      wa_zsoz_router-unittypeid = er_entity-unittypeid.

      insert zsoz_router from wa_zsoz_router.

      if ( sy-subrc = 0 ).

        " Adding text to output

        " Malfunction name

        er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

        " Object name

        er_entity-objecttext = get_object_details_by_num( er_entity-objectid ).

        " Equipment type name

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

        " Department name

        select single name_org1 into er_entity-supportgrouptext from but000
            where partner = er_entity-supportgroupid.

        " Unit type name

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part type name

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).


      endif. " if ( sy-subrc = 0 )

    else.

      " Record is not unique

      lv_error_text = 'Запись с такими значениями уже существует'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).


    endif. " if sy-subrc <> 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROUTESSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method routesset_delete_entity.


    data:
      lv_equipmenttypeid   type char18,
      lv_objectid          type char30,
      lv_parttypeid        type char30,
      lv_unittypeid        type char18,
      lv_malfunctionid     type zsoz_dir_guid,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter,
      lv_error_text        type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false


    if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value

    " Malfunctoin id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object id

    read table it_key_tab into ls_key_tab with key name = 'ObjectId'.
    lv_objectid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.

    if ( lv_malfunctionid is not initial ) and
       ( lv_equipmenttypeid is not initial ) and
       ( lv_objectid is not initial ) .

      " Preparing additional keys ranges: unit type id

      if lv_unittypeid is not initial.

        wa_unittypeid_filter-sign = 'I'.
        wa_unittypeid_filter-option = 'EQ'.
        wa_unittypeid_filter-low = lv_unittypeid.
        append wa_unittypeid_filter to lt_unittypeid_filter.

      endif. " if lv_unittypeid is not initial

      " Preparing additional keys ranges: unit type id

      if lv_parttypeid is not initial.

        wa_parttypeid_filter-sign = 'I'.
        wa_parttypeid_filter-option = 'EQ'.
        wa_parttypeid_filter-low = lv_parttypeid.
        append wa_parttypeid_filter to lt_parttypeid_filter.

      endif. " if lv_parttypeid is not initial

      " Deletion from Router dictionary

      delete from zsoz_router where
            malfunction_guid = lv_malfunctionid and
            equipmenttypeid = lv_equipmenttypeid and
            objectid = lv_objectid and
            unittypeid in lt_unittypeid_filter and
            parttypeid in lt_parttypeid_filter.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    endif. " if ( lv_malfunctionid is not initial )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROUTESSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROUTES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method routesset_get_entity.

    data:
      lv_equipmenttypeid   type char18,
      lv_objectid          type char30,
      lv_malfunctionid     type zsoz_dir_guid,
      wa_zsoz_router       type zsoz_router,
      lv_parttypeid        type char30,
      lv_unittypeid        type char18,
      lv_error_text        type bapi_msg,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'R' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    " Malfunction id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object id

    read table it_key_tab into ls_key_tab with key name = 'ObjectId'.
    lv_objectid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.

    " Preparing additional keys range: unit type id

    if lv_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = lv_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if lv_unittypeid is not initial

    " Preparing additional keys range: part type id

    if lv_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = lv_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if lv_parttypeid is not initial

    " Fetching a record from Router dictionary

    select single
         malfunction_guid
         equipmenttypeid
         objectid
         unittypeid
         parttypeid
         supportgroupid
       into corresponding fields of wa_zsoz_router
       from zsoz_router where
         malfunction_guid = lv_malfunctionid and
         equipmenttypeid = lv_equipmenttypeid and
         objectid = lv_objectid and
         unittypeid in lt_unittypeid_filter and
         parttypeid in lt_parttypeid_filter.

    if sy-subrc = 0.

      " Filling output structure

      er_entity-malfunctionid = wa_zsoz_router-malfunction_guid.
      er_entity-equipmenttypeid = wa_zsoz_router-equipmenttypeid.
      er_entity-objectid = wa_zsoz_router-objectid.
      er_entity-unittypeid = wa_zsoz_router-unittypeid.
      er_entity-parttypeid = wa_zsoz_router-parttypeid.
      er_entity-supportgroupid = wa_zsoz_router-supportgroupid.

      " Adding text descriptions

      er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

      " Object name

      er_entity-objecttext = get_object_details_by_num( er_entity-objectid ).

      " Equipment type name

      er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

      " Department name

      select single name_org2 into er_entity-supportgrouptext from but000
           where partner = wa_zsoz_router-supportgroupid.

      " Unit type name

      er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

      " Part type name

      er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

    endif. " if sy-subrc <> 0.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROUTESSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_ROUTES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method routesset_get_entityset.

    data:
      ls_entityset               like line of et_entityset,
      lt_zsoz_router             type standard table of zsoz_router,
      lt_orderby                 type /iwbep/t_mgw_tech_order,
      ls_orderby                 type /iwbep/s_mgw_tech_order,
      lv_ext_api_return_code     type sy-subrc,
      lt_otab                    type abap_sortorder_tab,
      ls_oline                   type abap_sortorder,
      lt_filter_object           type /iwbep/t_cod_select_options,
      lt_filter_equipmenttype    type /iwbep/t_cod_select_options,
      lt_filter_malfunction      type /iwbep/t_cod_select_options,
      lt_objects                 type zsoz_tt_objects,
      lv_error_text              type bapi_msg,
      lt_permitted_objects       type zsoz_tt_objects,
      lt_permitted_objects_range type   range of char30,
      wa_permitted_objects_range like line of lt_permitted_objects_range,
      lv_departmentid            type bu_partner,
      lv_org_unit_code           type short_d,
      lv_departmentcode          type char4,
      lv_mlfn_dir_auth           type ac_bool.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'R' ) eq abap_false

    " Authorizations to view custom tables

    lv_mlfn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_object = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                              ip_property = 'OBJECTID' ).

    lt_filter_equipmenttype = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                          ip_property = 'EQUIPMENTTYPEID' ).

    lt_filter_malfunction = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                          ip_property = 'MALFUNCTIONID' ).



    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  Objects authorization preparation
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Getting list of objects, permitted for a user

    lt_permitted_objects = get_objects_of_user_by_attrs( ).

    " Check for all objects access
    " If we have 'all' record detected in attributes, then
    " user can access all objects of a department

    read table lt_permitted_objects with key obj_number = 'all' transporting no fields.

    if sy-subrc = 0.

      "lv_departmentid = get_user_department( sy-uname ).


      lv_departmentid = get_user_department(
        exporting
           ip_user = sy-uname
           importing
             ep_department_code = lv_org_unit_code ).

      if ( sy-subrc = 0 ) and ( lv_org_unit_code is not initial ).

        " Collecting all objects

        "   select single short into lv_org_unit_code from hrp1000 where objid = lv_departmentid.

        lv_departmentcode = lv_org_unit_code.

        " Collecting all objects of a department

        exec_ext_api_method(
          exporting
            ip_method = 'GET_ALL_OBJECTS'
            ip_department = lv_departmentcode
          importing
              ep_return_code = lv_ext_api_return_code
              et_objects = lt_objects ).


        " Filling range for filtering

        if lv_ext_api_return_code eq 0.

          loop at lt_objects  assigning field-symbol(<ls_objects>).

            wa_permitted_objects_range-sign = 'I'.
            wa_permitted_objects_range-option = 'EQ'.
            wa_permitted_objects_range-low = <ls_objects>.
            append wa_permitted_objects_range to lt_permitted_objects_range.

          endloop.  " loop at lt_permitted_objects ASSIGNING FIELD-SYMBOL(<ls_permitted_objects>)

        endif. " if lv_ext_api_return_code eq 0

      endif. " if sy-subrc = 0

    else.

      " Preparing permitted objects range

      loop at lt_permitted_objects assigning field-symbol(<ls_permitted_objects>).

        wa_permitted_objects_range-sign = 'I'.
        wa_permitted_objects_range-option = 'EQ'.
        wa_permitted_objects_range-low = <ls_permitted_objects>.
        append wa_permitted_objects_range to lt_permitted_objects_range.

      endloop.  " loop at lt_permitted_objects ASSIGNING FIELD-SYMBOL(<ls_permitted_objects>)

    endif. " if sy-subrc <> 0


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Selecting records from Routes dictionary

    select
      malfunction_guid
      equipmenttypeid
      objectid
      unittypeid
      parttypeid
      supportgroupid
    into corresponding fields of table lt_zsoz_router
    from zsoz_router
      where objectid in lt_filter_object and
      equipmenttypeid in lt_filter_equipmenttype and
      malfunction_guid in lt_filter_malfunction and
      objectid in lt_permitted_objects_range.

    " Filling output table

    loop at lt_zsoz_router  assigning field-symbol(<ls_zsoz_router>).

      clear ls_entityset.

      ls_entityset-malfunctionid = <ls_zsoz_router>-malfunction_guid.
      ls_entityset-equipmenttypeid = <ls_zsoz_router>-equipmenttypeid.
      ls_entityset-objectid = <ls_zsoz_router>-objectid.
      ls_entityset-supportgroupid = <ls_zsoz_router>-supportgroupid.
      ls_entityset-unittypeid = <ls_zsoz_router>-unittypeid.
      ls_entityset-parttypeid = <ls_zsoz_router>-parttypeid.

      " Adding text descriptions

      if lv_mlfn_dir_auth eq abap_true.
        ls_entityset-malfunctiontext = get_mlfn_name_by_guid( ip_guid = ls_entityset-malfunctionid ip_check_authority = abap_false ).
      endif.

      " Object name

      ls_entityset-objecttext = get_object_details_by_num( ls_entityset-objectid ).

      " Equipment type name

      ls_entityset-equipmenttypetext = get_eqpm_type_details_by_num( ls_entityset-equipmenttypeid ).

      " Department name

      select single name_org2 into ls_entityset-supportgrouptext from but000
           where partner = <ls_zsoz_router>-supportgroupid.

      " Unit type name

      ls_entityset-unittypetext = get_unit_type_details_by_num( ls_entityset-unittypeid ).

      " Part type name

      ls_entityset-parttypetext = get_part_type_details_by_num( ls_entityset-parttypeid ).

      append ls_entityset to et_entityset.

    endloop. " loop at lt_zsoz_processtime  ASSIGNING FIELD-SYMBOL(<ls_zsoz_router>)

    " Working with sorting

    " Picking up sorting order

    lt_orderby = io_tech_request_context->get_orderby( ).

    loop at  lt_orderby into ls_orderby.

      if sy-subrc = 0.

        case ls_orderby-property.


            " Object id

          when 'OBJECTID'.

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'OBJECTID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'OBJECTID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'

            append ls_oline to lt_otab.

            " Equipment type id

          when 'EQUIPMENTTYPEID'.

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'EQUIPMENTTYPEID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'EQUIPMENTTYPEID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'
            append ls_oline to lt_otab.

            " Malfunction id

          when 'MALFUNCTIONID'.

            if ls_orderby-order eq 'desc'.

              ls_oline-name = 'MALFUNCTIONID'.
              ls_oline-descending = 'X'.

            endif. " if ls_orderby-order eq 'desc'

            if ls_orderby-order eq 'asc'.

              ls_oline-name = 'MALFUNCTIONID'.
              ls_oline-descending = ''.

            endif. " if ls_orderby-order eq 'asc'

            append ls_oline to lt_otab.

        endcase. " case ls_orderby-property
      endif. "if sy-subrc = 0

    endloop. " loop at  lt_orderby into ls_orderby

    if lt_otab is not initial.

      sort et_entityset by (lt_otab).

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->ROUTESSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_ROUTES
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method routesset_update_entity.

    data:
      lv_equipmenttypeid   type char18,
      lv_objectid          type char30,
      lv_malfunctionid     type zsoz_dir_guid,
      lv_record_guid       type sysuuid_x16,
      lv_parttypeid        type char30,
      lv_unittypeid        type char18,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter,
      lv_error_text        type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_ROUTER' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Taking OData key values

    " Malfunction id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object id

    read table it_key_tab into ls_key_tab with key name = 'ObjectId'.
    lv_objectid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.

    " Preparing additional keys ranges: unit type id

    if lv_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = lv_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if lv_unittypeid is not initial

    " Preparing additional keys ranges: part type id

    if lv_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = lv_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if lv_parttypeid is not initial


    if ( lv_malfunctionid is not initial ) and
        ( lv_equipmenttypeid is not initial ) and
          ( lv_objectid is not initial ).

      " Searching for record id

      select single record_guid
        into lv_record_guid from zsoz_router
      where
         malfunction_guid = lv_malfunctionid and
         equipmenttypeid = lv_equipmenttypeid and
         objectid = lv_objectid and
         unittypeid in lt_unittypeid_filter and
         parttypeid in lt_parttypeid_filter.

      if lv_record_guid is not initial.

        if er_entity-malfunctionid is initial.
          er_entity-malfunctionid = lv_malfunctionid.
        endif.

        if er_entity-equipmenttypeid is initial.
          er_entity-equipmenttypeid = lv_equipmenttypeid.
        endif.

        if er_entity-objectid is initial.
          er_entity-objectid = lv_objectid.
        endif.

        if er_entity-unittypeid is initial.
          er_entity-unittypeid = lv_unittypeid.
        endif.

        if er_entity-parttypeid is initial.
          er_entity-parttypeid = lv_parttypeid.
        endif.

        " Performing record update

        update zsoz_router
          set
            malfunction_guid = er_entity-malfunctionid
            equipmenttypeid = er_entity-equipmenttypeid
            objectid = er_entity-objectid
            unittypeid = er_entity-unittypeid
            parttypeid = er_entity-parttypeid
            supportgroupid = er_entity-supportgroupid
        where
          record_guid = lv_record_guid.


        if ( sy-subrc <> 0 ).

          lv_error_text = 'Ошибка сохранения записи: исключительная ситуация'.

          raise exception type /iwbep/cx_mgw_busi_exception
            exporting
              message_container = send_error_response( lv_error_text ).

        endif. " if ( sy-subrc = 0 )

        " Adding text to output

        " Malfunction name

        er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

        " Object name

        er_entity-objecttext = get_object_details_by_num( lv_objectid ).

        " Equipment type name

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( lv_equipmenttypeid ).

        " New department name

        select single name_org2 into er_entity-supportgrouptext from but000
            where partner = er_entity-supportgroupid.

        " Unit type name

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part type name

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

      endif. " if lv_record_guid is not INITIAL
    endif.  " if ( lv_malfunctionid IS NOT INITIAL )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZSOZ_DPC_EXT->SEND_ERROR_RESPONSE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_ERROR_TEXT                  TYPE        BAPI_MSG
* | [<-()] EP_MSG                         TYPE REF TO /IWBEP/IF_MESSAGE_CONTAINER
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method send_error_response.

    call method /iwbep/if_mgw_conv_srv_runtime~get_message_container
      receiving
        ro_message_container = ep_msg.

    call method ep_msg->add_message_text_only
      exporting
        iv_msg_type = /iwbep/cl_cos_logger=>error
        iv_msg_text = ip_error_text.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SOLUTIONSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_SOLUTION
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method solutionset_create_entity.


    data: wa_zsoz_sltn_dir type zsoz_sltn_dir,
          lv_error_text    type bapi_msg.


    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Performing insert into solutions dictionary

    if er_entity-value1 is not initial.

      wa_zsoz_sltn_dir-guid = generate_x16_guid( ).
      wa_zsoz_sltn_dir-name = er_entity-value1.

      insert zsoz_sltn_dir from wa_zsoz_sltn_dir.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка сохранения записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc <> 0 )

    endif. " if er_entity-value1 is not initial


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SOLUTIONSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method solutionset_delete_entity.

    data: lv_solutionid type zsoz_dir_guid,
          lv_error_text type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: solution id

    read table it_key_tab into data(ls_key_tab) with key name = 'SolutionId'.

    lv_solutionid = ls_key_tab-value.

    " Leaving method in case guid is initial

    if lv_solutionid is initial.

      lv_error_text = 'Не задан ID принятой меры'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif.

    " Deletion by solution id

    delete from zsoz_sltn_dir
      where guid = lv_solutionid.

    if ( sy-subrc <> 0 ).

      lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.


      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SOLUTIONSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_SOLUTION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method solutionset_get_entity.

    data:
      lt_solution_catalogue type standard table of zsoz_sltn_dir,
      wa_solution_catalogue type  zsoz_sltn_dir,
      ls_key_tab            like line of it_key_tab,
      lv_error_text         type bapi_msg,
      lv_solutionid_char    type char32.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Search by solution
    " Taking OData key value: solution id

    read table it_key_tab into ls_key_tab with key name = 'SolutionId'.

    if ls_key_tab is not initial.

      select guid name into corresponding fields of table lt_solution_catalogue from zsoz_sltn_dir where guid = ls_key_tab-value.

    else.

      " Search by incident
      " Taking OData key value: incident GUID

      read table it_key_tab into ls_key_tab with key name = 'Guid'.

      if ls_key_tab is not initial.

        " Search for incident solution by incident GUID

        select single zzfld00000y
          into lv_solutionid_char from crmd_customer_h where guid = ls_key_tab-value.

        wa_solution_catalogue-guid = lv_solutionid_char.

        wa_solution_catalogue-name = get_sltn_name_by_guid( ip_guid = wa_solution_catalogue-guid ip_check_authority = abap_false ).

        append wa_solution_catalogue to lt_solution_catalogue.

      endif. " if ls_key_tab is not initial

    endif. "  if ls_key_tab is not initial


    " Filling output structure

    loop at lt_solution_catalogue assigning field-symbol(<ls_solution_catalogue>).

      er_entity-solutionid = <ls_solution_catalogue>-guid.
      er_entity-value1 = <ls_solution_catalogue>-name.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_solution_catalogue>)



  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SOLUTIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_SOLUTION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method solutionset_get_entityset.

    data:
      ls_entityset              like line of et_entityset,
      lt_solution_catalogue     type standard table of zsoz_sltn_dir,
      wa_solution_catalogue     type zsoz_sltn_dir,
      lv_objecttypeid           type char18,
      lv_equipmenttypeid        type char30,
      lv_unittypeid             type char18,
      lv_parttypeid             type char30,
      lv_objectid               type char30,
      lv_equipmentid            type char30,
      lv_unitid                 type char18,
      lv_partid                 type zsoz_part_id,
      lt_guids                  type zsoz_tt_dir_guids,
      lv_error_text             type bapi_msg,
      lt_orderby                type /iwbep/t_mgw_tech_order,
      ls_orderby                type /iwbep/s_mgw_tech_order,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    field-symbols <ls_guid> like line of lt_guids.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'R' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .



    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filtering collection: object, equipment, unit, part,
    "   object type, equipment type, unit type, part type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objectid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'OBJECTID' ).

    lv_equipmentid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                  ip_property = 'EQUIPMENTID' ).


    lv_unitid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'UNITID' ).

    lv_partid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'PARTID' ).

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                          ip_property = 'OBJECTTYPEID' ).

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                  ip_property = 'EQUIPMENTTYPEID' ).


    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'UNITTYPEID' ).

    lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'PARTTYPEID' ).


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  MODE 1: solution search when a user updates an incident
    "
    "  Searching solutions by
    "  object, equipment, unit, part
    "  OR
    "  object type, equipment type, unit type, part type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Object, equipment, unit, part

    if ( lv_objectid is not initial ) and
      ( lv_equipmentid is not initial ) and
      ( lv_unitid is not initial ) and
      ( lv_partid is not initial ).

      " Getting solutions guids

      call method zcl_zsoz_dpc_ext=>get_root_cause_guids
        exporting
          ip_objectid    = lv_objectid
          ip_equipmentid = lv_equipmentid
          ip_unitid      = lv_unitid
          ip_partid      = lv_partid
          ip_search_type = 'S'
        importing
          et_guids       = lt_guids.

      " Adding solution descriptions

      loop at lt_guids assigning <ls_guid>.

        clear wa_solution_catalogue.

        select single guid name into corresponding fields of wa_solution_catalogue
                from zsoz_sltn_dir where guid = <ls_guid>.

        append wa_solution_catalogue to lt_solution_catalogue.

      endloop. " loop at lt_guids ASSIGNING FIELD-SYMBOL(<ls_guid>)

    else.

      " Object type, equipment type, unit type, part type

      if ( lv_objecttypeid is not initial ) and
     ( lv_equipmenttypeid is not initial ).

        " Getting problems guids

        call method zcl_zsoz_dpc_ext=>get_root_cause_guids
          exporting
            ip_objecttypeid    = lv_objecttypeid
            ip_equipmenttypeid = lv_equipmenttypeid
            ip_unittypeid      = lv_unittypeid
            ip_parttypeid      = lv_parttypeid
            ip_search_type     = 'S'
          importing
            et_guids           = lt_guids.

        loop at lt_guids assigning <ls_guid>.

          clear wa_solution_catalogue.

          select single guid name into corresponding fields of wa_solution_catalogue
                  from zsoz_sltn_dir where guid = <ls_guid>.

          append wa_solution_catalogue to lt_solution_catalogue.

        endloop. " loop at lt_guids ASSIGNING FIELD-SYMBOL(<ls_guid>)

      endif. " if ( lv_objectid is not initial )

    endif.  " if  ( lv_objecttypeid is not initial )

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  MODE 2: solution search when working with dictionary "Root Cause"
    "
    "  Searching problems by object type
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                       ip_property = 'OBJECTTYPEID' ).

    if ( lv_objectid is initial ) and
      ( lv_equipmentid is initial ) and
      ( lv_unitid is initial ) and
      ( lv_partid is initial ) and
      ( lv_objecttypeid is not initial ) and
      ( lv_equipmenttypeid is initial ) and
      ( lv_unittypeid is initial ) and
      ( lv_parttypeid is initial ).

      select  w~guid w~name
         from ( zsoz_root_cause as c
         inner join zsoz_sltn_dir as w on w~guid = c~sltn_guid ) into corresponding fields of table lt_solution_catalogue
         where c~objecttypeid = lv_objecttypeid.

    endif. " if ( lv_objectid is initial ) and


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    " MODE 3: solution search when working with dictionary "Solutions"
    "
    " Showing all solutions without filtering
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( lv_objectid is initial ) and
      ( lv_equipmentid is initial ) and
      ( lv_unitid is initial ) and
      ( lv_partid is initial ) and
      ( lv_objecttypeid is initial ) and
      ( lv_equipmenttypeid is initial ) and
      ( lv_unittypeid is initial ) and
      ( lv_parttypeid is initial ).

      select guid name into corresponding fields of table lt_solution_catalogue
          from zsoz_sltn_dir.

    endif. " if ( lv_objectid is initial ) and

    " Delete possible duplicate records

    sort lt_solution_catalogue by name.
    delete adjacent duplicates from lt_solution_catalogue.

    " Filling output table

    loop at lt_solution_catalogue assigning field-symbol(<ls_solution_catalogue>) where name in lt_filter_name_with_cases.

      ls_entityset-solutionid = <ls_solution_catalogue>-guid.
      ls_entityset-value1 = <ls_solution_catalogue>-name.

      append ls_entityset to et_entityset.

    endloop. " loop at lt_mlfn_catalogue ASSIGNING FIELD-SYMBOL(<ls_solution_catalogue>)

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Sorting by name
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_orderby = io_tech_request_context->get_orderby( ).

    read table lt_orderby into ls_orderby index 1.
    if sy-subrc = 0.
      if ls_orderby-property eq 'VALUE1'.

        if ls_orderby-order eq 'desc'.

          sort et_entityset by value1 descending.

        endif. " if ls_orderby-order eq 'desc'

        if ls_orderby-order eq 'asc'.

          sort et_entityset by value1 ascending.
        endif. " if ls_orderby-order eq 'asc'

      endif.  " IF ls_orderby-property EQ 'RATING'

    endif. " if sy-subrc = 0


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SOLUTIONSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_SOLUTION
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method solutionset_update_entity.


    data:
      ls_key_tab    like line of it_key_tab,
      lv_solutionid type zsoz_dir_guid,
      lv_error_text type bapi_msg.


    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.



    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_SLTN_DIR' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key value: solution id

    read table it_key_tab into ls_key_tab with key name = 'SolutionId'.

    if ls_key_tab is not initial.

      lv_solutionid  = ls_key_tab-value.

      " Picking update payload

      io_data_provider->read_entry_data( importing es_data = er_entity ).

      " Updating a record

      update zsoz_sltn_dir
         set name = er_entity-value1
         where guid = lv_solutionid.

      if sy-subrc <> 0.

        lv_error_text = 'Ошибка обновления записи: исключительная ситуация'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).
      endif. " if sy-subrc <> 0


    endif. " if ls_key_tab is not initial


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>SORT_INCIDENTS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [<-->] CT_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_INCIDENT
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method sort_incidents.

    data: ls_order     type /iwbep/s_mgw_sorting_order,
          lt_order_tab type abap_sortorder_tab,
          ls_order_tab type abap_sortorder.

    " Default is recent creation date on top

    if it_order is initial.
      sort  ct_entityset  by cdate descending.
      return.
    endif.

    loop at it_order into ls_order.

      if ls_order-order = 'desc'.
        ls_order_tab-descending = abap_true.
      else.
        ls_order_tab-descending = abap_false.
      endif.

      ls_order_tab-astext = abap_true.

      case ls_order-property .

        when 'Cdate'.
          ls_order_tab-astext = abap_false.
          ls_order_tab-name = 'CDATE'.
        when 'Id'.
          ls_order_tab-astext = abap_false.
          ls_order_tab-name = 'ID'.

        when 'PriorityName'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'PRIORITYNAME'.

        when 'Status'.

          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'STATUSTEXT'.

        when 'LeadTime'.
          ls_order_tab-astext = abap_false.
          ls_order_tab-name = 'LEADTIME'.

        when 'CuserSet-FullName' or 'CuserFullName'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'CUSERFULLNAME'.

        when 'DepartmentSet-Name' or 'DepartmentText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'DEPARTMENTTEXT'.

        when 'ObjectSet-Value1' or 'ObjectText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'OBJECTTEXT'.

        when 'EquipmentSet-Value1' or 'EquipmentText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'EQUIPMENTTEXT'.

        when 'MalfunctionSet-Value1' or 'MalfunctionText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'MALFUNCTIONTEXT'.

        when 'SupportGroupSet-Name' or 'SupportgroupText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'SUPPORTGROUPTEXT'.

        when 'ProblemSet-Value1' or 'ProblemText'.
          ls_order_tab-astext = abap_true.
          ls_order_tab-name = 'PROBLEMTEXT'.


        when others.

      endcase.

      append ls_order_tab to lt_order_tab.
      clear:

        ls_order_tab,ls_order.

    endloop.

    try.
        sort ct_entityset by (lt_order_tab).
      catch cx_sy_dyn_table_ill_comp_val.
    endtry.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->STATUSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_STATUS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method statusset_get_entityset.

    types: begin of ty_status_tt,

             status_code type  j_estat,
             status_text type j_txt30,
           end of ty_status_tt.

    data:
      ls_entityset   like line of et_entityset,
      lt_status      type standard table of ty_status_tt,
      lv_guid        type crmt_object_guid,
      lv_user_status type crm_j_status,
      lv_error_text  type bapi_msg,
      api_object     type ref to cl_ags_crm_1o_api.


    " Authorizations related variables

    data: lt_user_roles  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_guid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'REFGUID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if lv_guid is not initial.

      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.



      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      " Searching for incident's status

      api_object->get_status( importing ev_user_status = lv_user_status ).

    endif. "  if lv_guid is not initial

    " Selecting all available statuses for SOZ

    select estat txt30 from tj30t into table lt_status where stsma = 'ZSOZ0001' and spras = sy-langu.

    " Looping through all available statuses to understand which we should put to output

    loop at lt_status assigning field-symbol(<ls_status>).

      case lv_user_status.

        when 'E0002'.

          " Skipping first and last statuses if we are In Process

          if ( <ls_status>-status_code eq 'E0008' ) or ( <ls_status>-status_code eq 'E0001' ).
            continue.
          endif. " if ( <ls_status>-status_code eq 'E0008' ) or ( <ls_status>-status_code eq 'E0001' )

        when 'E0003'.

          " Skipping New and Withdrawn if we are in Completed

          if ( <ls_status>-status_code eq 'E0001' ) or ( <ls_status>-status_code eq 'E0010' ).
            continue.
          endif. " if ( <ls_status>-status_code eq 'E0001' ) or ( <ls_status>-status_code eq 'E0010' )

        when 'E0001'.

          " For creator in status New we display only Confirmed

          if ( user_is_creator( lt_user_roles ) eq abap_true ) or
            ( user_is_only_creator( lt_user_roles ) eq abap_true ).

            if ( <ls_status>-status_code ne 'E0008' ).
              continue.
            endif.

          else.

            " If status is New then skipping New and Confirmed and Customer Action

            if ( <ls_status>-status_code eq 'E0003' ) or ( <ls_status>-status_code eq 'E0008' ).
              continue.
            endif.


          endif. "if ( user_is_creator( lt_user_roles ) eq abap_true )

        when 'E0010'.

          " If withdrawn then skipping New and Customer Action

          if ( <ls_status>-status_code eq 'E0010' ) or ( <ls_status>-status_code eq 'E0001' ) or ( <ls_status>-status_code eq 'E0003' ).
            continue.
          endif.

      endcase. " case lv_user_status

      " Filling output table

      ls_entityset-statusid =  <ls_status>-status_code.
      ls_entityset-statustext =  <ls_status>-status_text.

      append ls_entityset to et_entityset.

    endloop.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SUPPORTTEAMSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_SUPPORTGROUP
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method supportteamset_get_entity.

    data:
      ls_key_tab    like line of it_key_tab,
      api_object    type ref to cl_ags_crm_1o_api,
      et_partner    type crmt_partner_external_wrkt,
      ls_partner    type crmt_partner_external_wrk,
      lv_bp         type bu_partner,
      lv_guid       type crmt_object_guid,
      lv_error_text type bapi_msg.

    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      lv_guid = ls_key_tab-value.

      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.

      if sy-subrc <> 0.

        lv_error_text = 'Внутренняя ошибка приложения'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. "  if sy-subrc <> 0

      " Taking partners list

      api_object->get_partners( importing et_partner = et_partner ).

      if et_partner is not initial.

        loop at et_partner into ls_partner.

          lv_bp = ls_partner-partner_no.

          " Leading zeroes conversion

          call function 'CONVERSION_EXIT_ALPHA_INPUT'
            exporting
              input  = lv_bp
            importing
              output = lv_bp.

          " Taking support group as partner function SLFN0003

          if  ( ls_partner-ref_partner_fct = 'SLFN0003' ).

            er_entity-partner = lv_bp.

            " Taking additional BP details

            select single name_org2 into er_entity-name from but000
                      where partner = er_entity-partner.

          endif. " if  ( ls_partner-ref_partner_fct = 'SLFN0003' )

        endloop. "loop at et_partner into ls_partner

      endif. "if et_partner is not initial

    endif. " if ls_key_tab is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->SUPPORTTEAMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_SUPPORTGROUP
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method supportteamset_get_entityset.


    data:
      ls_entityset              like line of et_entityset,
      lv_malfunctionid          type zsoz_dir_guid,
      lv_equipmenttypeid        type char18,
      lv_objectid               type char30,
      lv_parttypeid             type char30,
      lv_unittypeid             type char18,
      lt_unittypeid_filter      type range of char18,
      wa_unittypeid_filter      like line of lt_unittypeid_filter,
      lt_parttypeid_filter      type range of char30,
      wa_parttypeid_filter      like line of lt_parttypeid_filter,
      lv_supportgroup_head_unit type sobid,
      lt_supportgroup_units     type table of swhactor,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options,
      lv_user_department        type bu_partner,
      lv_employer_code          type short_d,
      lt_supportgroup_struc     type standard table of  struc,
      lv_structure_code         type short_d,
      lt_selected_objid         type standard table of realo,
      wa_selected_objid         type realo,
      lv_error_text             type bapi_msg.

    field-symbols <ls_supportgroup_units> like line of lt_supportgroup_units.

    " Authorizations related variables

    data: lt_user_roles                  type zsoz_tt_user_roles,
          lt_top_visible_org_unit_code_p type  zsoz_tt_org_struct_codes.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.
    "    et_top_visible_org_unit_code_p = lt_top_visible_org_unit_code_p.

    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--
    "   MODE 1
    "
    "   Searching a route from Routes dictionary (on-the-fly mode)
    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Searching for a Route: filtering Solution by Malfunction Id,
    "   Equipment Type Id, Object Id, Unit Type Id and Part Id
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_malfunctionid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'MALFUNCTIONID' ).

    if lv_malfunctionid is not initial.

      lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'EQUIPMENTTYPEID' ).

      if lv_equipmenttypeid is not initial.

        lv_objectid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                     ip_property = 'OBJECTID' ).


        " Reading addtional possible filters

        lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                     ip_property = 'UNITTYPEID' ).

        lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                     ip_property = 'PARTTYPEID' ).

        " Additional keys ranges: unit type id

        if lv_unittypeid is not initial.

          wa_unittypeid_filter-sign = 'I'.
          wa_unittypeid_filter-option = 'EQ'.
          wa_unittypeid_filter-low = lv_unittypeid.
          append wa_unittypeid_filter to lt_unittypeid_filter.

        endif. " if lv_unittypeid is not initial

        " Additional keys ranges: part type id

        if lv_parttypeid is not initial.

          wa_parttypeid_filter-sign = 'I'.
          wa_parttypeid_filter-option = 'EQ'.
          wa_parttypeid_filter-low = lv_parttypeid.
          append wa_parttypeid_filter to lt_parttypeid_filter.

        endif. " if lv_parttypeid is not initial

      endif. "if lv_equipmenttypeid is not initial

    endif. " if lv_malfunctionid is not initial


    if ( lv_malfunctionid is not initial )
    and ( lv_equipmenttypeid is not initial )
    and ( lv_objectid is not initial ).

      " Selecting support group from Routes dictionary

      select single supportgroupid into ls_entityset-partner from zsoz_router
         where
          malfunction_guid = lv_malfunctionid and
          equipmenttypeid = lv_equipmenttypeid and
          objectid = lv_objectid and
          unittypeid in lt_unittypeid_filter and
          parttypeid in lt_parttypeid_filter.


      if sy-subrc = 0.

        " Adding support group name

        select single name_org2 into ls_entityset-name from but000
          where partner = ls_entityset-partner.

        " Filling rest of the fields

        ls_entityset-malfunctionid = lv_malfunctionid.
        ls_entityset-equipmenttypeid = lv_equipmenttypeid.
        ls_entityset-objectid = lv_objectid.
        ls_entityset-unittypeid = lv_unittypeid.
        ls_entityset-parttypeid = lv_parttypeid.

        " Filling output table

        append ls_entityset to et_entityset.

        " Exiting as output dataset has been prepared

        return.

      endif.

    endif. " if ( lv_malfunctionid IS NOT INITIAL )...

    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--
    "   MODE 2
    "
    "   Not a Route search: simple request
    "--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/----/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--/\/--

    if ( lv_malfunctionid is initial )
    and ( lv_equipmenttypeid is initial )
    and ( lv_objectid is initial ).

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Get user department and it's code
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      if user_is_administrator( lt_user_roles ) eq abap_false.


        lv_user_department = get_user_department(
          exporting
             ip_user = sy-uname
          importing
              ep_department_code = lv_employer_code ).

*        if lt_top_visible_org_unit_code_p is initial.
*
*          " If user is not a processor, we take a code of his department
*
*          lv_user_department = get_user_department( sy-uname ).
*
*          select single short into lv_employer_code from hrp1000 where objid = lv_user_department.
*
*        else.
*
*          " If user is a processor, we select which department he's responsible for
*
*          read table lt_top_visible_org_unit_code_p into data(wa_top_visible_org_unit_code_p) index 1.
*
*          if sy-subrc = 0.
*            lv_employer_code = get_processor_responsibility( wa_top_visible_org_unit_code_p-code ).
*          endif.
*
*        endif." if et_top_visible_org_unit_code_p is initial

      endif. " if user_is_only_creator( lt_user_roles ) eq abap_true


      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Searching for a BPs from Org Structure maintained as parameter
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      " Filtering by name

      lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                        ip_property = 'NAME' ).

      lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .


      " Picking parameter value up to get support group head unit

      lv_supportgroup_head_unit = get_zsoz_param_value( 'SUP_GROUPS_HEAD_UNIT' ).

      if lv_supportgroup_head_unit is initial.

        lv_error_text = 'Не найдено значение параметра SUP_GROUPS_HEAD_UNIT'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if lv_supportgroup_head_unit is initial

      " Selecting org structure (units lower than SUP_GROUPS_HEAD_UNIT)

      call function 'RH_STRUC_GET'
        exporting
          act_otype      = 'O'
          act_objid      = lv_supportgroup_head_unit
          act_wegid      = 'B002'
        tables
          result_struc   = lt_supportgroup_struc
        exceptions
          no_plvar_found = 1
          no_entry_found = 2
          others         = 3.

      if sy-subrc eq 0.

        " Removing head records not related to a user department

        loop at lt_supportgroup_struc assigning field-symbol(<ls_supportgroup_struc>) where level = 2.

          clear:
            lv_structure_code,
            wa_selected_objid.

          select single short into lv_structure_code  from hrp1000 where objid = <ls_supportgroup_struc>-objid.

          " Check if structure code includes user department code

          if user_is_administrator( lt_user_roles ) eq abap_false.

            search lv_structure_code for lv_employer_code.

          endif. " if user_is_administrator( lt_user_roles ) eq abap_false

          if sy-subrc = 0.

            wa_selected_objid = <ls_supportgroup_struc>-objid.

            append wa_selected_objid to lt_selected_objid.

          endif. " if sy-subrc = 0.

        endloop. " loop at lt_supportgroup_struc assigning field-symbol(<ls_supportgroup_struc>) where level = 2.

        " Adding sub-elements

        loop at lt_selected_objid assigning field-symbol(<ls_selected_objid>).

          clear lt_supportgroup_units.

          if <ls_supportgroup_units> is assigned.
            unassign <ls_supportgroup_units>.
          endif.

          " Search for sub-elements

          call function 'RH_STRUC_GET'
            exporting
              act_otype      = 'O'
              act_objid      = <ls_selected_objid>
              act_wegid      = 'B002'
            tables
              result_tab     = lt_supportgroup_units
            exceptions
              no_plvar_found = 1
              no_entry_found = 2
              others         = 3.

          if sy-subrc eq 0.

            loop at lt_supportgroup_units assigning <ls_supportgroup_units>.

              " Take a code of current org structure element

              select single sobid into ls_entityset-partner from hrp1001 where objid = <ls_supportgroup_units>-objid and sclas = 'BP'.

              if sy-subrc = 0.

                select single name_org2 into ls_entityset-name from but000
                 where partner = ls_entityset-partner.

              endif. " if sy-subrc = 0

              append ls_entityset to et_entityset.

            endloop. " loop at lt_supportgroup_units assigning field-symbol(<ls_supportgroup_units>)

          endif. " if sy-subrc eq 0

        endloop.  "loop at lt_selected_objid ASSIGNING FIELD-SYMBOL(<ls_selected_objid>)

        delete et_entityset where name not in lt_filter_name_with_cases .

      endif. "if sy-surc eq 0.

    endif. " if ( lv_malfunctionid is initial )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TEXTSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method textset_create_entity.

    data(lo_message_container) = /iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

    " Executing standard ITSM method

    cl_ai_crm_gw_text=>textset_create_entity_action(
      exporting
        iv_entity_name               =  iv_entity_name
        iv_entity_set_name           =  iv_entity_set_name
        iv_source_name               =  iv_source_name
        it_key_tab                   =  it_key_tab                      " table for name value pairs
        io_tech_request_context      =  io_tech_request_context
        it_navigation_path           =  it_navigation_path              " table of navigation paths
        io_data_provider             =  io_data_provider                " MGW Entry Data Provider
        io_message_container   =       lo_message_container
      importing
        er_entity                    =   er_entity  " Returning data
    ).

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TEXTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_TEXT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method textset_get_entityset.

    data: lt_entityset    type zcl_zsoz_mpc=>tt_text,
          ls_entityset    like line of et_entityset,
          lv_user_partner type bu_partner,lv_name_last  type char40,
          lv_name_first   type char40,
          lv_namemiddle   type char40.

    " Executing standard ITSM method

    cl_ai_crm_gw_text=>textset_get_entityset(
      exporting
        iv_entity_name               =  iv_entity_name
        iv_entity_set_name           =  iv_entity_set_name
        iv_source_name               =  iv_source_name
        it_filter_select_options     =  it_filter_select_options        " Table of select options
        is_paging                    =  is_paging                       " Paging structure
        it_key_tab                   =  it_key_tab                      " Table for name value pairs
        it_navigation_path           =  it_navigation_path              " Table of navigation paths
        it_order                     =  it_order                        " The sorting order
        iv_filter_string             =  iv_filter_string                " Table for name value pairs
        iv_search_string             =  iv_search_string
        io_tech_request_context      =  io_tech_request_context
      importing
        et_entityset                 =  lt_entityset             " Returning data
        es_response_context          =  es_response_context
    ).

    " Filling output table

    loop at lt_entityset assigning field-symbol(<ls_entityset>).

      " Removing <br> tags

      replace all occurrences of '<br>' in <ls_entityset>-text with ' '.

      ls_entityset = <ls_entityset>.

      " Replacing USER_TEXT

      " Get BP for user , who added text

      call function 'CRM_ERMS_FIND_BP_FOR_USER'
        exporting
          iv_user_id = <ls_entityset>-tdfuser
        importing
          ev_bupa_no = lv_user_partner.

      " Get BP for curent user partner from but000 table if FM giving an error during runtime

      if lv_user_partner is initial.
        select single partner into lv_user_partner from but000 where bu_sort1 = <ls_entityset>-tdfuser.
      endif.

      " Picking names up

      select single name_last name_first namemiddle into (lv_name_last, lv_name_first, lv_namemiddle)
          from but000 where name_org4 <> 'ORG' and partner = lv_user_partner.

      concatenate lv_name_last lv_name_first lv_namemiddle into ls_entityset-user_text separated by space.


      append ls_entityset to et_entityset.

    endloop. " loop at lt_entityset assigning field-symbol(<ls_entityset>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESSET_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TIMES
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timesset_create_entity.

    data:
      wa_zsoz_processtime type zsoz_processtime,
      lv_error_text       type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Record uniqueness  validation

    select count( * ) from zsoz_processtime
      where
        malfunction_guid = er_entity-malfunctionid and
        equipmenttypeid = er_entity-equipmenttypeid and
        objecttypeid = er_entity-objecttypeid and
        departmentid = er_entity-departmentid and
        unittypeid = er_entity-unittypeid and
        parttypeid = er_entity-parttypeid.

    " Record is unique

    if sy-subrc <> 0 .

      " Inserting new record

      wa_zsoz_processtime-malfunction_guid = er_entity-malfunctionid.
      wa_zsoz_processtime-equipmenttypeid = er_entity-equipmenttypeid.
      wa_zsoz_processtime-departmentid = er_entity-departmentid.
      wa_zsoz_processtime-objecttypeid = er_entity-objecttypeid.
      wa_zsoz_processtime-rtlowhour = er_entity-rtlowhour.
      wa_zsoz_processtime-rtmiddlehour = er_entity-rtmiddlehour.
      wa_zsoz_processtime-rthighhour = er_entity-rthighhour.
      wa_zsoz_processtime-rtveryhighhour = er_entity-rtveryhighhour.
      wa_zsoz_processtime-ltlowhour = er_entity-ltlowhour.
      wa_zsoz_processtime-ltmiddlehour = er_entity-ltmiddlehour.
      wa_zsoz_processtime-lthighhour = er_entity-lthighhour.
      wa_zsoz_processtime-ltveryhighhour = er_entity-ltveryhighhour.
      wa_zsoz_processtime-priority = er_entity-priority.
      wa_zsoz_processtime-unittypeid = er_entity-unittypeid.
      wa_zsoz_processtime-parttypeid = er_entity-parttypeid.

      insert zsoz_processtime from wa_zsoz_processtime.

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "  Adding text descriptions
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      if ( sy-subrc = 0 ).

        " Malfunction name

        er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

        " Equipment type name

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

        " Department name

        select single name_org2 into er_entity-departmenttext from but000
          where partner = er_entity-departmentid.

        " Object Type name

        er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

        " Unit Type

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part Type

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

      else.

        lv_error_text = 'Ошибка сохранения записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    else.

      " Record is not unique

      lv_error_text = 'Запись с такими значениями уже существует'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if sy-subrc <> 0

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESSET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timesset_delete_entity.

    data:
      lv_objecttypeid    type char18,
      lv_equipmenttypeid type char18,
      lv_malfunctionid   type zsoz_dir_guid,
      lv_departmentid    type bu_partner,
      lt_parttypeid      type range of char30,
      wa_parttypeid      like line of lt_parttypeid,
      lt_unittypeid      type range of char18,
      wa_unittypeid      like line of lt_unittypeid,
      lv_unittypeid      type char18,
      lv_parttypeid      type char30,
      lv_error_text      type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    " Malfunction id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object type id

    read table it_key_tab into ls_key_tab with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Department id

    read table it_key_tab into ls_key_tab with key name = 'DepartmentId'.
    lv_departmentid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.
    clear ls_key_tab.

    if ( lv_malfunctionid is not initial ) and
       ( lv_equipmenttypeid is not initial ) and
       ( lv_objecttypeid is not initial ) and
       ( lv_departmentid is not initial ).

      " Adding additinal key range: unit type id

      if lv_unittypeid is not initial.

        wa_unittypeid-sign = 'I'.
        wa_unittypeid-option = 'EQ'.
        wa_unittypeid-low = lv_unittypeid.
        append wa_unittypeid to lt_unittypeid.

      endif. " if lv_unittypeid is not INITIAL

      " Adding additinal key range: part type id

      if lv_parttypeid is not initial.

        wa_parttypeid-sign = 'I'.
        wa_parttypeid-option = 'EQ'.
        wa_parttypeid-low = lv_parttypeid.
        append wa_parttypeid to lt_parttypeid.

      endif. " if lv_parttypeid is not INITIAL

      " Deleting a record

      delete from zsoz_processtime where
            malfunction_guid = lv_malfunctionid and
            equipmenttypeid = lv_equipmenttypeid and
            departmentid = lv_departmentid and
            objecttypeid = lv_objecttypeid and
            unittypeid in lt_unittypeid and
            parttypeid in lt_parttypeid.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    endif. "  if ( lv_malfunctionid is not initial )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TIMES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timesset_get_entity.

    data:
      lv_objecttypeid      type char18,
      lv_equipmenttypeid   type char18,
      lv_malfunctionid     type zsoz_dir_guid,
      lv_departmentid      type bu_partner,
      wa_zsoz_processtime  type zsoz_processtime,
      lv_error_text        type bapi_msg,
      lv_parttypeid        type char30,
      lv_unittypeid        type char18,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'R' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    " Malfunction id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object type id

    read table it_key_tab into ls_key_tab with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Department id

    read table it_key_tab into ls_key_tab with key name = 'DepartmentId'.
    lv_departmentid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.

    " Preparing additional key range: unit type id

    if lv_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = lv_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if lv_unittypeid is not initial

    " Preparing additional key range: part type id

    if lv_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = lv_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if lv_parttypeid is not initial

    " Selecting a record from Process Times dictionary

    select single
      malfunction_guid
      equipmenttypeid
      departmentid
      objecttypeid
      unittypeid
      parttypeid
      rtlowhour
      rtmiddlehour
      rthighhour
      rtveryhighhour
      ltlowhour
      ltmiddlehour
      lthighhour
      ltveryhighhour
      priority
    into corresponding fields of wa_zsoz_processtime
    from zsoz_processtime where
      malfunction_guid = lv_malfunctionid and
      equipmenttypeid = lv_equipmenttypeid and
      departmentid = lv_departmentid and
      objecttypeid = lv_objecttypeid and
      unittypeid in lt_unittypeid_filter and
      parttypeid in lt_parttypeid_filter.

    if sy-subrc = 0.

      " Filling output structure

      er_entity-malfunctionid = wa_zsoz_processtime-malfunction_guid.
      er_entity-equipmenttypeid = wa_zsoz_processtime-equipmenttypeid.
      er_entity-departmentid = wa_zsoz_processtime-departmentid.
      er_entity-objecttypeid = wa_zsoz_processtime-objecttypeid.
      er_entity-rtlowhour = wa_zsoz_processtime-rtlowhour.
      er_entity-rtmiddlehour = wa_zsoz_processtime-rtmiddlehour.
      er_entity-rthighhour = wa_zsoz_processtime-rthighhour.
      er_entity-rtveryhighhour = wa_zsoz_processtime-rtveryhighhour.
      er_entity-ltlowhour = wa_zsoz_processtime-ltlowhour.
      er_entity-ltmiddlehour = wa_zsoz_processtime-ltmiddlehour.
      er_entity-lthighhour = wa_zsoz_processtime-lthighhour.
      er_entity-ltveryhighhour = wa_zsoz_processtime-ltveryhighhour.
      er_entity-priority = wa_zsoz_processtime-priority.
      er_entity-unittypeid = wa_zsoz_processtime-unittypeid.
      er_entity-parttypeid = wa_zsoz_processtime-parttypeid.


    endif. " if sy-subrc = 0


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Text descriptions
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Malfunction name

    er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

    " Equipment type name

    er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

    " Department name

    select single name_org2 into er_entity-departmenttext from but000
            where partner = wa_zsoz_processtime-departmentid.

    " Object Type name

    er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

    " Unit Type

    er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

    " Part Type

    er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_TIMES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timesset_get_entityset.

    data:
      ls_entityset        like line of et_entityset,
      lv_error_text       type bapi_msg,
      lt_zsoz_processtime type standard table of zsoz_processtime,
      lv_objecttypeid     type char18,
      lv_equipmenttypeid  type char18,
      lv_malfunctionid    type zsoz_dir_guid,
      lv_parttypeid       type char30,
      lv_unittypeid       type char18,
      lv_mlfn_dir_auth    type ac_bool.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'R' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'R' ) eq abap_false

    " Authorizations to view custom tables

    lv_mlfn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'OBJECTTYPEID' ).

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'EQUIPMENTTYPEID' ).

    lv_malfunctionid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'MALFUNCTIONID' ).

    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                ip_property = 'UNITTYPEID' ).

    lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                ip_property = 'PARTTYPEID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Selecting all records from Process Times dictionary

    select
      malfunction_guid
      equipmenttypeid
      departmentid
      objecttypeid
      unittypeid
      parttypeid
      rtlowhour
      rtmiddlehour
      rthighhour
      rtveryhighhour
      ltlowhour
      ltmiddlehour
      lthighhour
      ltveryhighhour
      priority
    into corresponding fields of table lt_zsoz_processtime
    from zsoz_processtime.

    loop at lt_zsoz_processtime  assigning field-symbol(<ls_zsoz_processtime>).

      " Performing filtering

      if lv_objecttypeid is not initial.
        if ( <ls_zsoz_processtime>-objecttypeid <> lv_objecttypeid ).
          continue.
        endif.
      endif. " if lv_objecttypeid_filter is not initial

      if lv_equipmenttypeid is not initial.
        if ( <ls_zsoz_processtime>-equipmenttypeid <> lv_equipmenttypeid ).
          continue.
        endif.
      endif. " if lv_equipmnettypeid_filter is not initial

      if lv_malfunctionid is not initial.
        if ( <ls_zsoz_processtime>-malfunction_guid <> lv_malfunctionid ).
          continue.
        endif.
      endif. " if lv_malfunctionid_filter is not initial

      if lv_unittypeid is not initial.
        if ( <ls_zsoz_processtime>-unittypeid <> lv_unittypeid ).
          continue.
        endif.
      endif. " if lv_unittypeid is not initial

      if lv_parttypeid is not initial.
        if ( <ls_zsoz_processtime>-parttypeid <> lv_parttypeid ).
          continue.
        endif.
      endif. " if lv_parttypeid is not initial

      clear ls_entityset.

      " Filling output table

      ls_entityset-malfunctionid = <ls_zsoz_processtime>-malfunction_guid.
      ls_entityset-equipmenttypeid = <ls_zsoz_processtime>-equipmenttypeid.
      ls_entityset-departmentid = <ls_zsoz_processtime>-departmentid.
      ls_entityset-objecttypeid = <ls_zsoz_processtime>-objecttypeid.
      ls_entityset-rtlowhour = <ls_zsoz_processtime>-rtlowhour.
      ls_entityset-rtmiddlehour = <ls_zsoz_processtime>-rtmiddlehour.
      ls_entityset-rthighhour = <ls_zsoz_processtime>-rthighhour.
      ls_entityset-rtveryhighhour = <ls_zsoz_processtime>-rtveryhighhour.
      ls_entityset-ltlowhour = <ls_zsoz_processtime>-ltlowhour.
      ls_entityset-ltmiddlehour = <ls_zsoz_processtime>-ltmiddlehour.
      ls_entityset-lthighhour = <ls_zsoz_processtime>-lthighhour.
      ls_entityset-ltveryhighhour = <ls_zsoz_processtime>-ltveryhighhour.
      ls_entityset-priority = <ls_zsoz_processtime>-priority.
      ls_entityset-unittypeid = <ls_zsoz_processtime>-unittypeid.
      ls_entityset-parttypeid = <ls_zsoz_processtime>-parttypeid.

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Text descriptions
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      " Malfunction name

      if lv_mlfn_dir_auth eq abap_true.
        ls_entityset-malfunctiontext = get_mlfn_name_by_guid( ip_guid = ls_entityset-malfunctionid ip_check_authority = abap_true ).
      endif.
      " Equipment type name

      ls_entityset-equipmenttypetext = get_eqpm_type_details_by_num( ls_entityset-equipmenttypeid ).

      " Department name

      select single name_org2 into ls_entityset-departmenttext from but000
              where partner = <ls_zsoz_processtime>-departmentid.

      " Object Type name

      ls_entityset-objecttypetext = get_object_type_details_by_num( ls_entityset-objecttypeid ).

      " Unit Type

      ls_entityset-unittypetext = get_unit_type_details_by_num( ls_entityset-unittypeid ).

      " Part Type

      ls_entityset-parttypetext = get_part_type_details_by_num( ls_entityset-parttypeid ).

      append ls_entityset to et_entityset.

    endloop. " loop at lt_zsoz_processtime  ASSIGNING FIELD-SYMBOL(<ls_zsoz_processtime>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESSET_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TIMES
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timesset_update_entity.


    data:
      lv_objecttypeid      type char18,
      lv_equipmenttypeid   type char18,
      lv_malfunctionid     type zsoz_dir_guid,
      lv_departmentid      type bu_partner,
      lv_error_text        type bapi_msg,
      lv_parttypeid        type char30,
      lv_unittypeid        type char18,
      lt_unittypeid_filter type range of char18,
      wa_unittypeid_filter like line of lt_unittypeid_filter,
      lt_parttypeid_filter type range of char30,
      wa_parttypeid_filter like line of lt_parttypeid_filter,
      lt_update_set        type standard table of char72,
      wa_update_set        like line of lt_update_set,
      lv_hour_char         type char4.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false.

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Taking OData key values

    " Malfunction id

    read table it_key_tab into data(ls_key_tab) with key name = 'MalfunctionId'.
    lv_malfunctionid = ls_key_tab-value.
    clear ls_key_tab.

    " Equipment type id

    read table it_key_tab into ls_key_tab with key name = 'EquipmentTypeId'.
    lv_equipmenttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Object type id

    read table it_key_tab into ls_key_tab with key name = 'ObjectTypeId'.
    lv_objecttypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Department id

    read table it_key_tab into ls_key_tab with key name = 'DepartmentId'.
    lv_departmentid = ls_key_tab-value.
    clear ls_key_tab.

    " Unit type id

    read table it_key_tab into ls_key_tab with key name = 'UnitTypeId'.
    lv_unittypeid = ls_key_tab-value.
    clear ls_key_tab.

    " Part type id

    read table it_key_tab into ls_key_tab with key name = 'PartTypeId'.
    lv_parttypeid = ls_key_tab-value.

    " Preparing additional key range: unit type id

    if lv_unittypeid is not initial.

      wa_unittypeid_filter-sign = 'I'.
      wa_unittypeid_filter-option = 'EQ'.
      wa_unittypeid_filter-low = lv_unittypeid.
      append wa_unittypeid_filter to lt_unittypeid_filter.

    endif. " if lv_unittypeid is not initial

    " Preparing additional key range: part type id

    if lv_parttypeid is not initial.

      wa_parttypeid_filter-sign = 'I'.
      wa_parttypeid_filter-option = 'EQ'.
      wa_parttypeid_filter-low = lv_parttypeid.
      append wa_parttypeid_filter to lt_parttypeid_filter.

    endif. " if lv_parttypeid is not initial

    if ( lv_malfunctionid is not initial ) and
       ( lv_equipmenttypeid is not initial ) and
       ( lv_objecttypeid is not initial ) and
       ( lv_departmentid is not initial ).

      " Preparing dynamic structure to use in update

      if not er_entity-ltlowhour is initial.
        clear lv_hour_char.
        lv_hour_char = er_entity-ltlowhour.
        concatenate 'ltlowhour = ' lv_hour_char into wa_update_set separated by space.
        append wa_update_set to lt_update_set.
      endif.

      if not er_entity-ltmiddlehour is initial.
        clear lv_hour_char.
        lv_hour_char = er_entity-ltmiddlehour.
        concatenate 'ltmiddlehour = ' lv_hour_char into wa_update_set separated by space.
        append wa_update_set to lt_update_set.
      endif.

      if not er_entity-lthighhour is initial.
        clear lv_hour_char.
        lv_hour_char = er_entity-lthighhour.
        concatenate 'lthighhour = ' lv_hour_char into wa_update_set separated by space.
        append wa_update_set to lt_update_set.
      endif.

      if not er_entity-ltveryhighhour is initial.
        clear lv_hour_char.
        lv_hour_char = er_entity-ltveryhighhour.
        concatenate 'ltveryhighhour = ' lv_hour_char into wa_update_set separated by space.
        append wa_update_set to lt_update_set.
      endif.

      update  zsoz_processtime set (lt_update_set)
            where
             malfunction_guid = lv_malfunctionid and
             equipmenttypeid = lv_equipmenttypeid and
             departmentid = lv_departmentid and
             objecttypeid = lv_objecttypeid  and
             unittypeid in lt_unittypeid_filter and
             parttypeid in lt_parttypeid_filter.

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Text descriptions
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

      if ( sy-subrc = 0 ).

        " Malfunction name

        er_entity-malfunctiontext = get_mlfn_name_by_guid( ip_guid = er_entity-malfunctionid ip_check_authority = abap_true ).

        " Equipment type name

        er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

        " Department name

        select single name_org2 into er_entity-departmenttext from but000
          where partner = er_entity-departmentid.

        " Object Type name

        er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

        " Unit type name

        er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

        " Part type name

        er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

      else.

        lv_error_text = 'Ошибка сохранения записи'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    endif. " if ( lv_malfunctionid IS NOT INITIAL )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESWITHGROUPIN_CREATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TIMESWITHGROUPING
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timeswithgroupin_create_entity.

    data:
      wa_zsoz_times_dir          type zsoz_times_dir,
      wa_zsoz_dict_links         type zsoz_dict_links,
      lv_error_text              type bapi_msg,
      lt_malfunctions            type table of char_36,
      lv_malfunctionid           type zsoz_dir_guid,
      lt_timeswithgrouping_guids type standard table of zsoz_dir_guid.

    field-symbols: <ls_malfunction> like line of lt_malfunctions.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'RW' ) eq abap_false ) or
        ( check_db_table_authority( ip_table = 'ZSOZ_DICT_LINKS ' ip_action = 'RW' ) eq abap_false ).

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload

    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Preparing table of malfunctions

    if er_entity-malfunctionsgroup is not initial.

      split er_entity-malfunctionsgroup at ';' into table lt_malfunctions.

    endif.

    " Record uniqueness  validation

    select record_guid from zsoz_times_dir
        into table lt_timeswithgrouping_guids
        where
          equipmenttypeid = er_entity-equipmenttypeid and
          objecttypeid = er_entity-objecttypeid and
          departmentid = er_entity-departmentid and
          unittypeid = er_entity-unittypeid and
          parttypeid = er_entity-parttypeid and
          priority = er_entity-priority.

    if lt_timeswithgrouping_guids is not initial.

      " At least there is one record with equipment type, object type, department, unit type, part type, priority
      " Now need to check malfunctions then

      loop at lt_timeswithgrouping_guids assigning field-symbol(<ls_timeswithgrouping_guid>).

        if <ls_malfunction> is assigned.
          unassign <ls_malfunction>.
        endif.

        loop at lt_malfunctions assigning <ls_malfunction>.

          lv_malfunctionid = covert_edm_guid_to_soz_guid( <ls_malfunction> ).

          select count( * ) from zsoz_dict_links where
            relation_name = 'T2M' and
            parent_guid = <ls_timeswithgrouping_guid> and
            child_guid =  lv_malfunctionid.

          if sy-subrc = 0.

            " Record is not unique

            lv_error_text = 'Запись с такими значениями для типа оборудования, типа объекта, подразделения, типа узла, типа детали и неисправности уже существует'.

            raise exception type /iwbep/cx_mgw_busi_exception
              exporting
                message_container = send_error_response( lv_error_text ).

          endif. " if sy-subrc = 0
        endloop. " loop at lt_malfunctions assigning <ls_malfunction>
      endloop. " loop at lt_timeswithgrouping_guids ASSIGNING FIELD-SYMBOL(<ls_timeswithgrouping_guid>)
    endif. " if lt_timeswithgrouping_guids is not initial

    " Inserting new record to times directory

    wa_zsoz_times_dir-record_guid = generate_x16_guid( ).
    wa_zsoz_times_dir-equipmenttypeid = er_entity-equipmenttypeid.
    wa_zsoz_times_dir-departmentid = er_entity-departmentid.
    wa_zsoz_times_dir-objecttypeid = er_entity-objecttypeid.
    wa_zsoz_times_dir-ltlowhour = er_entity-ltlowhour.
    wa_zsoz_times_dir-ltmiddlehour = er_entity-ltmiddlehour.
    wa_zsoz_times_dir-lthighhour = er_entity-lthighhour.
    wa_zsoz_times_dir-ltveryhighhour = er_entity-ltveryhighhour.
    wa_zsoz_times_dir-priority = er_entity-priority.
    wa_zsoz_times_dir-unittypeid = er_entity-unittypeid.
    wa_zsoz_times_dir-parttypeid = er_entity-parttypeid.

    insert zsoz_times_dir from wa_zsoz_times_dir.

    " Inserting records for corresponding malfunctions

    if er_entity-malfunctionsgroup is not initial.

      "     split er_entity-malfunctionsgroup at ';' into table lt_malfunctions.

      if <ls_malfunction> is assigned.
        unassign <ls_malfunction>.
      endif.

      loop at lt_malfunctions assigning <ls_malfunction>.

        wa_zsoz_dict_links-relation_name = 'T2M'.
        wa_zsoz_dict_links-parent_guid = wa_zsoz_times_dir-record_guid.
        wa_zsoz_dict_links-child_guid = covert_edm_guid_to_soz_guid( <ls_malfunction> ).

        insert zsoz_dict_links from wa_zsoz_dict_links.

      endloop. " loop at lt_malfunctions assigning field-symbol(<ls_malfunction>)

    endif. " if er_entity-malfunctionsgroup is not initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "  Adding text descriptions
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( sy-subrc = 0 ).

      " Equipment type name

      er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

      " Department name

      select single name_org2 into er_entity-departmenttext from but000
        where partner = er_entity-departmentid.

      " Object Type name

      er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

      " Unit Type

      er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

      " Part Type

      er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

    else.

      lv_error_text = 'Ошибка сохранения записи'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESWITHGROUPIN_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timeswithgroupin_delete_entity.



    data:
      lv_timeswithgroupingguid type zsoz_dir_guid,
      ls_key_tab               like line of it_key_tab,
      lv_error_text            type bapi_msg.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'RW' ) eq abap_false ) or
    ( check_db_table_authority( ip_table = 'ZSOZ_DICT_LINKS ' ip_action = 'RW' ) eq abap_false ).

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if check_db_table_authority( ip_table = 'ZSOZ_PROCESSTIME' ip_action = 'RW' ) eq abap_false

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Taking OData key values

    read table it_key_tab into ls_key_tab with key name = 'Guid'.
    lv_timeswithgroupingguid = ls_key_tab-value.
    clear ls_key_tab.

    if lv_timeswithgroupingguid is initial.
      return.
    endif.

    delete from zsoz_dict_links
    where
      relation_name = 'T2M' and
      parent_guid = lv_timeswithgroupingguid.

    if sy-subrc = 0.

      delete from zsoz_times_dir
      where
        record_guid = lv_timeswithgroupingguid.

      if ( sy-subrc <> 0 ).

        lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.

        raise exception type /iwbep/cx_mgw_busi_exception
          exporting
            message_container = send_error_response( lv_error_text ).

      endif. " if ( sy-subrc = 0 )

    else.

      lv_error_text = 'Ошибка удаления записи: исключительная ситуация'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).


    endif.



  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESWITHGROUPIN_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_TIMESWITHGROUPING
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timeswithgroupin_get_entityset.

    data:
      ls_entityset       like line of et_entityset,
      lv_error_text      type bapi_msg,
      lt_zsoz_times_dir  type standard table of zsoz_times_dir,
      lv_objecttypeid    type char18,
      lv_equipmenttypeid type char18,
      lv_malfunctionid   type zsoz_dir_guid,
      lv_parttypeid      type char30,
      lv_unittypeid      type char18,
      lv_mlfn_dir_auth   type ac_bool.


    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^


    if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'R' ) eq abap_false ) or
    ( check_db_table_authority( ip_table = 'ZSOZ_DICT_LINKS ' ip_action = 'R' ) eq abap_false ).

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'R' ) eq abap_false ) or

    " Authorizations to view custom tables

    lv_mlfn_dir_auth = check_db_table_authority( ip_table = 'ZSOZ_MLFN_DIR' ip_action = 'R' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lv_objecttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'OBJECTTYPEID' ).

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'EQUIPMENTTYPEID' ).

    lv_malfunctionid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                    ip_property = 'MALFUNCTIONID' ).

    lv_unittypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                ip_property = 'UNITTYPEID' ).

    lv_parttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                ip_property = 'PARTTYPEID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Selecting all records from Times dictionary

    select
      record_guid
      equipmenttypeid
      departmentid
      objecttypeid
      unittypeid
      parttypeid
      rtlowhour
      rtmiddlehour
      rthighhour
      rtveryhighhour
      ltlowhour
      ltmiddlehour
      lthighhour
      ltveryhighhour
      priority
    into corresponding fields of table lt_zsoz_times_dir
    from zsoz_times_dir.

    loop at lt_zsoz_times_dir  assigning field-symbol(<ls_zsoz_times_dir>).

      " Performing filtering

      if lv_objecttypeid is not initial.
        if ( <ls_zsoz_times_dir>-objecttypeid <> lv_objecttypeid ).
          continue.
        endif.
      endif. " if lv_objecttypeid_filter is not initial

      if lv_equipmenttypeid is not initial.
        if ( <ls_zsoz_times_dir>-equipmenttypeid <> lv_equipmenttypeid ).
          continue.
        endif.
      endif. " if lv_equipmnettypeid_filter is not initial


      if lv_unittypeid is not initial.
        if ( <ls_zsoz_times_dir>-unittypeid <> lv_unittypeid ).
          continue.
        endif.
      endif. " if lv_unittypeid is not initial

      if lv_parttypeid is not initial.
        if ( <ls_zsoz_times_dir>-parttypeid <> lv_parttypeid ).
          continue.
        endif.
      endif. " if lv_parttypeid is not initial

      clear ls_entityset.

      " Filling output table

      ls_entityset-guid = <ls_zsoz_times_dir>-record_guid.
      ls_entityset-equipmenttypeid = <ls_zsoz_times_dir>-equipmenttypeid.
      ls_entityset-departmentid = <ls_zsoz_times_dir>-departmentid.
      ls_entityset-objecttypeid = <ls_zsoz_times_dir>-objecttypeid.
      ls_entityset-ltlowhour = <ls_zsoz_times_dir>-ltlowhour.
      ls_entityset-ltmiddlehour = <ls_zsoz_times_dir>-ltmiddlehour.
      ls_entityset-lthighhour = <ls_zsoz_times_dir>-lthighhour.
      ls_entityset-ltveryhighhour = <ls_zsoz_times_dir>-ltveryhighhour.
      ls_entityset-priority = <ls_zsoz_times_dir>-priority.
      ls_entityset-unittypeid = <ls_zsoz_times_dir>-unittypeid.
      ls_entityset-parttypeid = <ls_zsoz_times_dir>-parttypeid.

      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
      "   Text descriptions
      " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^


      " Equipment type name

      ls_entityset-equipmenttypetext = get_eqpm_type_details_by_num( ls_entityset-equipmenttypeid ).

      " Department name

      select single name_org2 into ls_entityset-departmenttext from but000
              where partner = <ls_zsoz_times_dir>-departmentid.

      " Object Type name

      ls_entityset-objecttypetext = get_object_type_details_by_num( ls_entityset-objecttypeid ).

      " Unit Type

      ls_entityset-unittypetext = get_unit_type_details_by_num( ls_entityset-unittypeid ).

      " Part Type

      ls_entityset-parttypetext = get_part_type_details_by_num( ls_entityset-parttypeid ).

      append ls_entityset to et_entityset.
*
    endloop. " loop at lt_zsoz_times_dir  ASSIGNING FIELD-SYMBOL(<ls_zsoz_times_dir>)


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->TIMESWITHGROUPIN_UPDATE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_U(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER(optional)
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_TIMESWITHGROUPING
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method timeswithgroupin_update_entity.


    data:
      lv_timeswithgroupingguid   type zsoz_dir_guid,
      ls_key_tab                 like line of it_key_tab,
      lv_error_text              type bapi_msg,
      lt_update_set              type standard table of char72,
      wa_update_set              like line of lt_update_set,
      lv_hour_char               type char4,
      lt_malfunctions            type table of char_36,
      wa_zsoz_dict_links         type zsoz_dict_links,
      lv_objecttypeid            type char18,
      lv_equipmenttypeid         type char18,
      lv_parttypeid              type char30,
      lv_unittypeid              type char18,
      lv_priority                type crmt_priority,
      lv_departmentid            type bu_partner,
      lt_timeswithgrouping_guids type standard table of zsoz_dir_guid,
      lv_malfunctionid           type zsoz_dir_guid.

    field-symbols: <ls_malfunction> like line of lt_malfunctions.

    " Authorizations related variables

    data:
      lt_user_roles                  type zsoz_tt_user_roles.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Authorizations collection block
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    call method zcl_zsoz_dpc_ext=>get_user_soz_role_and_org_unit
      importing
        et_roles = lt_user_roles.

    if user_is_administrator( lt_user_roles ) eq abap_false.

      lv_error_text = 'Пользователь не является администратором'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. "if user_is_administrator( lt_user_roles ) eq abap_false

    if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'RW' ) eq abap_false ) or
    ( check_db_table_authority( ip_table = 'ZSOZ_DICT_LINKS ' ip_action = 'RW' ) eq abap_false ).

      lv_error_text = 'У пользователя отсутствуют права на доступ к объекту Базы Данных'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( check_db_table_authority( ip_table = 'ZSOZ_TIMES_DIR ' ip_action = 'RW' ) eq abap_false ) or

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    " Picking update payload
    io_data_provider->read_entry_data( importing es_data = er_entity ).

    " Taking OData key values

    read table it_key_tab into ls_key_tab with key name = 'Guid'.
    lv_timeswithgroupingguid = ls_key_tab-value.
    clear ls_key_tab.

    if lv_timeswithgroupingguid is initial.
      return.
    endif.

    " Preparing dynamic structure to use in update

    if not er_entity-ltlowhour is initial.
      clear lv_hour_char.
      lv_hour_char = er_entity-ltlowhour.
      concatenate 'ltlowhour = ' lv_hour_char into wa_update_set separated by space.
      append wa_update_set to lt_update_set.
    endif.

    if not er_entity-ltmiddlehour is initial.
      clear lv_hour_char.
      lv_hour_char = er_entity-ltmiddlehour.
      concatenate 'ltmiddlehour = ' lv_hour_char into wa_update_set separated by space.
      append wa_update_set to lt_update_set.
    endif.

    if not er_entity-lthighhour is initial.
      clear lv_hour_char.
      lv_hour_char = er_entity-lthighhour.
      concatenate 'lthighhour = ' lv_hour_char into wa_update_set separated by space.
      append wa_update_set to lt_update_set.
    endif.

    if not er_entity-ltveryhighhour is initial.
      clear lv_hour_char.
      lv_hour_char = er_entity-ltveryhighhour.
      concatenate 'ltveryhighhour = ' lv_hour_char into wa_update_set separated by space.
      append wa_update_set to lt_update_set.
    endif.

    if not er_entity-priority is initial.
      concatenate 'priority = ' er_entity-priority into wa_update_set separated by space.
      append wa_update_set to lt_update_set.
    endif.


    if er_entity-malfunctionsgroup is not initial.

      split er_entity-malfunctionsgroup at ';' into table lt_malfunctions.


      " Check record uniquess from malfunctions perspective
      " Pickup all records with similar parameters

      select single equipmenttypeid objecttypeid departmentid unittypeid parttypeid priority
          from zsoz_times_dir
          into ( lv_equipmenttypeid, lv_objecttypeid, lv_departmentid, lv_unittypeid, lv_parttypeid, lv_priority )
          where
            record_guid = lv_timeswithgroupingguid.

      select record_guid from zsoz_times_dir
          into table lt_timeswithgrouping_guids
          where
            equipmenttypeid = lv_equipmenttypeid and
            objecttypeid = lv_objecttypeid and
            departmentid = lv_departmentid and
            unittypeid = lv_unittypeid and
            parttypeid = lv_parttypeid and
            priority = lv_priority.

      if lt_timeswithgrouping_guids is not initial.

        " At least there is one record with equipment type, object type, department, unit type, part type, priority
        " Now need to check NEW malfunctions

        loop at lt_timeswithgrouping_guids assigning field-symbol(<ls_timeswithgrouping_guid>).

          if <ls_malfunction> is assigned.
            unassign <ls_malfunction>.
          endif.

          loop at lt_malfunctions assigning <ls_malfunction>.

            lv_malfunctionid = covert_edm_guid_to_soz_guid( <ls_malfunction> ).

            select count( * ) from zsoz_dict_links where
              relation_name = 'T2M' and
              parent_guid = <ls_timeswithgrouping_guid> and
              child_guid =  lv_malfunctionid and
              parent_guid ne lv_timeswithgroupingguid.

            if sy-subrc = 0.

              " Record is not unique

              lv_error_text = 'Запись с такими значениями для типа оборудования, типа объекта, подразделения, типа узла, типа детали и неисправности уже существует'.

              raise exception type /iwbep/cx_mgw_busi_exception
                exporting
                  message_container = send_error_response( lv_error_text ).

            endif. " if sy-subrc = 0
          endloop. " loop at lt_malfunctions assigning <ls_malfunction>
        endloop. " loop at lt_timeswithgrouping_guids ASSIGNING FIELD-SYMBOL(<ls_timeswithgrouping_guid>)
      endif. " if lt_timeswithgrouping_guids is not initial

    endif. " if er_entity-malfunctionsgroup is not initial

    " Update of times directory

    update zsoz_times_dir set (lt_update_set)
      where record_guid = lv_timeswithgroupingguid.


    " Update of malfunctions

    if er_entity-malfunctionsgroup is not initial.

      " Delete malfunction records, related to current record

      delete from zsoz_dict_links
        where
          relation_name = 'T2M' and
          parent_guid = lv_timeswithgroupingguid.

      if sy-subrc = 0.

        if <ls_malfunction> is assigned.
          unassign <ls_malfunction>.
        endif.

        loop at lt_malfunctions assigning <ls_malfunction>.

          wa_zsoz_dict_links-relation_name = 'T2M'.
          wa_zsoz_dict_links-parent_guid = lv_timeswithgroupingguid.
          wa_zsoz_dict_links-child_guid = covert_edm_guid_to_soz_guid( <ls_malfunction> ).

          insert zsoz_dict_links from wa_zsoz_dict_links.

        endloop. " loop at lt_malfunctions assigning field-symbol(<ls_malfunction>)

      endif. " if sy-subrc = 0

    endif. " if not er_entity-malfunctionsgroup is initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Text descriptions
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( sy-subrc = 0 ).

      " Equipment type name

      er_entity-equipmenttypetext = get_eqpm_type_details_by_num( er_entity-equipmenttypeid ).

      " Department name

      select single name_org2 into er_entity-departmenttext from but000
        where partner = er_entity-departmentid.

      " Object Type name

      er_entity-objecttypetext = get_object_type_details_by_num( er_entity-objecttypeid ).

      " Unit type name

      er_entity-unittypetext = get_unit_type_details_by_num( er_entity-unittypeid ).

      " Part type name

      er_entity-parttypetext = get_part_type_details_by_num( er_entity-parttypeid ).

    else.

      lv_error_text = 'Ошибка сохранения записи'.

      raise exception type /iwbep/cx_mgw_busi_exception
        exporting
          message_container = send_error_response( lv_error_text ).

    endif. " if ( sy-subrc = 0 )


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>TRANSLATE_TO_RUSSIAN
* +-------------------------------------------------------------------------------------------------+
* | [--->] IP_TEXT                        TYPE        CHAR50
* | [<-()] EP_TEXT_IN_RUSSIAN             TYPE        CHAR100
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method translate_to_russian.

    " Translation to Russian

    case ip_text.

      when 'GUID'.
        ep_text_in_russian = 'УИД'.

      when 'ID'.
        ep_text_in_russian = 'Номер заявки'.

      when 'PARTID'.
        ep_text_in_russian = 'УИД детали'.

      when 'UNITID'.
        ep_text_in_russian = 'УИД узла'.

      when 'DESCRIPTION'.
        ep_text_in_russian = 'Описание'.

      when 'EQUIPMENTID'.
        ep_text_in_russian = 'УИД оборудования'.

      when 'LEADTIME'.
        ep_text_in_russian = 'Время устранения'.

      when 'STATUS'.
        ep_text_in_russian = 'Статус'.

      when 'PRIORITY'.
        ep_text_in_russian = 'Приоритет'.

      when 'WATCHERS'.
        ep_text_in_russian = 'Наблюдающий(ие)'.

      when 'OBJECTID'.
        ep_text_in_russian = 'УИД объекта'.

      when 'MALFUNCTIONID'.
        ep_text_in_russian = 'УИД неисправности'.

      when 'PROBLEMID'.
        ep_text_in_russian = 'УИД причины'.

      when 'SOLUTIONID'.
        ep_text_in_russian = 'УИД принятой меры'.

      when 'RESPONSETIME'.
        ep_text_in_russian = 'Время реакции'.

      when 'NOTE'.
        ep_text_in_russian = 'УИД'.

      when 'SUPPORTGROUPID'.
        ep_text_in_russian = 'УИД группы поддержки'.

      when 'CDATE'.
        ep_text_in_russian = 'Время создания'.

      when 'FILENAME'.
        ep_text_in_russian = 'Имя файла'.

      when 'C'.
        ep_text_in_russian = 'Создание'.

      when 'U'.
        ep_text_in_russian = 'Изменение'.

      when 'A'.
        ep_text_in_russian = 'Добавление вложения'.

      when 'DEPARTMENTID'.
        ep_text_in_russian = 'Подразделение'.

      when 'EQUIPMENTTYPEID'.
        ep_text_in_russian = 'Тип оборудования'.

      when 'OBJECTTYPEID'.
        ep_text_in_russian = 'Тип объекта'.

      when 'EXECUTORID'.
        ep_text_in_russian = 'Исполнитель'.

      when 'LEADTIMEFACT'.
        ep_text_in_russian = 'Время устранения (факт)'.

      when 'EVENTTIME'.
        ep_text_in_russian = 'Время события'.


    endcase. "case ip_text

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->UNITSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZSOZ_MPC=>TS_UNIT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method unitset_get_entity.

    data:
      ls_key_tab  like line of it_key_tab,
      lv_unit_id  type char18,
      lv_showtype type char1.

    " Search by incident
    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    if ls_key_tab is not initial.

      " Search for incident unit by incident GUID

      select single zzfld000019 into lv_unit_id from crmd_customer_h where guid = ls_key_tab-value.

    else.

      " Search by unit
      " Taking OData key value: incident GUID

      read table it_key_tab into ls_key_tab with key name = 'UnitId'.

      if ls_key_tab is not initial.

        lv_unit_id = ls_key_tab-value.

      endif. "  if ls_key_tab is not initial

    endif.  " if ls_key_tab is not initial


    if ( lv_unit_id is not initial ) and ( lv_unit_id ne 'null' ).

      er_entity-unitid = lv_unit_id.
      er_entity-value1 = get_unit_details_by_num( lv_unit_id ).

      " Picking HTTP URL parameter ShowType to understand, if we should include type into output

      lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

      if lv_showtype = 'X'.

        " Adding unit type

        er_entity-unittypeid = get_unit_type_of_unit( lv_unit_id ).

      endif. " if lv_showtype = 'X'

    endif. " if lv_unit_id is not initial

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->UNITSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_UNIT
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method unitset_get_entityset.

    data:
      ls_entityset              like line of et_entityset,
      lv_eqpm_number            type char30,
      lv_ext_api_return_code    type sy-subrc,
      lt_units                  type zsoz_tt_units,
      lv_showtype               type char1,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Filters collection
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                            ip_property = 'VALUE1' ).

    lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .


    lv_eqpm_number = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'EQUIPMENTID' ).

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Data processing
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ( lv_eqpm_number is not initial ).

      " Option 1: search units of equipment

      exec_ext_api_method(
        exporting
          ip_method = 'GET_UNITS_OF_EQPM'
          ip_eqpm_number = lv_eqpm_number
        importing
            ep_return_code = lv_ext_api_return_code
            et_units = lt_units ).

    else.

      " Option 2: selecting all units

      exec_ext_api_method(
        exporting
          ip_method = 'GET_ALL_UNITS'
        importing
            ep_return_code = lv_ext_api_return_code
            et_units = lt_units ).

    endif.  " if ( lv_equipmentid is not initial )

    if ( lv_ext_api_return_code ne 0 ).

      return.

    endif. " if ( lv_ext_api_return_code NE 0 )

    " Picking HTTP URL parameter ShowType to understand, if we should include type into output

    lv_showtype = get_show_type_param( me->mr_request_details->technical_request-request_header ).

    loop at lt_units assigning field-symbol(<ls_units>) where unit_name in lt_filter_name_with_cases.

      ls_entityset-unitid = <ls_units>-unit_number.
      ls_entityset-value1 = <ls_units>-unit_name.

      " Adding unit type

      if lv_showtype = 'X'.

        ls_entityset-unittypeid = get_unit_type_of_unit(  <ls_units>-unit_number ).

      endif. " if lv_showtype = 'X'

      " Filling output table

      append ls_entityset to et_entityset.

    endloop. " loop at lt_units ASSIGNING FIELD-SYMBOL(<ls_units>)

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->UNITTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_UNITTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method unittypeset_get_entityset.

    data:
      ls_entityset           like line of et_entityset,
      lv_equipmenttypeid     type char18,
      lt_unit_types          type zsoz_tt_unit_types,
      lv_ext_api_return_code type sy-subrc.

    " Search for unit types of equipment type

    lv_equipmenttypeid = get_filter_value( io_tech_request_context  = io_tech_request_context
                                      ip_property = 'EQUIPMENTTYPEID' ).

    if lv_equipmenttypeid is initial.
      return.
    endif.

    exec_ext_api_method(
                    exporting
                      ip_method = 'GET_UNIT_TYPES_BY_EQPM_TYPE'
                      ip_eqpm_type   = lv_equipmenttypeid
                    importing
                     ep_return_code  = lv_ext_api_return_code
                     et_unit_types = lt_unit_types ).

    " Filling output table

    if lv_ext_api_return_code eq 0.

      loop at lt_unit_types assigning field-symbol(<ls_unit_type>).

        ls_entityset-unittypeid = <ls_unit_type>-unit_type_num.
        ls_entityset-value1 = <ls_unit_type>-unit_type_name.

        append ls_entityset to et_entityset.

      endloop. " loop at lt_unit_types assigning field-symbol(<ls_unit_type>)

    endif. " if lv_ext_api_return_code eq 0


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_ADMINISTRATOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_administrator.

    " Check if user is administrator

    ep_result = abap_false.

    read table it_roles with key role = 'A' transporting no fields.

    if sy-subrc = 0.

      ep_result = abap_true.

    endif.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_CREATOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_creator.

    " Check if user is creator and someone else

    data lv_roles_count type int4.

    ep_result = abap_false.

    lv_roles_count = lines( it_roles ).

    read table it_roles with key role = 'C' transporting no fields.

    if ( sy-subrc = 0 ) and ( lv_roles_count > 1 ).

      ep_result = abap_true.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_ONLY_ADMINISTRATOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_only_administrator.

    data:
      lv_roles_count type int4,
      wa_roles       type zsoz_ts_user_role.

    " Check if user is only administrator

    ep_result = abap_false.

    lv_roles_count = lines( it_roles ).

    if lv_roles_count eq 1.

      read table it_roles into wa_roles index 1.

      if sy-subrc = 0.

        if wa_roles-role = 'A'.

          ep_result = abap_true.

        endif.

      endif.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_ONLY_CREATOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_only_creator.

    data:
      lv_roles_count type int4,
      wa_roles       type zsoz_ts_user_role.

    " Check if user is only creator

    ep_result = abap_false.

    lv_roles_count = lines( it_roles ).

    if lv_roles_count eq 1.

      read table it_roles into wa_roles index 1.

      if sy-subrc = 0.

        if wa_roles-role = 'C'.

          ep_result = abap_true.

        endif.

      endif.

    endif.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_ONLY_WATCHER
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_only_watcher.

    data:
      lv_roles_count type int4,
      wa_roles       type zsoz_ts_user_role.

    " Check if user is only watcher

    ep_result = abap_false.

    lv_roles_count = lines( it_roles ).

    if lv_roles_count eq 1.

      read table it_roles into wa_roles index 1.

      if sy-subrc = 0.

        if wa_roles-role = 'W'.

          ep_result = abap_true.

        endif.

      endif.

    endif.



  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_PROCESSOR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_processor.

    " Check if user is processor

    ep_result = abap_false.

    read table it_roles with key role = 'P' transporting no fields.

    if sy-subrc = 0.

      ep_result = abap_true.

    endif.

  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Private Method ZCL_ZSOZ_DPC_EXT=>USER_IS_WATCHER
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_ROLES                       TYPE        ZSOZ_TT_USER_ROLES
* | [<-()] EP_RESULT                      TYPE        AC_BOOL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method user_is_watcher.

    " Check if user is watcher

    ep_result = abap_false.

    read table it_roles with key role = 'W' transporting no fields.

    if sy-subrc = 0.

      ep_result = abap_true.

    endif.


  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZSOZ_DPC_EXT->WATCHERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZSOZ_MPC=>TT_WATCHER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method watcherset_get_entityset.

    types: begin of ty_watcher_tt,
             partner     type char10,
             last_name   type char40,
             first_name  type char40,
             middle_name type char40,
             full_name   type char80,
           end of ty_watcher_tt.

    data:
      ls_key_tab                like line of it_key_tab,
      lt_watcher                type standard table of ty_watcher_tt,
      lv_guid                   type crmt_object_guid,
      lv_bp                     type bu_partner,
      ls_entityset              like line of et_entityset,
      lv_top                    type i,
      lv_output_size            type i,
      api_object                type ref to cl_ags_crm_1o_api,
      lt_watchers               type standard table of bu_partner,
      wa_watcher                like line of lt_watchers,
      lt_partner                type crmt_partner_external_wrkt,
      ls_partner                type crmt_partner_external_wrk,
      lt_filter_name            type /iwbep/t_cod_select_options,
      lt_filter_name_with_cases type /iwbep/t_cod_select_options..

    field-symbols: <lt_watcher> like line of lt_watcher.

    " Taking OData key value: incident GUID

    read table it_key_tab into ls_key_tab with key name = 'Guid'.

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Mode 1: navigation between incident and watcher
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ls_key_tab is not initial.

      lv_guid = ls_key_tab-value.

      " Opening an incident by GUID

      call method cl_ags_crm_1o_api=>get_instance
        exporting
          iv_header_guid                = lv_guid
          iv_process_mode               = 'C'
          iv_process_type               = 'ZSOZ'
        importing
          eo_instance                   = api_object
        exceptions
          invalid_parameter_combination = 1
          error_occurred                = 2
          others                        = 3.
      if ( sy-subrc = 0 ).

        " Search for partners

        api_object->get_partners( importing et_partner = lt_partner ).

        if lt_partner is not initial.

          " Taking a list of watchers from partner function SLFN0001 (Administrator)

          loop at lt_partner into ls_partner where ref_partner_fct = 'SLFN0001'.

            lv_bp = ls_partner-partner_no.

            " Leading zeroes conversion

            call function 'CONVERSION_EXIT_ALPHA_INPUT'
              exporting
                input  = lv_bp
              importing
                output = lv_bp.

            clear wa_watcher.

            wa_watcher = lv_bp.
            append wa_watcher to lt_watchers.

          endloop. "loop at et_partner into ls_partner

        endif. "if et_partner is not initial

        " Looping through all found watchers

        loop at lt_watchers assigning field-symbol(<ls_watcher>).

          clear ls_entityset.

          lv_bp = <ls_watcher>.

          " Leading zeroes conversion

          call function 'CONVERSION_EXIT_ALPHA_INPUT'
            exporting
              input  = lv_bp
            importing
              output = lv_bp.

          " Taking additional BP details

          select partner name_last  name_first namemiddle name1_text into table lt_watcher
            from but000 where partner = lv_bp.

          " Filling output table

          loop at lt_watcher assigning <lt_watcher>.

            ls_entityset-watcherid = <lt_watcher>-partner.
            ls_entityset-lastname = <lt_watcher>-last_name.
            ls_entityset-firstname = <lt_watcher>-first_name.
            ls_entityset-middlename = <lt_watcher>-middle_name.
            ls_entityset-fullname = <lt_watcher>-full_name.

            if strlen( ls_entityset-fullname ) eq 0.

              concatenate <lt_watcher>-last_name <lt_watcher>-first_name <lt_watcher>-middle_name into ls_entityset-fullname separated by space.

            endif. " if strlen( ls_entityset-fullname ) eq 0

            append ls_entityset to et_entityset.

          endloop. " loop at lt_employee assigning field-symbol(<ls_employee>)
        endloop. " loop at lt_watchers assigning field-symbol(<ls_watcher>)
      endif. "if ( sy-subrc = 0 ).

    endif. " if ls_key_tab is not initial

    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^
    "   Mode 2: showing all watchers
    " ~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~^~~^~^~^~^~^~^~^~^

    if ls_key_tab is initial.

      " Getting TOP parameter

      lv_top = io_tech_request_context->get_top( ).

      " Getting name filter


      lt_filter_name = get_filter_select_options( io_tech_request_context  = io_tech_request_context
                                              ip_property = 'LASTNAME' ).

      lt_filter_name_with_cases = prepare_filter_for_text_search( lt_filter_name ) .

      if lt_filter_name_with_cases is not initial.
        select partner name_last  name_first namemiddle name1_text into table lt_watcher from but000 where type = '1' and name_last in lt_filter_name_with_cases.
      else.
        select partner name_last  name_first namemiddle name1_text into table lt_watcher from but000 where type = '1'.
      endif. " if rg_filter_so is not initial.

      " Filling output table

      loop at lt_watcher assigning <lt_watcher>.

        ls_entityset-watcherid = <lt_watcher>-partner.
        ls_entityset-lastname = <lt_watcher>-last_name.
        ls_entityset-firstname = <lt_watcher>-first_name.
        ls_entityset-middlename = <lt_watcher>-middle_name.
        ls_entityset-fullname = <lt_watcher>-full_name.

        if strlen( ls_entityset-fullname ) eq 0.

          concatenate <lt_watcher>-last_name <lt_watcher>-first_name <lt_watcher>-middle_name into ls_entityset-fullname separated by space.

        endif. " if strlen( ls_entityset-fullname ) eq 0

        append ls_entityset to et_entityset.

        " Validating TOP condition

        lv_output_size = lines( et_entityset ).
        if lv_top is not initial and
           lv_output_size >= lv_top.
          exit.
        endif.

      endloop. " loop at lt_employee assigning field-symbol(<ls_employee>)

    endif. " if ls_key_tab is not initial


  endmethod.
ENDCLASS.