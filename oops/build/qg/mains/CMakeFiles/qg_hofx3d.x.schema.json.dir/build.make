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

# Utility rule file for qg_hofx3d.x.schema.json.

# Include any custom commands dependencies for this target.
include qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/compiler_depend.make

# Include the progress variables for this target.
include qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/progress.make

qg/mains/CMakeFiles/qg_hofx3d.x.schema.json: bin/qg_hofx3d.x
	cd /home/nonroot/shared/oops/build/etc && /home/nonroot/shared/oops/build/bin/qg_hofx3d.x --output-json-schema=qg_hofx3d.x.schema.json

qg_hofx3d.x.schema.json: qg/mains/CMakeFiles/qg_hofx3d.x.schema.json
qg_hofx3d.x.schema.json: qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/build.make
.PHONY : qg_hofx3d.x.schema.json

# Rule to build all files generated by this target.
qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/build: qg_hofx3d.x.schema.json
.PHONY : qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/build

qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/clean:
	cd /home/nonroot/shared/oops/build/qg/mains && $(CMAKE_COMMAND) -P CMakeFiles/qg_hofx3d.x.schema.json.dir/cmake_clean.cmake
.PHONY : qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/clean

qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/depend:
	cd /home/nonroot/shared/oops/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nonroot/shared/oops /home/nonroot/shared/oops/qg/mains /home/nonroot/shared/oops/build /home/nonroot/shared/oops/build/qg/mains /home/nonroot/shared/oops/build/qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qg/mains/CMakeFiles/qg_hofx3d.x.schema.json.dir/depend

