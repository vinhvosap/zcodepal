class ZCC4AZTEST_AVOID_SELF_REF_SUP definition
  public
  create public .

public section.
  methods super_meth
    importing imp type i.
protected section.
private section.
endclass.



class ZCC4AZTEST_AVOID_SELF_REF_SUP implementation.

  method super_meth.

  endmethod.

endclass.
