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
include src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/depend.make

# Include the progress variables for this target.
include src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/progress.make

# Include the compile flags for this target's objects.
include src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/flags.make

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/flags.make
src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o: src/platforms/posix/drivers/df_aeroadc_wrapper/df_aeroadc_wrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o"
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && /usr/lib/ccache/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o -c /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper/df_aeroadc_wrapper.cpp

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.i"
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper/df_aeroadc_wrapper.cpp > CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.i

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.s"
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper/df_aeroadc_wrapper.cpp -o CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.s

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.requires:

.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.requires

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.provides: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.requires
	$(MAKE) -f src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/build.make src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.provides.build
.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.provides

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.provides.build: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o


# Object files for target platforms__posix__drivers__df_aeroadc_wrapper
platforms__posix__drivers__df_aeroadc_wrapper_OBJECTS = \
"CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o"

# External object files for target platforms__posix__drivers__df_aeroadc_wrapper
platforms__posix__drivers__df_aeroadc_wrapper_EXTERNAL_OBJECTS =

src/platforms/posix/drivers/df_aeroadc_wrapper/libplatforms__posix__drivers__df_aeroadc_wrapper.a: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o
src/platforms/posix/drivers/df_aeroadc_wrapper/libplatforms__posix__drivers__df_aeroadc_wrapper.a: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/build.make
src/platforms/posix/drivers/df_aeroadc_wrapper/libplatforms__posix__drivers__df_aeroadc_wrapper.a: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tallent/src/px4_src/Firmware/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libplatforms__posix__drivers__df_aeroadc_wrapper.a"
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/cmake_clean_target.cmake
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/build: src/platforms/posix/drivers/df_aeroadc_wrapper/libplatforms__posix__drivers__df_aeroadc_wrapper.a

.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/build

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/requires: src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/df_aeroadc_wrapper.cpp.o.requires

.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/requires

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/clean:
	cd /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper && $(CMAKE_COMMAND) -P CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/cmake_clean.cmake
.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/clean

src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/depend:
	cd /home/tallent/src/px4_src/Firmware && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper /home/tallent/src/px4_src/Firmware /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper /home/tallent/src/px4_src/Firmware/src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/platforms/posix/drivers/df_aeroadc_wrapper/CMakeFiles/platforms__posix__drivers__df_aeroadc_wrapper.dir/depend

