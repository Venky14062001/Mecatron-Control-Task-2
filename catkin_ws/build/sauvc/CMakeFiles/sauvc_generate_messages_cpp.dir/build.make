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
CMAKE_SOURCE_DIR = /home/venkataraman/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/venkataraman/catkin_ws/build

# Utility rule file for sauvc_generate_messages_cpp.

# Include the progress variables for this target.
include sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/progress.make

sauvc/CMakeFiles/sauvc_generate_messages_cpp: /home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h


/home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h: /opt/ros/melodic/lib/gencpp/gen_cpp.py
/home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h: /home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv
/home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h: /opt/ros/melodic/share/gencpp/msg.h.template
/home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h: /opt/ros/melodic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/venkataraman/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from sauvc/toggle_switch_form.srv"
	cd /home/venkataraman/catkin_ws/src/sauvc && /home/venkataraman/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python /opt/ros/melodic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv -Isauvc:/home/venkataraman/catkin_ws/src/sauvc/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p sauvc -o /home/venkataraman/catkin_ws/devel/include/sauvc -e /opt/ros/melodic/share/gencpp/cmake/..

sauvc_generate_messages_cpp: sauvc/CMakeFiles/sauvc_generate_messages_cpp
sauvc_generate_messages_cpp: /home/venkataraman/catkin_ws/devel/include/sauvc/toggle_switch_form.h
sauvc_generate_messages_cpp: sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/build.make

.PHONY : sauvc_generate_messages_cpp

# Rule to build all files generated by this target.
sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/build: sauvc_generate_messages_cpp

.PHONY : sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/build

sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/clean:
	cd /home/venkataraman/catkin_ws/build/sauvc && $(CMAKE_COMMAND) -P CMakeFiles/sauvc_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/clean

sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/depend:
	cd /home/venkataraman/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/venkataraman/catkin_ws/src /home/venkataraman/catkin_ws/src/sauvc /home/venkataraman/catkin_ws/build /home/venkataraman/catkin_ws/build/sauvc /home/venkataraman/catkin_ws/build/sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sauvc/CMakeFiles/sauvc_generate_messages_cpp.dir/depend
