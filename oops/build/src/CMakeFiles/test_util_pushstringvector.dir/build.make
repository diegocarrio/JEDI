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
include src/CMakeFiles/test_util_pushstringvector.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/test_util_pushstringvector.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/test_util_pushstringvector.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/test_util_pushstringvector.dir/flags.make

src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o: src/CMakeFiles/test_util_pushstringvector.dir/flags.make
src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o: ../src/test/base/FCString.cc
src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o: src/CMakeFiles/test_util_pushstringvector.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o -MF CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o.d -o CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o -c /home/nonroot/shared/oops/src/test/base/FCString.cc

src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.i"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops/src/test/base/FCString.cc > CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.i

src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.s"
	cd /home/nonroot/shared/oops/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops/src/test/base/FCString.cc -o CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.s

# Object files for target test_util_pushstringvector
test_util_pushstringvector_OBJECTS = \
"CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o"

# External object files for target test_util_pushstringvector
test_util_pushstringvector_EXTERNAL_OBJECTS =

src/test_util_pushstringvector: src/CMakeFiles/test_util_pushstringvector.dir/test/base/FCString.cc.o
src/test_util_pushstringvector: src/CMakeFiles/test_util_pushstringvector.dir/build.make
src/test_util_pushstringvector: lib/liboops.so
src/test_util_pushstringvector: /opt/views/view/lib/libnetcdff.so
src/test_util_pushstringvector: /opt/views/view/lib/libnetcdf.so
src/test_util_pushstringvector: /opt/views/view/lib/libmpi_usempif08.so
src/test_util_pushstringvector: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
src/test_util_pushstringvector: /opt/views/view/lib/libmpi_mpifh.so
src/test_util_pushstringvector: /opt/views/view/lib/libmpi.so
src/test_util_pushstringvector: /opt/views/view/lib/libopenblas.so
src/test_util_pushstringvector: /opt/views/view/lib/libatlas_f.so.0.36
src/test_util_pushstringvector: /opt/views/view/lib/libatlas.so.0.36
src/test_util_pushstringvector: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
src/test_util_pushstringvector: /usr/lib/x86_64-linux-gnu/libpthread.so
src/test_util_pushstringvector: /opt/views/view/lib/libfckit.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit_geometry.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit_linalg.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit_maths.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit_mpi.so
src/test_util_pushstringvector: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit_option.so
src/test_util_pushstringvector: /opt/views/view/lib/libatlas_io.so
src/test_util_pushstringvector: /opt/views/view/lib/libeckit.so
src/test_util_pushstringvector: /usr/lib/x86_64-linux-gnu/libm.so
src/test_util_pushstringvector: /usr/lib/x86_64-linux-gnu/librt.so
src/test_util_pushstringvector: src/CMakeFiles/test_util_pushstringvector.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_util_pushstringvector"
	cd /home/nonroot/shared/oops/build/src && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove EXE_FILENAME-NOTFOUND
	cd /home/nonroot/shared/oops/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_util_pushstringvector.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/test_util_pushstringvector.dir/build: src/test_util_pushstringvector
.PHONY : src/CMakeFiles/test_util_pushstringvector.dir/build

src/CMakeFiles/test_util_pushstringvector.dir/clean:
	cd /home/nonroot/shared/oops/build/src && $(CMAKE_COMMAND) -P CMakeFiles/test_util_pushstringvector.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/test_util_pushstringvector.dir/clean

src/CMakeFiles/test_util_pushstringvector.dir/depend:
	cd /home/nonroot/shared/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops /home/nonroot/shared/oops/src /home/nonroot/shared/oops/build /home/nonroot/shared/oops/build/src /home/nonroot/shared/oops/build/src/CMakeFiles/test_util_pushstringvector.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/test_util_pushstringvector.dir/depend

