INTERFACE if_ex_vendor_add_data_cs PUBLIC.

  METHODS set_data
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
      !i_activity TYPE aktyp OPTIONAL
      !i_lfa1 TYPE lfa1 OPTIONAL
      !i_lfb1 TYPE lfb1 OPTIONAL
      !i_lfm1 TYPE lfm1 OPTIONAL
      !t_lfbk TYPE flfbk_tab OPTIONAL
      !t_lfb5 TYPE flfb5_tab OPTIONAL
      !t_lfza TYPE flfza_tab OPTIONAL
      !t_lfas TYPE flfas_tab OPTIONAL
      !t_lflr TYPE flflr_tab OPTIONAL
      !t_lfm2 TYPE flfm2_tab OPTIONAL
      !t_wyt1 TYPE fwyt1_tab OPTIONAL
      !t_wyt1t TYPE fwyt1t_tab OPTIONAL
      !t_wyt3 TYPE fwyt3_tab OPTIONAL
      !t_knvk TYPE fknvk_tab OPTIONAL.
  METHODS get_data
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
    CHANGING
      !s_lfa1 TYPE lfa1 OPTIONAL
      !s_lfb1 TYPE lfb1 OPTIONAL
      !s_lfm1 TYPE lfm1 OPTIONAL
      !t_lfbk TYPE flfbk_tab OPTIONAL
      !t_lfb5 TYPE flfb5_tab OPTIONAL
      !t_lfza TYPE flfza_tab OPTIONAL
      !t_lfas TYPE flfas_tab OPTIONAL
      !t_lflr TYPE flflr_tab OPTIONAL
      !t_lfm2 TYPE flfm2_tab OPTIONAL
      !t_wyt1 TYPE fwyt1_tab OPTIONAL
      !t_wyt1t TYPE fwyt1t_tab OPTIONAL
      !t_wyt3 TYPE fwyt3_tab OPTIONAL
      !t_knvk TYPE fknvk_tab OPTIONAL.
  METHODS get_fieldname_for_changedoc
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
    CHANGING
      !e_fieldname TYPE tbfdnam.
  METHODS suppress_taxi_tabstrips
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
      !i_activity TYPE aktyp OPTIONAL
      !i_lifnr TYPE lifnr OPTIONAL
      !i_bukrs TYPE bukrs OPTIONAL
      !i_ekorg TYPE ekorg OPTIONAL
    CHANGING
      !e_not_used_taxi_fcodes TYPE not_used_taxi_fcodes_tab.
  METHODS get_taxi_screen
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
      !i_taxi_fcode TYPE taxitabs-fcode
    CHANGING
      !e_screen TYPE dynnr
      !e_program TYPE repid
      !e_headerscreen_layout TYPE char1.
  METHODS set_fcode
    IMPORTING
      VALUE(flt_val) TYPE vend_scgr
      !i_fcode TYPE taxitabs-fcode
    CHANGING
      !e_fcode_used TYPE flag.
ENDINTERFACE.