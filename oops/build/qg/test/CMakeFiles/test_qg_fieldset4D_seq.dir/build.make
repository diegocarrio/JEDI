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
CMAKE_SOURCE_DIR = /home/nonroot/shared/oops

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nonroot/shared/oops/build

# Include any dependencies generated for this target.
include qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/compiler_depend.make

# Include the progress variables for this target.
include qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/progress.make

# Include the compile flags for this target's objects.
include qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/flags.make

qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o: qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/flags.make
qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o: ../qg/test/executables/TestFieldSet4D.cc
qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o: qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o"
	cd /home/nonroot/shared/oops/build/qg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o -MF CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o.d -o CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o -c /home/nonroot/shared/oops/qg/test/executables/TestFieldSet4D.cc

qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.i"
	cd /home/nonroot/shared/oops/build/qg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops/qg/test/executables/TestFieldSet4D.cc > CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.i

qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.s"
	cd /home/nonroot/shared/oops/build/qg/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops/qg/test/executables/TestFieldSet4D.cc -o CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.s

# Object files for target test_qg_fieldset4D_seq
test_qg_fieldset4D_seq_OBJECTS = \
"CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o"

# External object files for target test_qg_fieldset4D_seq
test_qg_fieldset4D_seq_EXTERNAL_OBJECTS =

qg/test/test_qg_fieldset4D_seq: qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/executables/TestFieldSet4D.cc.o
qg/test/test_qg_fieldset4D_seq: qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/build.make
qg/test/test_qg_fieldset4D_seq: lib/libqg.so
qg/test/test_qg_fieldset4D_seq: lib/liboops.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libnetcdff.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libnetcdf.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libmpi_usempif08.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libmpi_mpifh.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libmpi.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libopenblas.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libatlas_f.so.0.36
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libatlas.so.0.36
qg/test/test_qg_fieldset4D_seq: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
qg/test/test_qg_fieldset4D_seq: /usr/lib/x86_64-linux-gnu/libpthread.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libfckit.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit_geometry.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit_linalg.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit_maths.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit_mpi.so
qg/test/test_qg_fieldset4D_seq: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit_option.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libatlas_io.so
qg/test/test_qg_fieldset4D_seq: /opt/views/view/lib/libeckit.so
qg/test/test_qg_fieldset4D_seq: /usr/lib/x86_64-linux-gnu/libm.so
qg/test/test_qg_fieldset4D_seq: /usr/lib/x86_64-linux-gnu/librt.so
qg/test/test_qg_fieldset4D_seq: qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_qg_fieldset4D_seq"
	cd /home/nonroot/shared/oops/build/qg/test && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove EXE_FILENAME-NOTFOUND
	cd /home/nonroot/shared/oops/build/qg/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_qg_fieldset4D_seq.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/build: qg/test/test_qg_fieldset4D_seq
.PHONY : qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/build

qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/clean:
	cd /home/nonroot/shared/oops/build/qg/test && $(CMAKE_COMMAND) -P CMakeFiles/test_qg_fieldset4D_seq.dir/cmake_clean.cmake
.PHONY : qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/clean

qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/depend:
	cd /home/nonroot/shared/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops /home/nonroot/shared/oops/qg/test /home/nonroot/shared/oops/build /home/nonroot/shared/oops/build/qg/test /home/nonroot/shared/oops/build/qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qg/test/CMakeFiles/test_qg_fieldset4D_seq.dir/depend

