# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "glass_ladder: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iglass_ladder:/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(glass_ladder_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_custom_target(_glass_ladder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "glass_ladder" "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" ""
)

get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_custom_target(_glass_ladder_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "glass_ladder" "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glass_ladder
)

### Generating Services
_generate_srv_cpp(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glass_ladder
)

### Generating Module File
_generate_module_cpp(glass_ladder
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glass_ladder
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(glass_ladder_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(glass_ladder_generate_messages glass_ladder_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_dependencies(glass_ladder_generate_messages_cpp _glass_ladder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_dependencies(glass_ladder_generate_messages_cpp _glass_ladder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glass_ladder_gencpp)
add_dependencies(glass_ladder_gencpp glass_ladder_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glass_ladder_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glass_ladder
)

### Generating Services
_generate_srv_eus(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glass_ladder
)

### Generating Module File
_generate_module_eus(glass_ladder
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glass_ladder
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(glass_ladder_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(glass_ladder_generate_messages glass_ladder_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_dependencies(glass_ladder_generate_messages_eus _glass_ladder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_dependencies(glass_ladder_generate_messages_eus _glass_ladder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glass_ladder_geneus)
add_dependencies(glass_ladder_geneus glass_ladder_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glass_ladder_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glass_ladder
)

### Generating Services
_generate_srv_lisp(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glass_ladder
)

### Generating Module File
_generate_module_lisp(glass_ladder
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glass_ladder
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(glass_ladder_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(glass_ladder_generate_messages glass_ladder_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_dependencies(glass_ladder_generate_messages_lisp _glass_ladder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_dependencies(glass_ladder_generate_messages_lisp _glass_ladder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glass_ladder_genlisp)
add_dependencies(glass_ladder_genlisp glass_ladder_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glass_ladder_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glass_ladder
)

### Generating Services
_generate_srv_nodejs(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glass_ladder
)

### Generating Module File
_generate_module_nodejs(glass_ladder
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glass_ladder
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(glass_ladder_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(glass_ladder_generate_messages glass_ladder_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_dependencies(glass_ladder_generate_messages_nodejs _glass_ladder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_dependencies(glass_ladder_generate_messages_nodejs _glass_ladder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glass_ladder_gennodejs)
add_dependencies(glass_ladder_gennodejs glass_ladder_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glass_ladder_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder
)

### Generating Services
_generate_srv_py(glass_ladder
  "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder
)

### Generating Module File
_generate_module_py(glass_ladder
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(glass_ladder_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(glass_ladder_generate_messages glass_ladder_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/msg/Ladder.msg" NAME_WE)
add_dependencies(glass_ladder_generate_messages_py _glass_ladder_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/vilgiz/ilya_homework_ws/src/glass_ladder/srv/ladder.srv" NAME_WE)
add_dependencies(glass_ladder_generate_messages_py _glass_ladder_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(glass_ladder_genpy)
add_dependencies(glass_ladder_genpy glass_ladder_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS glass_ladder_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glass_ladder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/glass_ladder
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(glass_ladder_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glass_ladder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/glass_ladder
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(glass_ladder_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glass_ladder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/glass_ladder
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(glass_ladder_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glass_ladder)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/glass_ladder
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(glass_ladder_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/glass_ladder
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(glass_ladder_generate_messages_py std_msgs_generate_messages_py)
endif()
