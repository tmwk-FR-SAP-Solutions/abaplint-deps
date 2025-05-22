INTERFACE if_ex_bdcp_before_write PUBLIC.

  CLASS-METHODS filter_bdcpv_before_write
    IMPORTING
      VALUE(flt_val) TYPE edi_mestyp
      !change_document_header TYPE cdhdr
      !change_document_positions TYPE bdi_cdpost
    CHANGING
      !change_pointers TYPE bdi_bdcpvt.
ENDINTERFACE.