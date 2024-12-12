# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake

# The command to remove a file.
RM = /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nonroot/shared/oops_updated/oops

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nonroot/shared/oops_updated/oops/build

# Include any dependencies generated for this target.
include coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/compiler_depend.make

# Include the progress variables for this target.
include coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/progress.make

# Include the compile flags for this target's objects.
include coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/flags.make

coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o: coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/flags.make
coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o: ../coupled/test/executables/TestCoupledModel.cc
coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o: coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o"
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o -MF CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o.d -o CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o -c /home/nonroot/shared/oops_updated/oops/coupled/test/executables/TestCoupledModel.cc

coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.i"
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops_updated/oops/coupled/test/executables/TestCoupledModel.cc > CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.i

coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.s"
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops_updated/oops/coupled/test/executables/TestCoupledModel.cc -o CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.s

# Object files for target test_coupled_model_qg_l95_parallel
test_coupled_model_qg_l95_parallel_OBJECTS = \
"CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o"

# External object files for target test_coupled_model_qg_l95_parallel
test_coupled_model_qg_l95_parallel_EXTERNAL_OBJECTS =

coupled/test/test_coupled_model_qg_l95_parallel: coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/executables/TestCoupledModel.cc.o
coupled/test/test_coupled_model_qg_l95_parallel: coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/build.make
coupled/test/test_coupled_model_qg_l95_parallel: lib/libqg.so
coupled/test/test_coupled_model_qg_l95_parallel: lib/liblorenz95.so
coupled/test/test_coupled_model_qg_l95_parallel: lib/liboops.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libnetcdff.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libnetcdf.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libmpi_usempif08.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libmpi_mpifh.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libmpi.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libopenblas.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libatlas_f.so.0.36
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libatlas.so.0.36
coupled/test/test_coupled_model_qg_l95_parallel: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
coupled/test/test_coupled_model_qg_l95_parallel: /usr/lib/x86_64-linux-gnu/libpthread.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libfckit.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit_geometry.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit_linalg.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit_maths.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit_mpi.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit_option.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libatlas_io.so
coupled/test/test_coupled_model_qg_l95_parallel: /opt/views/view/lib/libeckit.so
coupled/test/test_coupled_model_qg_l95_parallel: /usr/lib/x86_64-linux-gnu/libm.so
coupled/test/test_coupled_model_qg_l95_parallel: /usr/lib/x86_64-linux-gnu/librt.so
coupled/test/test_coupled_model_qg_l95_parallel: coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_coupled_model_qg_l95_parallel"
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove EXE_FILENAME-NOTFOUND
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_coupled_model_qg_l95_parallel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/build: coupled/test/test_coupled_model_qg_l95_parallel
.PHONY : coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/build

coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/clean:
	cd /home/nonroot/shared/oops_updated/oops/build/coupled/test && $(CMAKE_COMMAND) -P CMakeFiles/test_coupled_model_qg_l95_parallel.dir/cmake_clean.cmake
.PHONY : coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/clean

coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/depend:
	cd /home/nonroot/shared/oops_updated/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops_updated/oops /home/nonroot/shared/oops_updated/oops/coupled/test /home/nonroot/shared/oops_updated/oops/build /home/nonroot/shared/oops_updated/oops/build/coupled/test /home/nonroot/shared/oops_updated/oops/build/coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : coupled/test/CMakeFiles/test_coupled_model_qg_l95_parallel.dir/depend
