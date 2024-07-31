# Install script for directory: /home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sphero/sp/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs/msg" TYPE FILE FILES "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/msg/Color.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs/srv" TYPE FILE FILES
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetLeds.srv"
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPosAndYaw.srv"
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/MoveToPose.srv"
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/BatteryState.srv"
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/SetPosAndYaw.srv"
    "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/srv/TriggerLedEvent.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs/cmake" TYPE FILE FILES "/home/sphero/sp/build/ros-sphero-rvr-msgs/sphero_rvr_msgs/catkin_generated/installspace/sphero_rvr_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sphero/sp/devel/include/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sphero/sp/devel/share/roseus/ros/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sphero/sp/devel/share/common-lisp/ros/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sphero/sp/devel/share/gennodejs/ros/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sphero/sp/devel/lib/python3/dist-packages/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sphero/sp/devel/lib/python3/dist-packages/sphero_rvr_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sphero/sp/build/ros-sphero-rvr-msgs/sphero_rvr_msgs/catkin_generated/installspace/sphero_rvr_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs/cmake" TYPE FILE FILES "/home/sphero/sp/build/ros-sphero-rvr-msgs/sphero_rvr_msgs/catkin_generated/installspace/sphero_rvr_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs/cmake" TYPE FILE FILES
    "/home/sphero/sp/build/ros-sphero-rvr-msgs/sphero_rvr_msgs/catkin_generated/installspace/sphero_rvr_msgsConfig.cmake"
    "/home/sphero/sp/build/ros-sphero-rvr-msgs/sphero_rvr_msgs/catkin_generated/installspace/sphero_rvr_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sphero_rvr_msgs" TYPE FILE FILES "/home/sphero/sp/src/ros-sphero-rvr-msgs/sphero_rvr_msgs/package.xml")
endif()

