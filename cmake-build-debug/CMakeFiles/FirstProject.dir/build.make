# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion\CLion 2019.3.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\ClionProject\FirstProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\ClionProject\FirstProject\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/FirstProject.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/FirstProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FirstProject.dir/flags.make

CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.obj: CMakeFiles/FirstProject.dir/flags.make
CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.obj: ../DSModel/SortClass/LinearSort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\ClionProject\FirstProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.obj"
	C:\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\FirstProject.dir\DSModel\SortClass\LinearSort.cpp.obj -c D:\ClionProject\FirstProject\DSModel\SortClass\LinearSort.cpp

CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\ClionProject\FirstProject\DSModel\SortClass\LinearSort.cpp > CMakeFiles\FirstProject.dir\DSModel\SortClass\LinearSort.cpp.i

CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\ClionProject\FirstProject\DSModel\SortClass\LinearSort.cpp -o CMakeFiles\FirstProject.dir\DSModel\SortClass\LinearSort.cpp.s

# Object files for target FirstProject
FirstProject_OBJECTS = \
"CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.obj"

# External object files for target FirstProject
FirstProject_EXTERNAL_OBJECTS =

FirstProject.exe: CMakeFiles/FirstProject.dir/DSModel/SortClass/LinearSort.cpp.obj
FirstProject.exe: CMakeFiles/FirstProject.dir/build.make
FirstProject.exe: CMakeFiles/FirstProject.dir/linklibs.rsp
FirstProject.exe: CMakeFiles/FirstProject.dir/objects1.rsp
FirstProject.exe: CMakeFiles/FirstProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\ClionProject\FirstProject\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FirstProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\FirstProject.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FirstProject.dir/build: FirstProject.exe

.PHONY : CMakeFiles/FirstProject.dir/build

CMakeFiles/FirstProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\FirstProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/FirstProject.dir/clean

CMakeFiles/FirstProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\ClionProject\FirstProject D:\ClionProject\FirstProject D:\ClionProject\FirstProject\cmake-build-debug D:\ClionProject\FirstProject\cmake-build-debug D:\ClionProject\FirstProject\cmake-build-debug\CMakeFiles\FirstProject.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/FirstProject.dir/depend

