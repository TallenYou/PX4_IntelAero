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
include src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/depend.make

# Include the progress variables for this target.
include src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/progress.make

# Include the compile flags for this target's objects.
include src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/flags.make

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/flags.make
src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o: src/drivers/linux_sbus/linux_sbus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && /usr/lib/ccache/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o -c /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus/linux_sbus.cpp

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.i"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus/linux_sbus.cpp > CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.i

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.s"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus/linux_sbus.cpp -o CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.s

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.requires:

.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.requires

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.provides: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.requires
	$(MAKE) -f src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/build.make src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.provides.build
.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.provides

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.provides.build: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o


# Object files for target drivers__linux_sbus
drivers__linux_sbus_OBJECTS = \
"CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o"

# External object files for target drivers__linux_sbus
drivers__linux_sbus_EXTERNAL_OBJECTS =

src/drivers/linux_sbus/libdrivers__linux_sbus.a: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o
src/drivers/linux_sbus/libdrivers__linux_sbus.a: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/build.make
src/drivers/linux_sbus/libdrivers__linux_sbus.a: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdrivers__linux_sbus.a"
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && $(CMAKE_COMMAND) -P CMakeFiles/drivers__linux_sbus.dir/cmake_clean_target.cmake
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers__linux_sbus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/build: src/drivers/linux_sbus/libdrivers__linux_sbus.a

.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/build

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/requires: src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/linux_sbus.cpp.o.requires

.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/requires

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/clean:
	cd /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus && $(CMAKE_COMMAND) -P CMakeFiles/drivers__linux_sbus.dir/cmake_clean.cmake
.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/clean

src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/depend:
	cd /home/tallent/src/px4_src/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus /home/tallent/src/px4_src/Firmware/src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/drivers/linux_sbus/CMakeFiles/drivers__linux_sbus.dir/depend

