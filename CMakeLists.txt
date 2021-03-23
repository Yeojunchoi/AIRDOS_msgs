cmake_minimum_required(VERSION 3.0.2)
project(route_service_msgs)

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 11)
endif()



# find dependencies
find_package(catkin REQUIRED COMPONENTS
   roscpp
   rospy
   std_msgs
   message_generation
)

catkin_package(
  px4_msgs
  CATKIN_DEPENDS message_runtime 
  )



 add_message_files(
   "msg/RouteCommand.msg"
   "msg/Waypoint.msg"
   "msg/WaypointArray.msg"
   "msg/WaypointInjection.msg"
)

add_service_files(
   "srv/Route.srv"
)

install(TARGETS
  ${PUBLISHER_NODE_NAME}
  ${SUBSCRIBER_NODE_NAME}
  DESTINATION lib/${PROJECT_NAME}
)





if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # uncomment the line when a copyright and license is not present in all source files
  #set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # uncomment the line when this package is not in a git repo
  #set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_export_dependencies(rosidl_default_runtime)
ament_package()
