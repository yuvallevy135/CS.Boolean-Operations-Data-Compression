# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /snap/clion/99/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/99/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yuvallevy/CLionProjects/bytes

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yuvallevy/CLionProjects/bytes/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/bytes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bytes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bytes.dir/flags.make

CMakeFiles/bytes.dir/main.c.o: CMakeFiles/bytes.dir/flags.make
CMakeFiles/bytes.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuvallevy/CLionProjects/bytes/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/bytes.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/bytes.dir/main.c.o   -c /home/yuvallevy/CLionProjects/bytes/main.c

CMakeFiles/bytes.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bytes.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuvallevy/CLionProjects/bytes/main.c > CMakeFiles/bytes.dir/main.c.i

CMakeFiles/bytes.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bytes.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuvallevy/CLionProjects/bytes/main.c -o CMakeFiles/bytes.dir/main.c.s

CMakeFiles/bytes.dir/bytes.c.o: CMakeFiles/bytes.dir/flags.make
CMakeFiles/bytes.dir/bytes.c.o: ../bytes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yuvallevy/CLionProjects/bytes/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/bytes.dir/bytes.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/bytes.dir/bytes.c.o   -c /home/yuvallevy/CLionProjects/bytes/bytes.c

CMakeFiles/bytes.dir/bytes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bytes.dir/bytes.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yuvallevy/CLionProjects/bytes/bytes.c > CMakeFiles/bytes.dir/bytes.c.i

CMakeFiles/bytes.dir/bytes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bytes.dir/bytes.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yuvallevy/CLionProjects/bytes/bytes.c -o CMakeFiles/bytes.dir/bytes.c.s

# Object files for target bytes
bytes_OBJECTS = \
"CMakeFiles/bytes.dir/main.c.o" \
"CMakeFiles/bytes.dir/bytes.c.o"

# External object files for target bytes
bytes_EXTERNAL_OBJECTS =

bytes: CMakeFiles/bytes.dir/main.c.o
bytes: CMakeFiles/bytes.dir/bytes.c.o
bytes: CMakeFiles/bytes.dir/build.make
bytes: CMakeFiles/bytes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yuvallevy/CLionProjects/bytes/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable bytes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bytes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bytes.dir/build: bytes

.PHONY : CMakeFiles/bytes.dir/build

CMakeFiles/bytes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bytes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bytes.dir/clean

CMakeFiles/bytes.dir/depend:
	cd /home/yuvallevy/CLionProjects/bytes/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yuvallevy/CLionProjects/bytes /home/yuvallevy/CLionProjects/bytes /home/yuvallevy/CLionProjects/bytes/cmake-build-debug /home/yuvallevy/CLionProjects/bytes/cmake-build-debug /home/yuvallevy/CLionProjects/bytes/cmake-build-debug/CMakeFiles/bytes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bytes.dir/depend

