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
include src/CMakeFiles/test_oops_base_variables.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/test_oops_base_variables.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/test_oops_base_variables.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/test_oops_base_variables.dir/flags.make

src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o: src/CMakeFiles/test_oops_base_variables.dir/flags.make
src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o: ../src/test/base/Variables.cc
src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o: src/CMakeFiles/test_oops_base_variables.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o"
	cd /home/nonroot/shared/oops_updated/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o -MF CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o.d -o CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o -c /home/nonroot/shared/oops_updated/oops/src/test/base/Variables.cc

src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.i"
	cd /home/nonroot/shared/oops_updated/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops_updated/oops/src/test/base/Variables.cc > CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.i

src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.s"
	cd /home/nonroot/shared/oops_updated/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops_updated/oops/src/test/base/Variables.cc -o CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.s

# Object files for target test_oops_base_variables
test_oops_base_variables_OBJECTS = \
"CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o"

# External object files for target test_oops_base_variables
test_oops_base_variables_EXTERNAL_OBJECTS =

src/test_oops_base_variables: src/CMakeFiles/test_oops_base_variables.dir/test/base/Variables.cc.o
src/test_oops_base_variables: src/CMakeFiles/test_oops_base_variables.dir/build.make
src/test_oops_base_variables: lib/liboops.so
src/test_oops_base_variables: /opt/views/view/lib/libnetcdff.so
src/test_oops_base_variables: /opt/views/view/lib/libnetcdf.so
src/test_oops_base_variables: /opt/views/view/lib/libmpi_usempif08.so
src/test_oops_base_variables: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
src/test_oops_base_variables: /opt/views/view/lib/libmpi_mpifh.so
src/test_oops_base_variables: /opt/views/view/lib/libmpi.so
src/test_oops_base_variables: /opt/views/view/lib/libopenblas.so
src/test_oops_base_variables: /opt/views/view/lib/libatlas_f.so.0.36
src/test_oops_base_variables: /opt/views/view/lib/libatlas.so.0.36
src/test_oops_base_variables: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
src/test_oops_base_variables: /usr/lib/x86_64-linux-gnu/libpthread.so
src/test_oops_base_variables: /opt/views/view/lib/libfckit.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit_geometry.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit_linalg.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit_maths.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit_mpi.so
src/test_oops_base_variables: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit_option.so
src/test_oops_base_variables: /opt/views/view/lib/libatlas_io.so
src/test_oops_base_variables: /opt/views/view/lib/libeckit.so
src/test_oops_base_variables: /usr/lib/x86_64-linux-gnu/libm.so
src/test_oops_base_variables: /usr/lib/x86_64-linux-gnu/librt.so
src/test_oops_base_variables: src/CMakeFiles/test_oops_base_variables.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_oops_base_variables"
	cd /home/nonroot/shared/oops_updated/oops/build/src && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove EXE_FILENAME-NOTFOUND
	cd /home/nonroot/shared/oops_updated/oops/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_oops_base_variables.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/test_oops_base_variables.dir/build: src/test_oops_base_variables
.PHONY : src/CMakeFiles/test_oops_base_variables.dir/build

src/CMakeFiles/test_oops_base_variables.dir/clean:
	cd /home/nonroot/shared/oops_updated/oops/build/src && $(CMAKE_COMMAND) -P CMakeFiles/test_oops_base_variables.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/test_oops_base_variables.dir/clean

src/CMakeFiles/test_oops_base_variables.dir/depend:
	cd /home/nonroot/shared/oops_updated/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops_updated/oops /home/nonroot/shared/oops_updated/oops/src /home/nonroot/shared/oops_updated/oops/build /home/nonroot/shared/oops_updated/oops/build/src /home/nonroot/shared/oops_updated/oops/build/src/CMakeFiles/test_oops_base_variables.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/test_oops_base_variables.dir/depend

