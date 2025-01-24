class test_without definition final for testing
duration short.

  private section.
    methods without.
endclass.

class test_without implementation.
  method without.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.

endclass.

class test_harmless definition final for testing
duration short
risk level harmless.

  private section.
    methods harmless.
endclass.

class test_harmless implementation.
  method harmless.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.

endclass.

class test_dangerous definition final for testing
duration short
risk level dangerous.

  private section.
    methods dangerous.
endclass.

class test_dangerous implementation.
  method dangerous.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.

endclass.

class test_critical definition final for testing
duration short
risk level critical.

  private section.
    methods critical.
endclass.

class test_critical implementation.
  method critical.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.
endclass.

class test_environment_in_definition definition final for testing
duration short
risk level critical.

  private section.
    methods environment.
    data test_environment type ref to cl_osql_test_environment.

endclass.

class test_environment_in_definition implementation.
  method environment.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.
endclass.

class test_environment_in_method definition final for testing
duration short
risk level critical.

  private section.
    methods environment.


endclass.

class test_environment_in_method implementation.
  method environment.
    data test_environment type ref to if_cds_test_environment.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). endselect.
    insert ZCC4AZTEST_DB from @wa.
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    modify ZCC4AZTEST_DB from table @(
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ).
    rollback entities.
    commit entities.

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.
    commit work.
  endmethod.
endclass.

class test_pseudo_comments definition final for testing
duration short
risk level harmless.

  private section.
    methods pseudo_comments.


endclass.

class test_pseudo_comments implementation.
  method pseudo_comments.
    data wa type ZCC4AZTEST_DB.
    wa = value #( user_id = 'Y' ).

    select * from ZCC4AZTEST_DB where first_name = '' into @data(x). "#EC DB_ACCESS_UT
    endselect.
    insert ZCC4AZTEST_DB from @wa.                    "#EC DB_ACCESS_UT
    update ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ). "#EC DB_ACCESS_UT
    modify ZCC4AZTEST_DB from table @(                "#EC DB_ACCESS_UT
        value #( ( user_id = 'X' )
        ( user_id = 'Y' )
        ( user_id = 'Z' ) ) ).
    delete ZCC4AZTEST_DB from @( value #( user_id = 'X' ) ). "#EC DB_ACCESS_UT
    rollback entities.                                "#EC DB_ACCESS_UT
    commit entities.                                  "#EC DB_ACCESS_UT

    data a type standard table of ZCC4AZTEST_DB.
    ##ITAB_KEY_IN_SELECT
    select * from @a as abc where abc~first_name eq '' into @data(y).endselect.
    insert value #( first_name = 'ME' ) into table a.
    modify table a from value #( first_name = 'ME' ).
    delete a where first_name = 'ME'.
    rollback work.                                    "#EC DB_ACCESS_UT
    commit work.                                      "#EC DB_ACCESS_UT
  endmethod.
endclass.
