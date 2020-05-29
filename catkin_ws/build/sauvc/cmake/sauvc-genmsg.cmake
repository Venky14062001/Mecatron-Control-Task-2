# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sauvc: 0 messages, 1 services")

set(MSG_I_FLAGS "-Isauvc:/home/venkataraman/catkin_ws/src/sauvc/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sauvc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_custom_target(_sauvc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sauvc" "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sauvc
  "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sauvc
)

### Generating Module File
_generate_module_cpp(sauvc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sauvc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sauvc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sauvc_generate_messages sauvc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_dependencies(sauvc_generate_messages_cpp _sauvc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sauvc_gencpp)
add_dependencies(sauvc_gencpp sauvc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sauvc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sauvc
  "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sauvc
)

### Generating Module File
_generate_module_eus(sauvc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sauvc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sauvc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sauvc_generate_messages sauvc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_dependencies(sauvc_generate_messages_eus _sauvc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sauvc_geneus)
add_dependencies(sauvc_geneus sauvc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sauvc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sauvc
  "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sauvc
)

### Generating Module File
_generate_module_lisp(sauvc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sauvc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sauvc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sauvc_generate_messages sauvc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_dependencies(sauvc_generate_messages_lisp _sauvc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sauvc_genlisp)
add_dependencies(sauvc_genlisp sauvc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sauvc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sauvc
  "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sauvc
)

### Generating Module File
_generate_module_nodejs(sauvc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sauvc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sauvc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sauvc_generate_messages sauvc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_dependencies(sauvc_generate_messages_nodejs _sauvc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sauvc_gennodejs)
add_dependencies(sauvc_gennodejs sauvc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sauvc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sauvc
  "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sauvc
)

### Generating Module File
_generate_module_py(sauvc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sauvc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sauvc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sauvc_generate_messages sauvc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/venkataraman/catkin_ws/src/sauvc/srv/toggle_switch_form.srv" NAME_WE)
add_dependencies(sauvc_generate_messages_py _sauvc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sauvc_genpy)
add_dependencies(sauvc_genpy sauvc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sauvc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sauvc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sauvc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sauvc_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sauvc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sauvc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sauvc_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sauvc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sauvc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sauvc_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sauvc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sauvc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sauvc_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sauvc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sauvc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sauvc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sauvc_generate_messages_py std_msgs_generate_messages_py)
endif()
