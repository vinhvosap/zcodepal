class test definition final for testing
  duration short
  risk level harmless.

  private section.

    constants:
      begin of co_test_object,
        object_type type if_ci_atc_check=>ty_object-type value 'CLAS',
        object_name type if_ci_atc_check=>ty_object-name value 'ZCC4AZTEST_METHOD_SIGNATURE',
      end of co_test_object.

    methods execute_test_class for testing raising cx_static_check.
endclass.

class test implementation.

  method execute_test_class.
    " Location of expected findings
    final(finding_2_sect_pub) = cl_ci_atc_unit_driver=>get_class_section_object(
       value #( class = co_test_object-object_name kind = cl_ci_atc_unit_driver=>class_section_kind-public ) ).

    final(finding_2_sect_pri) = cl_ci_atc_unit_driver=>get_class_section_object(
       value #( class = co_test_object-object_name kind = cl_ci_atc_unit_driver=>class_section_kind-private ) ).

    final(finding_1_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pub
       position = value #( line = 9 column = 4 ) ).

    final(finding_2_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 2 column = 4 ) ).

    final(finding_3_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 2 column = 4 ) ).

    final(finding_4_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 7 column = 4 ) ).

    final(finding_5_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 7 column = 4 ) ).

    final(finding_6_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 13 column = 4 ) ).

    final(finding_7_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 18 column = 4 ) ).

    final(finding_8_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 22 column = 4 ) ).

    final(finding_9_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 26 column = 4 ) ).

    final(finding_10_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 26 column = 4 ) ).

    final(finding_11_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 41 column = 4 ) ).

    final(finding_12_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 44 column = 4 ) ).

    final(finding_13_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 47 column = 4 ) ).

    final(finding_14_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 51 column = 4 ) ).

    final(finding_15_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 55 column = 4 ) ).

    final(finding_16_loc) = value if_ci_atc_check=>ty_location(
       object = finding_2_sect_pri
       position = value #( line = 64 column = 4 ) ).

    cl_ci_atc_unit_driver=>create_asserter( )->check_and_assert(
      check             = new ZCC4AZMETHOD_SIGNATURE( )
      object            = value #( name = co_test_object-object_name
                                   type = co_test_object-object_type )
      asserter_config   = value #( quickfixes                 = abap_false
                                   remove_findings_with_pcoms = abap_true )
      expected_findings = value #( ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_interface_missing
                                     location   = finding_1_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_type
                                     location   = finding_2_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_3_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_type
                                     location   = finding_4_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_5_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_6_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_7_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_8_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_out_num
                                     location   = finding_9_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_in_bool
                                     location   = finding_10_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_single_exp
                                     location   = finding_11_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_in_bool
                                     location   = finding_12_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_in_bool
                                     location   = finding_13_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_in_bool
                                     location   = finding_14_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_ret_not_result
                                     location   = finding_15_loc )
                                   ( code       = ZCC4AZMETHOD_SIGNATURE=>message_codes-method_sig_param_in_opt
                                     location   = finding_16_loc )
                                 ) ).

  endmethod.

endclass.
