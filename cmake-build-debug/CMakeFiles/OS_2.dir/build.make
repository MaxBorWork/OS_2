# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /opt/clion-2018.3.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.3.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/maksim/Документы/OS-2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/maksim/Документы/OS-2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OS_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OS_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OS_2.dir/flags.make

CMakeFiles/OS_2.dir/main.cpp.o: CMakeFiles/OS_2.dir/flags.make
CMakeFiles/OS_2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maksim/Документы/OS-2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OS_2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_2.dir/main.cpp.o -c /home/maksim/Документы/OS-2/main.cpp

CMakeFiles/OS_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maksim/Документы/OS-2/main.cpp > CMakeFiles/OS_2.dir/main.cpp.i

CMakeFiles/OS_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maksim/Документы/OS-2/main.cpp -o CMakeFiles/OS_2.dir/main.cpp.s

CMakeFiles/OS_2.dir/philosopher.cpp.o: CMakeFiles/OS_2.dir/flags.make
CMakeFiles/OS_2.dir/philosopher.cpp.o: ../philosopher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maksim/Документы/OS-2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OS_2.dir/philosopher.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_2.dir/philosopher.cpp.o -c /home/maksim/Документы/OS-2/philosopher.cpp

CMakeFiles/OS_2.dir/philosopher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_2.dir/philosopher.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maksim/Документы/OS-2/philosopher.cpp > CMakeFiles/OS_2.dir/philosopher.cpp.i

CMakeFiles/OS_2.dir/philosopher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_2.dir/philosopher.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maksim/Документы/OS-2/philosopher.cpp -o CMakeFiles/OS_2.dir/philosopher.cpp.s

CMakeFiles/OS_2.dir/fork.cpp.o: CMakeFiles/OS_2.dir/flags.make
CMakeFiles/OS_2.dir/fork.cpp.o: ../fork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/maksim/Документы/OS-2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/OS_2.dir/fork.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OS_2.dir/fork.cpp.o -c /home/maksim/Документы/OS-2/fork.cpp

CMakeFiles/OS_2.dir/fork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_2.dir/fork.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/maksim/Документы/OS-2/fork.cpp > CMakeFiles/OS_2.dir/fork.cpp.i

CMakeFiles/OS_2.dir/fork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_2.dir/fork.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/maksim/Документы/OS-2/fork.cpp -o CMakeFiles/OS_2.dir/fork.cpp.s

# Object files for target OS_2
OS_2_OBJECTS = \
"CMakeFiles/OS_2.dir/main.cpp.o" \
"CMakeFiles/OS_2.dir/philosopher.cpp.o" \
"CMakeFiles/OS_2.dir/fork.cpp.o"

# External object files for target OS_2
OS_2_EXTERNAL_OBJECTS =

OS_2: CMakeFiles/OS_2.dir/main.cpp.o
OS_2: CMakeFiles/OS_2.dir/philosopher.cpp.o
OS_2: CMakeFiles/OS_2.dir/fork.cpp.o
OS_2: CMakeFiles/OS_2.dir/build.make
OS_2: CMakeFiles/OS_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/maksim/Документы/OS-2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable OS_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OS_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OS_2.dir/build: OS_2

.PHONY : CMakeFiles/OS_2.dir/build

CMakeFiles/OS_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OS_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OS_2.dir/clean

CMakeFiles/OS_2.dir/depend:
	cd /home/maksim/Документы/OS-2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/maksim/Документы/OS-2 /home/maksim/Документы/OS-2 /home/maksim/Документы/OS-2/cmake-build-debug /home/maksim/Документы/OS-2/cmake-build-debug /home/maksim/Документы/OS-2/cmake-build-debug/CMakeFiles/OS_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OS_2.dir/depend

