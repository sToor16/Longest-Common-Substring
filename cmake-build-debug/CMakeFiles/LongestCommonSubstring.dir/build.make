# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/toor/Github/CSE 5311/Longest Common Substring"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/LongestCommonSubstring.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LongestCommonSubstring.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LongestCommonSubstring.dir/flags.make

CMakeFiles/LongestCommonSubstring.dir/main.cpp.o: CMakeFiles/LongestCommonSubstring.dir/flags.make
CMakeFiles/LongestCommonSubstring.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LongestCommonSubstring.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LongestCommonSubstring.dir/main.cpp.o -c "/Users/toor/Github/CSE 5311/Longest Common Substring/main.cpp"

CMakeFiles/LongestCommonSubstring.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LongestCommonSubstring.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/toor/Github/CSE 5311/Longest Common Substring/main.cpp" > CMakeFiles/LongestCommonSubstring.dir/main.cpp.i

CMakeFiles/LongestCommonSubstring.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LongestCommonSubstring.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/toor/Github/CSE 5311/Longest Common Substring/main.cpp" -o CMakeFiles/LongestCommonSubstring.dir/main.cpp.s

CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.requires

CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.provides: CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/LongestCommonSubstring.dir/build.make CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.provides

CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.provides.build: CMakeFiles/LongestCommonSubstring.dir/main.cpp.o


# Object files for target LongestCommonSubstring
LongestCommonSubstring_OBJECTS = \
"CMakeFiles/LongestCommonSubstring.dir/main.cpp.o"

# External object files for target LongestCommonSubstring
LongestCommonSubstring_EXTERNAL_OBJECTS =

LongestCommonSubstring: CMakeFiles/LongestCommonSubstring.dir/main.cpp.o
LongestCommonSubstring: CMakeFiles/LongestCommonSubstring.dir/build.make
LongestCommonSubstring: CMakeFiles/LongestCommonSubstring.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LongestCommonSubstring"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LongestCommonSubstring.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LongestCommonSubstring.dir/build: LongestCommonSubstring

.PHONY : CMakeFiles/LongestCommonSubstring.dir/build

CMakeFiles/LongestCommonSubstring.dir/requires: CMakeFiles/LongestCommonSubstring.dir/main.cpp.o.requires

.PHONY : CMakeFiles/LongestCommonSubstring.dir/requires

CMakeFiles/LongestCommonSubstring.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LongestCommonSubstring.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LongestCommonSubstring.dir/clean

CMakeFiles/LongestCommonSubstring.dir/depend:
	cd "/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/toor/Github/CSE 5311/Longest Common Substring" "/Users/toor/Github/CSE 5311/Longest Common Substring" "/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug" "/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug" "/Users/toor/Github/CSE 5311/Longest Common Substring/cmake-build-debug/CMakeFiles/LongestCommonSubstring.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/LongestCommonSubstring.dir/depend

