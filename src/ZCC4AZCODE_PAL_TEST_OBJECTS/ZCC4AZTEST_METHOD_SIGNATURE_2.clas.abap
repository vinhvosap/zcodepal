CLASS ZCC4AZTEST_METHOD_SIGNATURE_2 DEFINITION
  INHERITING FROM ZCC4AZTEST_METHOD_SIGNATURE_1
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS public_inst_no_interface_meth1 REDEFINITION.
    METHODS public_inst_no_interface_meth3.

  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS priv_inst_not_interface_meth.

ENDCLASS.



CLASS ZCC4AZTEST_METHOD_SIGNATURE_2 IMPLEMENTATION.


  METHOD priv_inst_not_interface_meth.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD public_inst_no_interface_meth1.
    "only signature is relevant for this test
  ENDMETHOD.


  METHOD public_inst_no_interface_meth3.
    "only signature is relevant for this test
  ENDMETHOD.
ENDCLASS.
