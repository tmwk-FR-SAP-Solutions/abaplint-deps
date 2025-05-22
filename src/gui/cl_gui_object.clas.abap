CLASS cl_gui_object DEFINITION PUBLIC.
  PUBLIC SECTION.

    CLASS-DATA activex TYPE char01 READ-ONLY.
    CLASS-DATA catt_activ TYPE char01 READ-ONLY.
    CLASS-DATA gui_is_running TYPE char01 READ-ONLY.

    CLASS-DATA h_gui TYPE ole2_object READ-ONLY.
    CLASS-DATA is_init TYPE char1 READ-ONLY.
    CLASS-DATA javabean TYPE char01 READ-ONLY.
    CLASS-DATA www_active TYPE char01 READ-ONLY.

    CLASS-METHODS class_constructor.
    METHODS is_valid
      EXPORTING
      VALUE(result) TYPE i.
    METHODS constructor
      IMPORTING
      VALUE(clsid) TYPE c OPTIONAL
      VALUE(lifetime) TYPE i OPTIONAL
      EXCEPTIONS
      create_error
      lifetime_error.
    METHODS free
      EXCEPTIONS
      cntl_error
      cntl_system_error.
ENDCLASS.

CLASS cl_gui_object IMPLEMENTATION.
  METHOD class_constructor.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD is_valid.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD constructor.
    RETURN. " todo, implement method
  ENDMETHOD.
  METHOD free.
    RETURN. " todo, implement method
  ENDMETHOD.

ENDCLASS.