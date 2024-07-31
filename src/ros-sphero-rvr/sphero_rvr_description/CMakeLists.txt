cmake_minimum_required(VERSION 2.8.3)
project(sphero_rvr_description)
find_package(catkin REQUIRED
        roscpp
        tf
        )

###################################
## catkin specific configuration ##
###################################

catkin_package(
        #  INCLUDE_DIRS include
        CATKIN_DEPENDS roscpp tf
        #  DEPENDS system_lib
)


###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
        ${catkin_INCLUDE_DIRS}
)

add_executable(tf2_relay src/tf2_relay.cpp)
target_link_libraries(tf2_relay ${catkin_LIBRARIES})

#############
## Install ##
#############
install(TARGETS
        tf2_relay
        LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
        RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
        )
