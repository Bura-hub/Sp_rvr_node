# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sphero_rvr_msgs: 1 messages, 6 services")

set(MSG_I_FLAGS "-Isphero_rvr_msgs:/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sphero_rvr_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" ""
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" ""
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" "geometry_msgs/Quaternion:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" ""
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_custom_target(_sphero_rvr_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sphero_rvr_msgs" "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Services
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_cpp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Module File
_generate_module_cpp(sphero_rvr_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sphero_rvr_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sphero_rvr_msgs_generate_messages sphero_rvr_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_cpp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sphero_rvr_msgs_gencpp)
add_dependencies(sphero_rvr_msgs_gencpp sphero_rvr_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sphero_rvr_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Services
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_eus(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Module File
_generate_module_eus(sphero_rvr_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sphero_rvr_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sphero_rvr_msgs_generate_messages sphero_rvr_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_eus _sphero_rvr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sphero_rvr_msgs_geneus)
add_dependencies(sphero_rvr_msgs_geneus sphero_rvr_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sphero_rvr_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Services
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_lisp(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Module File
_generate_module_lisp(sphero_rvr_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sphero_rvr_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sphero_rvr_msgs_generate_messages sphero_rvr_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_lisp _sphero_rvr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sphero_rvr_msgs_genlisp)
add_dependencies(sphero_rvr_msgs_genlisp sphero_rvr_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sphero_rvr_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Services
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_nodejs(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Module File
_generate_module_nodejs(sphero_rvr_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sphero_rvr_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sphero_rvr_msgs_generate_messages sphero_rvr_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_nodejs _sphero_rvr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sphero_rvr_msgs_gennodejs)
add_dependencies(sphero_rvr_msgs_gennodejs sphero_rvr_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sphero_rvr_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Services
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)
_generate_srv_py(sphero_rvr_msgs
  "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
)

### Generating Module File
_generate_module_py(sphero_rvr_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sphero_rvr_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sphero_rvr_msgs_generate_messages sphero_rvr_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sphero/sp/src/ros-sphero-rvr/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv" NAME_WE)
add_dependencies(sphero_rvr_msgs_generate_messages_py _sphero_rvr_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sphero_rvr_msgs_genpy)
add_dependencies(sphero_rvr_msgs_genpy sphero_rvr_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sphero_rvr_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sphero_rvr_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sphero_rvr_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(sphero_rvr_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sphero_rvr_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sphero_rvr_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(sphero_rvr_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sphero_rvr_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sphero_rvr_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(sphero_rvr_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sphero_rvr_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sphero_rvr_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(sphero_rvr_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sphero_rvr_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sphero_rvr_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(sphero_rvr_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
