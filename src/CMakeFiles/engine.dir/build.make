# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nayuta/qdd-2-dev-wheel-action/QDD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nayuta/qdd-2-dev-wheel-action/QDD

# Include any dependencies generated for this target.
include src/CMakeFiles/engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/engine.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/engine.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/engine.dir/flags.make

src/CMakeFiles/engine.dir/dd.cpp.o: src/CMakeFiles/engine.dir/flags.make
src/CMakeFiles/engine.dir/dd.cpp.o: src/dd.cpp
src/CMakeFiles/engine.dir/dd.cpp.o: src/CMakeFiles/engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nayuta/qdd-2-dev-wheel-action/QDD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/engine.dir/dd.cpp.o"
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/engine.dir/dd.cpp.o -MF CMakeFiles/engine.dir/dd.cpp.o.d -o CMakeFiles/engine.dir/dd.cpp.o -c /home/nayuta/qdd-2-dev-wheel-action/QDD/src/dd.cpp

src/CMakeFiles/engine.dir/dd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/engine.dir/dd.cpp.i"
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nayuta/qdd-2-dev-wheel-action/QDD/src/dd.cpp > CMakeFiles/engine.dir/dd.cpp.i

src/CMakeFiles/engine.dir/dd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/engine.dir/dd.cpp.s"
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nayuta/qdd-2-dev-wheel-action/QDD/src/dd.cpp -o CMakeFiles/engine.dir/dd.cpp.s

# Object files for target engine
engine_OBJECTS = \
"CMakeFiles/engine.dir/dd.cpp.o"

# External object files for target engine
engine_EXTERNAL_OBJECTS =

src/libengine.a: src/CMakeFiles/engine.dir/dd.cpp.o
src/libengine.a: src/CMakeFiles/engine.dir/build.make
src/libengine.a: src/CMakeFiles/engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/nayuta/qdd-2-dev-wheel-action/QDD/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libengine.a"
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && $(CMAKE_COMMAND) -P CMakeFiles/engine.dir/cmake_clean_target.cmake
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/engine.dir/build: src/libengine.a
.PHONY : src/CMakeFiles/engine.dir/build

src/CMakeFiles/engine.dir/clean:
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD/src && $(CMAKE_COMMAND) -P CMakeFiles/engine.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/engine.dir/clean

src/CMakeFiles/engine.dir/depend:
	cd /home/nayuta/qdd-2-dev-wheel-action/QDD && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nayuta/qdd-2-dev-wheel-action/QDD /home/nayuta/qdd-2-dev-wheel-action/QDD/src /home/nayuta/qdd-2-dev-wheel-action/QDD /home/nayuta/qdd-2-dev-wheel-action/QDD/src /home/nayuta/qdd-2-dev-wheel-action/QDD/src/CMakeFiles/engine.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/engine.dir/depend

