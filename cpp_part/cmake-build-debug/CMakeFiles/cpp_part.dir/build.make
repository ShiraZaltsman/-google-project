# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /opt/clion-2019.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2019.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cpp_part.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp_part.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp_part.dir/flags.make

CMakeFiles/cpp_part.dir/main.cpp.o: CMakeFiles/cpp_part.dir/flags.make
CMakeFiles/cpp_part.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp_part.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_part.dir/main.cpp.o -c /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/main.cpp

CMakeFiles/cpp_part.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_part.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/main.cpp > CMakeFiles/cpp_part.dir/main.cpp.i

CMakeFiles/cpp_part.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_part.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/main.cpp -o CMakeFiles/cpp_part.dir/main.cpp.s

CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o: CMakeFiles/cpp_part.dir/flags.make
CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o: ../AutoCompleteData.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o -c /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/AutoCompleteData.cpp

CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/AutoCompleteData.cpp > CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.i

CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/AutoCompleteData.cpp -o CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.s

# Object files for target cpp_part
cpp_part_OBJECTS = \
"CMakeFiles/cpp_part.dir/main.cpp.o" \
"CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o"

# External object files for target cpp_part
cpp_part_EXTERNAL_OBJECTS =

cpp_part: CMakeFiles/cpp_part.dir/main.cpp.o
cpp_part: CMakeFiles/cpp_part.dir/AutoCompleteData.cpp.o
cpp_part: CMakeFiles/cpp_part.dir/build.make
cpp_part: CMakeFiles/cpp_part.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable cpp_part"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_part.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp_part.dir/build: cpp_part

.PHONY : CMakeFiles/cpp_part.dir/build

CMakeFiles/cpp_part.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp_part.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp_part.dir/clean

CMakeFiles/cpp_part.dir/depend:
	cd /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug /home/shira/Desktop/google-project-ShiraZaltsman/cpp_part/cmake-build-debug/CMakeFiles/cpp_part.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpp_part.dir/depend

