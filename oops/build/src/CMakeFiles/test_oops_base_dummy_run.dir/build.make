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
include src/CMakeFiles/test_oops_base_dummy_run.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/test_oops_base_dummy_run.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/test_oops_base_dummy_run.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/test_oops_base_dummy_run.dir/flags.make

src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o: src/CMakeFiles/test_oops_base_dummy_run.dir/flags.make
src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o: ../src/test/base/DummyRun.cc
src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o: src/CMakeFiles/test_oops_base_dummy_run.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o -MF CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o.d -o CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o -c /home/nonroot/shared/oops/src/test/base/DummyRun.cc

src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.i"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops/src/test/base/DummyRun.cc > CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.i

src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.s"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops/src/test/base/DummyRun.cc -o CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.s

# Object files for target test_oops_base_dummy_run
test_oops_base_dummy_run_OBJECTS = \
"CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o"

# External object files for target test_oops_base_dummy_run
test_oops_base_dummy_run_EXTERNAL_OBJECTS =

bin/test_oops_base_dummy_run: src/CMakeFiles/test_oops_base_dummy_run.dir/test/base/DummyRun.cc.o
bin/test_oops_base_dummy_run: src/CMakeFiles/test_oops_base_dummy_run.dir/build.make
bin/test_oops_base_dummy_run: lib/liboops.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libnetcdff.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libnetcdf.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libmpi_usempif08.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libmpi_mpifh.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libmpi.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libopenblas.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libatlas_f.so.0.36
bin/test_oops_base_dummy_run: /opt/views/view/lib/libatlas.so.0.36
bin/test_oops_base_dummy_run: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/test_oops_base_dummy_run: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libfckit.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit_geometry.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit_linalg.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit_maths.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit_mpi.so
bin/test_oops_base_dummy_run: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit_option.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libatlas_io.so
bin/test_oops_base_dummy_run: /opt/views/view/lib/libeckit.so
bin/test_oops_base_dummy_run: /usr/lib/x86_64-linux-gnu/libm.so
bin/test_oops_base_dummy_run: /usr/lib/x86_64-linux-gnu/librt.so
bin/test_oops_base_dummy_run: src/CMakeFiles/test_oops_base_dummy_run.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/test_oops_base_dummy_run"
	cd /home/nonroot/shared/oops/build/src && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove /home/nonroot/shared/oops/build/bin/test_oops_base_dummy_run
	cd /home/nonroot/shared/oops/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_oops_base_dummy_run.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/test_oops_base_dummy_run.dir/build: bin/test_oops_base_dummy_run
.PHONY : src/CMakeFiles/test_oops_base_dummy_run.dir/build

src/CMakeFiles/test_oops_base_dummy_run.dir/clean:
	cd /home/nonroot/shared/oops/build/src && $(CMAKE_COMMAND) -P CMakeFiles/test_oops_base_dummy_run.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/test_oops_base_dummy_run.dir/clean

src/CMakeFiles/test_oops_base_dummy_run.dir/depend:
	cd /home/nonroot/shared/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops /home/nonroot/shared/oops/src /home/nonroot/shared/oops/build /home/nonroot/shared/oops/build/src /home/nonroot/shared/oops/build/src/CMakeFiles/test_oops_base_dummy_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/test_oops_base_dummy_run.dir/depend

