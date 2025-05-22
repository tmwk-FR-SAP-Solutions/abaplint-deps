INTERFACE if_ex_vendor_add_data PUBLIC.

  METHODS check_all_data
    IMPORTING
      VALUE(i_activity) TYPE aktyp
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
      !t_knvk TYPE fknvk_tab OPTIONAL
    CHANGING
      VALUE(e_msgid) TYPE symsgid OPTIONAL
      VALUE(e_msgno) TYPE symsgno OPTIONAL
      VALUE(e_msgv1) TYPE symsgv OPTIONAL
      VALUE(e_msgv2) TYPE symsgv OPTIONAL
      VALUE(e_msgv3) TYPE symsgv OPTIONAL
      VALUE(e_msgv4) TYPE symsgv OPTIONAL
      VALUE(e_dynnr) TYPE sydynnr OPTIONAL
      VALUE(e_scrgr) TYPE vend_scgr OPTIONAL
      VALUE(e_fcode) TYPE taxitabs-fcode OPTIONAL
      VALUE(e_ltsnr) TYPE ltsnr OPTIONAL
      VALUE(e_werks) TYPE werks_d OPTIONAL.
  METHODS save_data
    IMPORTING
      !i_activity TYPE aktyp
      !i_lifnr TYPE lifnr.
  METHODS check_data_changed
    CHANGING
      !e_changed TYPE flag.
  METHODS initialize_add_on_data.
  METHODS read_add_on_data
    IMPORTING
      !i_lifnr TYPE lifnr
      !i_bukrs TYPE bukrs
      !i_ekorg TYPE ekorg.
  METHODS check_account_number
    IMPORTING
      !i_nrobj TYPE nrobj
      !i_lifnr TYPE lifnr.
  METHODS modify_account_number
    IMPORTING
      !i_nrobj TYPE nrobj
    CHANGING
      !c_lifnr TYPE lifnr.
  METHODS preset_values_ccode
    IMPORTING
      !i_activity TYPE aktyp
      !i_lfa1 TYPE lfa1
    CHANGING
      !e_lfb1 TYPE lfb1.
  METHODS preset_values_porg
    IMPORTING
      !i_activity TYPE aktyp
      !i_lfa1 TYPE lfa1
    CHANGING
      !e_lfm1 TYPE lfm1.
  METHODS preset_values_porg_alternative
    IMPORTING
      !i_activity TYPE aktyp
      !i_lfa1 TYPE lfa1
    CHANGING
      !e_lfm2 TYPE lfm2.
  METHODS get_changedocs_for_own_tables
    CHANGING
      !t_object_type TYPE cdobjectcl_tab.
  METHODS check_add_on_active
    IMPORTING
      !i_screen_group TYPE vend_scgr
    CHANGING
      VALUE(e_add_on_active) TYPE flag.
  METHODS build_text_for_change_detail
    IMPORTING
      !i_changedoc_data TYPE cdshw
    CHANGING
      !e_text TYPE c.
  METHODS set_user_inputs
    IMPORTING
      !i_ktokk TYPE ktokk
      !i_lifnr TYPE lifnr
      !i_bukrs TYPE bukrs OPTIONAL
      !i_ekorg TYPE ekorg OPTIONAL
      !i_ref_lifnr TYPE lifnr OPTIONAL
      !i_ref_bukrs TYPE bukrs OPTIONAL
      !i_ref_ekorg TYPE ekorg OPTIONAL.
ENDINTERFACE.