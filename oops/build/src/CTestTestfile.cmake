# CMake generated Testfile for 
# Source directory: /home/nonroot/shared/oops/src
# Build directory: /home/nonroot/shared/oops/build/src
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(oops_coding_norms "/home/nonroot/shared/oops/build/bin/oops_cpplint.py" "--quiet" "--recursive" "/home/nonroot/shared/oops/src")
set_tests_properties(oops_coding_norms PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;634;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_one "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "test/testinput/hello.yaml")
set_tests_properties(test_oops_base_dummy_run_one PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" PASS_REGULAR_EXPRESSION "hello earth" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;645;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_no_validate "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--no-validate" "test/testinput/hello.yaml")
set_tests_properties(test_oops_base_dummy_run_no_validate PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;655;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_validate_zero "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--validate-only" "test/testinput/hello.yaml")
set_tests_properties(test_oops_base_dummy_run_validate_zero PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" PASS_REGULAR_EXPRESSION "Configuration OK" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;665;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_validate_one "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--validate-only" "test/testinput/empty.yaml")
set_tests_properties(test_oops_base_dummy_run_validate_one PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" WILL_FAIL "true" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;676;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_bad_arg_zero "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run")
set_tests_properties(test_oops_base_dummy_run_bad_arg_zero PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" WILL_FAIL "true" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;687;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_bad_arg_one "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--validate-only")
set_tests_properties(test_oops_base_dummy_run_bad_arg_one PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" WILL_FAIL "true" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;696;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_bad_arg_two "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--output-json-schema=x" "test/testinput/hello.yaml")
set_tests_properties(test_oops_base_dummy_run_bad_arg_two PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" WILL_FAIL "true" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;706;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_bad_arg_three "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--validate-only" "test/testinput/hello.yaml" "out")
set_tests_properties(test_oops_base_dummy_run_bad_arg_three PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" WILL_FAIL "true" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;716;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_help "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "--help")
set_tests_properties(test_oops_base_dummy_run_help PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" PASS_REGULAR_EXPRESSION "Usages:" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;726;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_dummy_run_h "/home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run" "-h")
set_tests_properties(test_oops_base_dummy_run_h PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" PASS_REGULAR_EXPRESSION "Usages:" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;736;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_oops_base_variables "/home/nonroot/shared/oops/build/src/test_oops_base_variables" "test/testinput/variables.yaml")
set_tests_properties(test_oops_base_variables PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;746;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_base_posttimer "/home/nonroot/shared/oops/build/src/test_base_posttimer" "test/testinput/empty.yaml")
set_tests_properties(test_base_posttimer PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;751;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_signal_trap "/home/nonroot/shared/oops/build/src/test_util_signal_trap")
set_tests_properties(test_util_signal_trap PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" WILL_FAIL "TRUE" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;756;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_random "/home/nonroot/shared/oops/build/src/test_util_random" "test/testinput/random.yaml")
set_tests_properties(test_util_random PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;761;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_pushstringvector "/home/nonroot/shared/oops/build/src/test_util_pushstringvector" "test/testinput/pushstringvector.yaml")
set_tests_properties(test_util_pushstringvector PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;766;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_parameters "/home/nonroot/shared/oops/build/src/test_util_parameters" "test/testinput/parameters.yaml")
set_tests_properties(test_util_parameters PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;772;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_generic_gc99 "/home/nonroot/shared/oops/build/src/test_generic_gc99")
set_tests_properties(test_generic_gc99 PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;784;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_generic_soar "/home/nonroot/shared/oops/build/src/test_generic_soar")
set_tests_properties(test_generic_soar PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;788;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_coupled_splitvariables "/home/nonroot/shared/oops/build/src/test_coupled_splitvariables")
set_tests_properties(test_coupled_splitvariables PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;792;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_isanypointinvolumeinterior "/home/nonroot/shared/oops/build/src/test_util_isanypointinvolumeinterior" "test/testinput/empty.yaml")
set_tests_properties(test_util_isanypointinvolumeinterior PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;796;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_partialdatetime "/home/nonroot/shared/oops/build/src/test_util_partialdatetime")
set_tests_properties(test_util_partialdatetime PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;801;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_datetime "/home/nonroot/shared/oops/build/src/test_util_datetime")
set_tests_properties(test_util_datetime PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;805;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_duration "/home/nonroot/shared/oops/build/src/test_util_duration")
set_tests_properties(test_util_duration PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;809;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_intset_parser "/home/nonroot/shared/oops/build/src/test_util_intset_parser")
set_tests_properties(test_util_intset_parser PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;813;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_scalarormap "/home/nonroot/shared/oops/build/src/test_util_scalarormap" "test/testinput/empty.yaml")
set_tests_properties(test_util_scalarormap PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;817;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_floatcompare "/home/nonroot/shared/oops/build/src/test_util_floatcompare" "test/testinput/empty.yaml")
set_tests_properties(test_util_floatcompare PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;822;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_compositepath "/home/nonroot/shared/oops/build/src/test_util_compositepath" "test/testinput/empty.yaml")
set_tests_properties(test_util_compositepath PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;827;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_stringfunctions "/home/nonroot/shared/oops/build/src/test_util_stringfunctions" "test/testinput/empty.yaml")
set_tests_properties(test_util_stringfunctions PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;832;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_testreference "/home/nonroot/shared/oops/build/src/test_util_testreference" "test/testinput/empty.yaml")
set_tests_properties(test_util_testreference PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;837;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_range "/home/nonroot/shared/oops/build/src/test_util_range" "test/testinput/empty.yaml")
set_tests_properties(test_util_range PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;842;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_mpi_mpi "/opt/views/view/bin/mpiexec" "-n" "4" "/home/nonroot/shared/oops/build/src/test_mpi_mpi" "test/testinput/mpi.yaml")
set_tests_properties(test_mpi_mpi PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable;mpi" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;847;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_fft_multiple "/home/nonroot/shared/oops/build/src/test_fft_multiple" "test/testinput/fft_multiple.yaml")
set_tests_properties(test_fft_multiple PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;853;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_algorithms "/home/nonroot/shared/oops/build/src/test_util_algorithms" "test/testinput/empty.yaml")
set_tests_properties(test_util_algorithms PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;858;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_comparenvectors "/home/nonroot/shared/oops/build/src/test_util_comparenvectors" "test/testinput/empty.yaml")
set_tests_properties(test_util_comparenvectors PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;863;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_missingvalues "/home/nonroot/shared/oops/build/src/test_util_missingvalues" "test/testinput/empty.yaml")
set_tests_properties(test_util_missingvalues PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;868;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_associativecontainers "/home/nonroot/shared/oops/build/src/test_util_associativecontainers" "test/testinput/empty.yaml")
set_tests_properties(test_util_associativecontainers PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;873;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_propertiesofnvectors "/home/nonroot/shared/oops/build/src/test_util_propertiesofnvectors" "test/testinput/empty.yaml")
set_tests_properties(test_util_propertiesofnvectors PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;878;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_localenvironment "/home/nonroot/shared/oops/build/src/test_util_localenvironment" "test/testinput/empty.yaml")
set_tests_properties(test_util_localenvironment PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;883;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_typetraits "/home/nonroot/shared/oops/build/src/test_util_typetraits" "test/testinput/empty.yaml")
set_tests_properties(test_util_typetraits PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;888;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_wildcard "/home/nonroot/shared/oops/build/src/test_util_wildcard" "test/testinput/empty.yaml")
set_tests_properties(test_util_wildcard PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;893;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_configfunctions "/home/nonroot/shared/oops/build/src/test_util_configfunctions" "test/testinput/empty.yaml")
set_tests_properties(test_util_configfunctions PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;898;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_arrayutil "/opt/views/view/bin/mpiexec" "-n" "2" "/home/nonroot/shared/oops/build/src/test_util_arrayutil" "test/testinput/empty.yaml")
set_tests_properties(test_util_arrayutil PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable;mpi" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;903;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_util_fieldset_helpers_and_operations "/home/nonroot/shared/oops/build/src/test_util_fieldset_helpers_and_operations" "test/testinput/empty.yaml")
set_tests_properties(test_util_fieldset_helpers_and_operations PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;909;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_fullgmres "/home/nonroot/shared/oops/build/src/test_assimilation_fullgmres" "test/testinput/empty.yaml")
set_tests_properties(test_assimilation_fullgmres PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;914;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_rotmat "/home/nonroot/shared/oops/build/src/test_assimilation_rotmat" "test/testinput/empty.yaml")
set_tests_properties(test_assimilation_rotmat PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;919;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_solvematrixequation "/home/nonroot/shared/oops/build/src/test_assimilation_solvematrixequation" "test/testinput/empty.yaml")
set_tests_properties(test_assimilation_solvematrixequation PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;924;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_spectrallmp "/home/nonroot/shared/oops/build/src/test_assimilation_spectrallmp" "test/testinput/spectrallmp.yaml")
set_tests_properties(test_assimilation_spectrallmp PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;929;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_testvector3d "/home/nonroot/shared/oops/build/src/test_assimilation_testvector3d" "test/testinput/empty.yaml")
set_tests_properties(test_assimilation_testvector3d PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;934;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
add_test(test_assimilation_tridiagsolve "/home/nonroot/shared/oops/build/src/test_assimilation_tridiagsolve" "test/testinput/empty.yaml")
set_tests_properties(test_assimilation_tridiagsolve PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;executable" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;448;add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;939;ecbuild_add_test;/home/nonroot/shared/oops/src/CMakeLists.txt;0;")
set_directory_properties(PROPERTIES LABELS "oops")
