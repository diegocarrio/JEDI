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
include l95/test/CMakeFiles/test_l95_obsaux.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include l95/test/CMakeFiles/test_l95_obsaux.dir/compiler_depend.make

# Include the progress variables for this target.
include l95/test/CMakeFiles/test_l95_obsaux.dir/progress.make

# Include the compile flags for this target's objects.
include l95/test/CMakeFiles/test_l95_obsaux.dir/flags.make

l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o: l95/test/CMakeFiles/test_l95_obsaux.dir/flags.make
l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o: ../l95/test/executables/TestObsAuxControl.cc
l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o: l95/test/CMakeFiles/test_l95_obsaux.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o"
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o -MF CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o.d -o CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o -c /home/nonroot/shared/oops_updated/oops/l95/test/executables/TestObsAuxControl.cc

l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.i"
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops_updated/oops/l95/test/executables/TestObsAuxControl.cc > CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.i

l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.s"
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops_updated/oops/l95/test/executables/TestObsAuxControl.cc -o CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.s

# Object files for target test_l95_obsaux
test_l95_obsaux_OBJECTS = \
"CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o"

# External object files for target test_l95_obsaux
test_l95_obsaux_EXTERNAL_OBJECTS =

l95/test/test_l95_obsaux: l95/test/CMakeFiles/test_l95_obsaux.dir/executables/TestObsAuxControl.cc.o
l95/test/test_l95_obsaux: l95/test/CMakeFiles/test_l95_obsaux.dir/build.make
l95/test/test_l95_obsaux: lib/liblorenz95.so
l95/test/test_l95_obsaux: lib/liboops.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libnetcdff.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libnetcdf.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libmpi_usempif08.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libmpi_mpifh.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libmpi.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libopenblas.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libatlas_f.so.0.36
l95/test/test_l95_obsaux: /opt/views/view/lib/libatlas.so.0.36
l95/test/test_l95_obsaux: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
l95/test/test_l95_obsaux: /usr/lib/x86_64-linux-gnu/libpthread.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libfckit.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit_geometry.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit_linalg.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit_maths.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit_mpi.so
l95/test/test_l95_obsaux: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit_option.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libatlas_io.so
l95/test/test_l95_obsaux: /opt/views/view/lib/libeckit.so
l95/test/test_l95_obsaux: /usr/lib/x86_64-linux-gnu/libm.so
l95/test/test_l95_obsaux: /usr/lib/x86_64-linux-gnu/librt.so
l95/test/test_l95_obsaux: l95/test/CMakeFiles/test_l95_obsaux.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops_updated/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_l95_obsaux"
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove EXE_FILENAME-NOTFOUND
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_l95_obsaux.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
l95/test/CMakeFiles/test_l95_obsaux.dir/build: l95/test/test_l95_obsaux
.PHONY : l95/test/CMakeFiles/test_l95_obsaux.dir/build

l95/test/CMakeFiles/test_l95_obsaux.dir/clean:
	cd /home/nonroot/shared/oops_updated/oops/build/l95/test && $(CMAKE_COMMAND) -P CMakeFiles/test_l95_obsaux.dir/cmake_clean.cmake
.PHONY : l95/test/CMakeFiles/test_l95_obsaux.dir/clean

l95/test/CMakeFiles/test_l95_obsaux.dir/depend:
	cd /home/nonroot/shared/oops_updated/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops_updated/oops /home/nonroot/shared/oops_updated/oops/l95/test /home/nonroot/shared/oops_updated/oops/build /home/nonroot/shared/oops_updated/oops/build/l95/test /home/nonroot/shared/oops_updated/oops/build/l95/test/CMakeFiles/test_l95_obsaux.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : l95/test/CMakeFiles/test_l95_obsaux.dir/depend

