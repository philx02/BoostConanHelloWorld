cmake_minimum_required(VERSION 3.15)
project(BoostConanHelloWorld)

find_package(BOOST REQUIRED)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} Boost::serialization)
