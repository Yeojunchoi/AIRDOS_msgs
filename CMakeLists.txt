cmake_minimum_required(VERSION 3.0.2)
project(route_service_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()



# find dependencies
find_package(catkin REQUIRED COMPONENTS message_generation std_msgs)




 add_message_files(
   DIRECTORY msg
   FILES
   RouteCommand.msg
   Waypoint.msg
   WaypointArray.msg
   WaypointInjection.msg
)

add_service_files(
   DIRECTORY srv
   FILES
   Route.srv
   WaypointInjector.srv
    
)

generate_messages(
   DEPENDENCIES
   std_msgs
   )

catkin_package(
    CATKIN_DEPENDS message_runtime std_msgs
)

## Add include dirs
include_directories(
    include
    ${catkin_INCLUDE_DIRS}
)

## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h" PATTERN "*.hpp"
)


## Install package.xml
#install(
#  FILES ${PROJECT_SOURCE_DIR}/package.xml
#  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${PROJECT_NAME}
#)

