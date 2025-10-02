INTERFACE if_ex_cts_request_check PUBLIC.
  TYPES ty_request TYPE c LENGTH 20.
  TYPES ty_function TYPE c LENGTH 1.
  TYPES: BEGIN OF ty_attribute,
            obj_name  TYPE tr_object,
            obj_type  TYPE tr_objtype,
            trkorr    TYPE trkorr,
            pos       TYPE ddposition,
            attribute TYPE trattr,
            reference TYPE trvalue,
         END OF ty_attribute.
  TYPES ty_t_attributes TYPE STANDARD TABLE OF ty_attribute WITH DEFAULT KEY.

  METHODS check_before_creation.
  METHODS check_before_release
    IMPORTING
      !request    TYPE ty_request OPTIONAL
      !type       TYPE ty_function OPTIONAL
      !owner      TYPE tr_as4user OPTIONAL
      !objects    TYPE tr_objects OPTIONAL
      !keys       TYPE tr_keys OPTIONAL
      !keys_str   TYPE e071k_strtyp OPTIONAL
      !dialog     TYPE abap_bool OPTIONAL
      !tarsystem  TYPE tr_target OPTIONAL
      !adt        TYPE abap_bool OPTIONAL
    CHANGING
      !text       TYPE as4text OPTIONAL
      !attributes TYPE trattributes OPTIONAL
    EXCEPTIONS
      cancel.
  METHODS check_before_changing_owner.
  METHODS check_before_add_objects.
  METHODS check_before_release_slin.
ENDINTERFACE.
