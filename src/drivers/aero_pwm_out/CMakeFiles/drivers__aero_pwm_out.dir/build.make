# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tallent/src/px4_src/Firmware

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tallent/src/px4_src/Firmware

# Include any dependencies generated for this target.
include src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/depend.make

# Include the progress variables for this target.
include src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/progress.make

# Include the compile flags for this target's objects.
include src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/flags.make

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/flags.make
src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o: src/drivers/aero_pwm_out/aero_pwm_out.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && /usr/lib/ccache/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o -c /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out/aero_pwm_out.cpp

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.i"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out/aero_pwm_out.cpp > CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.i

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.s"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out/aero_pwm_out.cpp -o CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.s

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.requires:

.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.requires

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.provides: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.requires
	$(MAKE) -f src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/build.make src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.provides.build
.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.provides

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.provides.build: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o


# Object files for target drivers__aero_pwm_out
drivers__aero_pwm_out_OBJECTS = \
"CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o"

# External object files for target drivers__aero_pwm_out
drivers__aero_pwm_out_EXTERNAL_OBJECTS =

src/drivers/aero_pwm_out/libdrivers__aero_pwm_out.a: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o
src/drivers/aero_pwm_out/libdrivers__aero_pwm_out.a: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/build.make
src/drivers/aero_pwm_out/libdrivers__aero_pwm_out.a: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdrivers__aero_pwm_out.a"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && $(CMAKE_COMMAND) -P CMakeFiles/drivers__aero_pwm_out.dir/cmake_clean_target.cmake
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__aero_pwm_out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/build: src/drivers/aero_pwm_out/libdrivers__aero_pwm_out.a

.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/build

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/requires: src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/aero_pwm_out.cpp.o.requires

.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/requires

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/clean:
	cd /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out && $(CMAKE_COMMAND) -P CMakeFiles/drivers__aero_pwm_out.dir/cmake_clean.cmake
.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/clean

src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/depend:
	cd /home/tallent/src/px4_src/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out /home/tallent/src/px4_src/Firmware/src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/drivers/aero_pwm_out/CMakeFiles/drivers__aero_pwm_out.dir/depend

