# CMake generated Testfile for 
# Source directory: /home/nonroot/shared/oops/qg
# Build directory: /home/nonroot/shared/oops/build/qg
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(qg_coding_norms "/home/nonroot/shared/oops/build/bin/oops_cpplint.py" "--quiet" "--recursive" "/home/nonroot/shared/oops/qg")
set_tests_properties(qg_coding_norms PROPERTIES  ENVIRONMENT "OMP_NUM_THREADS=1" LABELS "oops;script" _BACKTRACE_TRIPLES "/opt/views/._view/cimg64v3ckgivk7zqxf3vyx3wfc3nvek/share/ecbuild/cmake/ecbuild_add_test.cmake;446;add_test;/home/nonroot/shared/oops/qg/CMakeLists.txt;6;ecbuild_add_test;/home/nonroot/shared/oops/qg/CMakeLists.txt;0;")
subdirs("model")
subdirs("mains")
subdirs("test")
set_directory_properties(PROPERTIES LABELS "oops")
