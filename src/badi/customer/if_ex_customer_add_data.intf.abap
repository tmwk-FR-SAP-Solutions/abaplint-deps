INTERFACE if_ex_customer_add_data PUBLIC.


  METHODS set_user_inputs
    IMPORTING
      !i_ktokd TYPE ktokd
      !i_kunnr TYPE kunnr
      !i_bukrs TYPE bukrs OPTIONAL
      !i_vkorg TYPE vkorg OPTIONAL
      !i_vtweg TYPE vtweg OPTIONAL
      !i_spart TYPE spart OPTIONAL
      !i_ref_kunnr TYPE kunnr OPTIONAL
      !i_ref_bukrs TYPE bukrs OPTIONAL
      !i_ref_vkorg TYPE vkorg OPTIONAL
      !i_ref_vtweg TYPE vtweg OPTIONAL
      !i_ref_spart TYPE spart OPTIONAL.
  METHODS build_text_for_change_detail
    IMPORTING
      !i_changedoc_data TYPE cdshw
    CHANGING
      !e_text TYPE c.
  METHODS check_all_data
    IMPORTING
      VALUE(i_activity) TYPE aktyp
      !s_kna1 TYPE kna1 OPTIONAL
      !s_knb1 TYPE knb1 OPTIONAL
      !s_knvv TYPE knvv OPTIONAL
      !t_knas TYPE fknas_tab OPTIONAL
      !t_knb5 TYPE fknb5_tab OPTIONAL
      !t_knbk TYPE fknbk_tab OPTIONAL
      !t_knex TYPE fknex_tab OPTIONAL
      !t_knva TYPE fknva_tab OPTIONAL
      !t_knvd TYPE fknvd_tab OPTIONAL
      !t_knvi TYPE fknvi_tab OPTIONAL
      !t_knvk TYPE fknvk_tab OPTIONAL
      !t_knvl TYPE fknvl_tab OPTIONAL
      !t_knvp TYPE fknvp_tab OPTIONAL
      !t_knza TYPE fknza_tab OPTIONAL
    CHANGING
      VALUE(e_msgid) TYPE symsgid OPTIONAL
      VALUE(e_msgno) TYPE symsgno OPTIONAL
      VALUE(e_msgv1) TYPE symsgv OPTIONAL
      VALUE(e_msgv2) TYPE symsgv OPTIONAL
      VALUE(e_msgv3) TYPE symsgv OPTIONAL
      VALUE(e_msgv4) TYPE symsgv OPTIONAL
      VALUE(e_dynnr) TYPE sydynnr OPTIONAL
      VALUE(e_scrgr) TYPE cust_scgr OPTIONAL
      VALUE(e_fcode) TYPE taxitabs-fcode OPTIONAL.
  METHODS save_data
    IMPORTING
      !i_activity TYPE aktyp
      !i_kunnr TYPE kunnr.
  METHODS check_data_changed
    CHANGING
      !e_changed TYPE flag.
  METHODS initialize_add_on_data.
  METHODS read_add_on_data
    IMPORTING
      !i_kunnr TYPE kunnr
      !i_bukrs TYPE bukrs OPTIONAL
      !i_vkorg TYPE vkorg OPTIONAL
      !i_vtweg TYPE vtweg OPTIONAL
      !i_spart TYPE spart OPTIONAL.
  METHODS check_account_number
    IMPORTING
      !i_nrobj TYPE nrobj
      !i_kunnr TYPE kunnr.
  METHODS modify_account_number
    IMPORTING
      !i_nrobj TYPE nrobj
    CHANGING
      !c_kunnr TYPE kunnr.
  METHODS preset_values_ccode
    IMPORTING
      !i_activity TYPE aktyp
      !i_kna1 TYPE kna1
    CHANGING
      !e_knb1 TYPE knb1.
  METHODS preset_values_sarea
    IMPORTING
      !i_activity TYPE aktyp
      !i_kna1 TYPE kna1
    CHANGING
      !e_knvv TYPE knvv.
  METHODS get_changedocs_for_own_tables
    CHANGING
      !t_object_type TYPE cdobjectcl_tab.
  METHODS check_add_on_active
    IMPORTING
      !i_screen_group TYPE cust_scgr
    CHANGING
      !e_add_on_active TYPE flag.
ENDINTERFACE.