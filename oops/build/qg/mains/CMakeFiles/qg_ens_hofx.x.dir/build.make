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
include qg/mains/CMakeFiles/qg_ens_hofx.x.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include qg/mains/CMakeFiles/qg_ens_hofx.x.dir/compiler_depend.make

# Include the progress variables for this target.
include qg/mains/CMakeFiles/qg_ens_hofx.x.dir/progress.make

# Include the compile flags for this target's objects.
include qg/mains/CMakeFiles/qg_ens_hofx.x.dir/flags.make

qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o: qg/mains/CMakeFiles/qg_ens_hofx.x.dir/flags.make
qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o: ../qg/mains/qgEnsHofX.cc
qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o: qg/mains/CMakeFiles/qg_ens_hofx.x.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o"
	cd /home/nonroot/shared/oops/build/qg/mains && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o -MF CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o.d -o CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o -c /home/nonroot/shared/oops/qg/mains/qgEnsHofX.cc

qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.i"
	cd /home/nonroot/shared/oops/build/qg/mains && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nonroot/shared/oops/qg/mains/qgEnsHofX.cc > CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.i

qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.s"
	cd /home/nonroot/shared/oops/build/qg/mains && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nonroot/shared/oops/qg/mains/qgEnsHofX.cc -o CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.s

# Object files for target qg_ens_hofx.x
qg_ens_hofx_x_OBJECTS = \
"CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o"

# External object files for target qg_ens_hofx.x
qg_ens_hofx_x_EXTERNAL_OBJECTS =

bin/qg_ens_hofx.x: qg/mains/CMakeFiles/qg_ens_hofx.x.dir/qgEnsHofX.cc.o
bin/qg_ens_hofx.x: qg/mains/CMakeFiles/qg_ens_hofx.x.dir/build.make
bin/qg_ens_hofx.x: lib/libqg.so
bin/qg_ens_hofx.x: lib/liboops.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libnetcdff.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libnetcdf.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libmpi_usempif08.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libmpi_usempi_ignore_tkr.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libmpi_mpifh.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libmpi.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libopenblas.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libatlas_f.so.0.36
bin/qg_ens_hofx.x: /opt/views/view/lib/libatlas.so.0.36
bin/qg_ens_hofx.x: /usr/lib/gcc/x86_64-linux-gnu/9/libgomp.so
bin/qg_ens_hofx.x: /usr/lib/x86_64-linux-gnu/libpthread.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libfckit.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit_geometry.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit_linalg.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit_maths.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit_mpi.so
bin/qg_ens_hofx.x: /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/openmpi-5.0.1-fnzlesn576jnghsietwifwscpg3bxm6w/lib/libmpi.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit_option.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libatlas_io.so
bin/qg_ens_hofx.x: /opt/views/view/lib/libeckit.so
bin/qg_ens_hofx.x: /usr/lib/x86_64-linux-gnu/libm.so
bin/qg_ens_hofx.x: /usr/lib/x86_64-linux-gnu/librt.so
bin/qg_ens_hofx.x: qg/mains/CMakeFiles/qg_ens_hofx.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nonroot/shared/oops/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/qg_ens_hofx.x"
	cd /home/nonroot/shared/oops/build/qg/mains && /opt/software/linux-ubuntu20.04-x86_64/gcc-9.4.0/cmake-3.23.1-p5xbwmjn3ezq3f6cwtktxlrvr6mdm4zu/bin/cmake -E remove /home/nonroot/shared/oops/build/bin/qg_ens_hofx.x
	cd /home/nonroot/shared/oops/build/qg/mains && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/qg_ens_hofx.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qg/mains/CMakeFiles/qg_ens_hofx.x.dir/build: bin/qg_ens_hofx.x
.PHONY : qg/mains/CMakeFiles/qg_ens_hofx.x.dir/build

qg/mains/CMakeFiles/qg_ens_hofx.x.dir/clean:
	cd /home/nonroot/shared/oops/build/qg/mains && $(CMAKE_COMMAND) -P CMakeFiles/qg_ens_hofx.x.dir/cmake_clean.cmake
.PHONY : qg/mains/CMakeFiles/qg_ens_hofx.x.dir/clean

qg/mains/CMakeFiles/qg_ens_hofx.x.dir/depend:
	cd /home/nonroot/shared/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops /home/nonroot/shared/oops/qg/mains /home/nonroot/shared/oops/build /home/nonroot/shared/oops/build/qg/mains /home/nonroot/shared/oops/build/qg/mains/CMakeFiles/qg_ens_hofx.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qg/mains/CMakeFiles/qg_ens_hofx.x.dir/depend

