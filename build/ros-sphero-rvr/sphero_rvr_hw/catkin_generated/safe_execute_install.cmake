execute_process(COMMAND "/home/sphero/sp/build/ros-sphero-rvr/sphero_rvr_hw/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sphero/sp/build/ros-sphero-rvr/sphero_rvr_hw/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
