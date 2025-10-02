INTERFACE if_ex_customer_add_data_cs PUBLIC.

  METHODS set_data
    IMPORTING
      VALUE(flt_val)    TYPE cust_scgr
      VALUE(i_activity) TYPE aktyp
      !s_kna1           TYPE kna1 OPTIONAL
      !s_knb1           TYPE knb1 OPTIONAL
      !s_knvv           TYPE knvv OPTIONAL
      !t_knas           TYPE fknas_tab OPTIONAL
      !t_knb5           TYPE fknb5_tab OPTIONAL
      !t_knbk           TYPE fknbk_tab OPTIONAL
      !t_knex           TYPE fknex_tab OPTIONAL
      !t_knva           TYPE fknva_tab OPTIONAL
      !t_knvd           TYPE fknvd_tab OPTIONAL
      !t_knvi           TYPE fknvi_tab OPTIONAL
      !t_knvk           TYPE fknvk_tab OPTIONAL
      !t_knvl           TYPE fknvl_tab OPTIONAL
      !t_knvp           TYPE fknvp_tab OPTIONAL
      !t_knza           TYPE fknza_tab OPTIONAL.
  METHODS get_data
    IMPORTING
      VALUE(flt_val) TYPE cust_scgr
    CHANGING
      !s_kna1        TYPE kna1 OPTIONAL
      !s_knb1        TYPE knb1 OPTIONAL
      !s_knvv        TYPE knvv OPTIONAL
      !t_knas        TYPE fknas_tab OPTIONAL
      !t_knb5        TYPE fknb5_tab OPTIONAL
      !t_knbk        TYPE fknbk_tab OPTIONAL
      !t_knex        TYPE fknex_tab OPTIONAL
      !t_knva        TYPE fknva_tab OPTIONAL
      !t_knvd        TYPE fknvd_tab OPTIONAL
      !t_knvi        TYPE fknvi_tab OPTIONAL
      !t_knvk        TYPE fknvk_tab OPTIONAL
      !t_knvl        TYPE fknvl_tab OPTIONAL
      !t_knvp        TYPE fknvp_tab OPTIONAL
      !t_knza        TYPE fknza_tab OPTIONAL.
  METHODS get_fieldname_for_changedoc
    IMPORTING
      VALUE(flt_val) TYPE cust_scgr
    CHANGING
      !e_fieldname   TYPE tbfdnam.
  METHODS suppress_taxi_tabstrips
    IMPORTING
      VALUE(flt_val)          TYPE cust_scgr
      !i_activity             TYPE aktyp OPTIONAL
      !i_kunnr                TYPE kunnr OPTIONAL
      !i_bukrs                TYPE bukrs OPTIONAL
      !i_vkorg                TYPE vkorg OPTIONAL
      !i_vtweg                TYPE vtweg OPTIONAL
      !i_spart                TYPE spart OPTIONAL
    CHANGING
      !e_not_used_taxi_fcodes TYPE not_used_taxi_fcodes_tab.
  METHODS get_taxi_screen
    IMPORTING
      VALUE(flt_val)         TYPE cust_scgr
      !i_taxi_fcode          TYPE taxitabs-fcode
    CHANGING
      !e_screen              TYPE dynnr
      !e_program             TYPE repid
      !e_headerscreen_layout TYPE char1.
  METHODS set_fcode
    IMPORTING
      VALUE(flt_val) TYPE cust_scgr
    CHANGING
      !i_fcode       TYPE taxitabs-fcode
      !e_fcode_used  TYPE flag.
ENDINTERFACE.