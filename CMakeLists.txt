cmake_minimum_required(VERSION 3.22)

project(
	testproj
	VERSION 0.1.0
	DESCRIPTION "test project"
	LANGUAGES CXX
)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(DEFAULT_BUILD_TYPE "Release")
set(CMAKE_C_FLAGS_DEBUG "-g3 -Og")
set(CMAKE_C_FLAGS_RELEASE "-g -O2")

# libcurl build option
# set(BUILD_CURL_EXE ON)
set(BUILD_CURL_EXE OFF)
set(BUILD_SHARED_LIBS OFF)
set(BUILD_STATIC_LIBS ON)
set(BUILD_STATIC_CURL ON)
set(CURL_DISABLE_INSTALL OFF)

add_subdirectory(extlibs/curl)

set(APP_SRC_FILES
  src/main.cpp
  src/sub.cpp
)


add_executable(${PROJECT_NAME} WIN32 ${APP_SRC_FILES})

# target_include_directories(${PROJECT_NAME} PUBLIC ${APP_SRC_FILES})
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_20)
target_compile_options(${PROJECT_NAME} PUBLIC -Wall -Werror)

target_link_libraries(${PROJECT_NAME} PRIVATE libcurl ${CMAKE_THREAD_LIBS_INIT})
