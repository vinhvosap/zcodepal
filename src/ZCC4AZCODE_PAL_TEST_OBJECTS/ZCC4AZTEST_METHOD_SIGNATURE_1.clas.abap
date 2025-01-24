CLASS ZCC4AZTEST_METHOD_SIGNATURE_1 DEFINITION
  PUBLIC
  CREATE PUBLIC ABSTRACT.

  PUBLIC SECTION.
    INTERFACES ZCC4AZTEST_METHOD_SIGNATURE_IF.

    CLASS-METHODS public_stat_no_interface_meth.

    METHODS constructor.
    METHODS public_inst_no_interface_meth1 ABSTRACT.
    METHODS public_inst_no_interface_meth2.

  PROTECTED SECTION.
    METHODS prot_inst_not_interface_meth.

  PRIVATE SECTION.
    METHODS priv_inst_not_interface_meth.

ENDCLASS.



CLASS ZCC4AZTEST_METHOD_SIGNATURE_1 IMPLEMENTATION.


  METHOD ZCC4AZTEST_METHOD_SIGNATURE_IF~public_inst_interface_meth.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD constructor.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD priv_inst_not_interface_meth.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD prot_inst_not_interface_meth.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD public_inst_no_interface_meth2.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD public_stat_no_interface_meth.
    "only signature is relevant for this test
  ENDMETHOD.
ENDCLASS.
