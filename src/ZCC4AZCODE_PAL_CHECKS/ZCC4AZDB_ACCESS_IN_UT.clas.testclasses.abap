class test definition final for testing
  duration short
  risk level harmless.

  private section.
    constants test_class type c length 30 value 'ZCC4AZTEST_DB_ACCESS_IN_UT'.

    methods execute_test_class for testing raising cx_static_check.
endclass.

class test implementation.

  method execute_test_class.

    data(finding_1) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 13 column = 4 ) ).
    data(finding_2) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 14 column = 4 ) ).
    data(finding_3) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 15 column = 4 ) ).
    data(finding_4) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 16 column = 4 ) ).
    data(finding_5) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 20 column = 4 ) ).
    data(finding_6) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 21 column = 4 ) ).
    data(finding_7) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 22 column = 4 ) ).
    data(finding_8) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 30 column = 4 ) ).
    data(finding_9) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 31 column = 4 ) ).
    data(finding_10) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 49 column = 4 ) ).
    data(finding_11) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 50 column = 4 ) ).
    data(finding_12) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 51 column = 4 ) ).
    data(finding_13) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 52 column = 4 ) ).
    data(finding_14) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 56 column = 4 ) ).
    data(finding_15) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 57 column = 4 ) ).
    data(finding_16) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 58 column = 4 ) ).
    data(finding_17) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 66 column = 4 ) ).
    data(finding_18) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 67 column = 4 ) ).
    data(finding_19) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 87 column = 4 ) ).
    data(finding_20) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 88 column = 4 ) ).
    data(finding_21) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 92 column = 4 ) ).
    data(finding_22) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 123 column = 4 ) ).
    data(finding_23) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 124 column = 4 ) ).
    data(finding_24) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 128 column = 4 ) ).
    data(finding_25) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 233 column = 4 ) ).
    data(finding_26) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 235 column = 4 ) ).
    data(finding_27) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 236 column = 4 ) ).
    data(finding_28) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 237 column = 4 ) ).
    data(finding_29) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 241 column = 4 ) ).
    data(finding_30) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 242 column = 4 ) ).
    data(finding_31) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 243 column = 4 ) ).
    data(finding_32) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 251 column = 4 ) ).
    data(finding_33) = value if_ci_atc_check=>ty_location(
      object = value #( type = 'PROG' name = 'ZCC4AZTEST_DB_ACCESS_IN_UT====CCAU' )
      position = value #( line = 252 column = 4 ) ).

    cl_ci_atc_unit_driver=>create_asserter( )->check_and_assert(
          check             = new ZCC4AZDB_ACCESS_IN_UT( )
          object            = value #( type = 'CLAS' name = test_class )
          expected_findings = value #( ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_1 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_2 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_3 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_4 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_5 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_6 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_7 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_8 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_9 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_10 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_11 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_12 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_13 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_14 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_15 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_16 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_17 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_18 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_19 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_20 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_21 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_22 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_23 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_24 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_25 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_26 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_27 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_28 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_29 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_30 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_31 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_32 )
                                       ( code = ZCC4AZDB_ACCESS_IN_UT=>finding_code
                                         location = finding_33 ) )
          asserter_config   = value #( quickfixes = abap_false ) ).
  endmethod.

endclass.
