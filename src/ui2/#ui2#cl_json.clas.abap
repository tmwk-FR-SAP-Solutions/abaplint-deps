CLASS /ui2/cl_json DEFINITION PUBLIC.
  PUBLIC SECTION.

    TYPES json TYPE string.
    TYPES:
      BEGIN OF name_mapping,
        abap TYPE abap_compname,
        json TYPE string,
      END OF name_mapping.
    TYPES:
      name_mappings    TYPE HASHED TABLE OF name_mapping WITH UNIQUE KEY abap.
    TYPES:
      ref_tab          TYPE STANDARD TABLE OF REF TO data WITH DEFAULT KEY.
    TYPES bool TYPE char1.
    TYPES tribool TYPE char1.
    TYPES pretty_name_mode TYPE char1.

    CONSTANTS:
      BEGIN OF pretty_mode,
        none          TYPE char1  VALUE ``,
        low_case      TYPE char1  VALUE 'L',
        camel_case    TYPE char1  VALUE 'X',
        extended      TYPE char1  VALUE 'Y',
        user          TYPE char1  VALUE 'U',
        user_low_case TYPE char1  VALUE 'C',
      END OF  pretty_mode.
    CONSTANTS:
      BEGIN OF c_bool,
        true  TYPE bool  VALUE 'X',
        false TYPE bool  VALUE '',
      END OF  c_bool.
    CONSTANTS:
      BEGIN OF c_tribool,
        true      TYPE tribool  VALUE c_bool-true,
        false     TYPE tribool  VALUE '-',
        undefined TYPE tribool  VALUE ``,
      END OF  c_tribool.

    CLASS-METHODS deserialize
      IMPORTING
      !json             TYPE json OPTIONAL
      !jsonx            TYPE xstring OPTIONAL
      !pretty_name      TYPE pretty_name_mode DEFAULT pretty_mode-none
      !assoc_arrays     TYPE bool DEFAULT c_bool-false
      !assoc_arrays_opt TYPE bool DEFAULT c_bool-false
      !name_mappings    TYPE name_mappings OPTIONAL
      !conversion_exits TYPE bool DEFAULT c_bool-false
      !hex_as_base64    TYPE bool DEFAULT c_bool-true
      CHANGING
      !data             TYPE data.
    CLASS-METHODS serialize
      IMPORTING
      !data             TYPE data
      !compress         TYPE bool DEFAULT c_bool-false
      !name             TYPE string OPTIONAL
      !pretty_name      TYPE pretty_name_mode DEFAULT pretty_mode-none
      !type_descr       TYPE REF TO cl_abap_typedescr OPTIONAL
      !assoc_arrays     TYPE bool DEFAULT c_bool-false
      !ts_as_iso8601    TYPE bool DEFAULT c_bool-false
      !expand_includes  TYPE bool DEFAULT c_bool-true
      !assoc_arrays_opt TYPE bool DEFAULT c_bool-false
      !numc_as_string   TYPE bool DEFAULT c_bool-false
      !name_mappings    TYPE name_mappings OPTIONAL
      !conversion_exits TYPE bool DEFAULT c_bool-false
      !format_output    TYPE bool DEFAULT c_bool-false
      !hex_as_base64    TYPE bool DEFAULT c_bool-true
      RETURNING
      VALUE(r_json)     TYPE json.
ENDCLASS.

CLASS /ui2/cl_json IMPLEMENTATION.
  METHOD deserialize.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD serialize.
    RETURN. " todo, implement method
  ENDMETHOD.

ENDCLASS.