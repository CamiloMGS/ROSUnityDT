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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/medina/ros_introduction/src/ros_unity_robotics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/medina/ros_introduction/build/ros_unity_robotics

# Include any dependencies generated for this target.
include CMakeFiles/set_color_service_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/set_color_service_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/set_color_service_server.dir/flags.make

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o: CMakeFiles/set_color_service_server.dir/flags.make
CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o: /home/medina/ros_introduction/src/ros_unity_robotics/src/set_color_service_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/medina/ros_introduction/build/ros_unity_robotics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o -c /home/medina/ros_introduction/src/ros_unity_robotics/src/set_color_service_server.cpp

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/medina/ros_introduction/src/ros_unity_robotics/src/set_color_service_server.cpp > CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.i

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/medina/ros_introduction/src/ros_unity_robotics/src/set_color_service_server.cpp -o CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.s

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.requires:

.PHONY : CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.requires

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.provides: CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.requires
	$(MAKE) -f CMakeFiles/set_color_service_server.dir/build.make CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.provides.build
.PHONY : CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.provides

CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.provides.build: CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o


# Object files for target set_color_service_server
set_color_service_server_OBJECTS = \
"CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o"

# External object files for target set_color_service_server
set_color_service_server_EXTERNAL_OBJECTS =

/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: CMakeFiles/set_color_service_server.dir/build.make
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/libroscpp.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/librosconsole.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/librostime.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /opt/ros/melodic/lib/libcpp_common.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server: CMakeFiles/set_color_service_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/medina/ros_introduction/build/ros_unity_robotics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/set_color_service_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/set_color_service_server.dir/build: /home/medina/ros_introduction/devel/.private/ros_unity_robotics/lib/ros_unity_robotics/set_color_service_server

.PHONY : CMakeFiles/set_color_service_server.dir/build

CMakeFiles/set_color_service_server.dir/requires: CMakeFiles/set_color_service_server.dir/src/set_color_service_server.cpp.o.requires

.PHONY : CMakeFiles/set_color_service_server.dir/requires

CMakeFiles/set_color_service_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/set_color_service_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/set_color_service_server.dir/clean

CMakeFiles/set_color_service_server.dir/depend:
	cd /home/medina/ros_introduction/build/ros_unity_robotics && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/medina/ros_introduction/src/ros_unity_robotics /home/medina/ros_introduction/src/ros_unity_robotics /home/medina/ros_introduction/build/ros_unity_robotics /home/medina/ros_introduction/build/ros_unity_robotics /home/medina/ros_introduction/build/ros_unity_robotics/CMakeFiles/set_color_service_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/set_color_service_server.dir/depend

