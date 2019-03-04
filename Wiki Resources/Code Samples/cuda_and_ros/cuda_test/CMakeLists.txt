cmake_minimum_required(VERSION 2.8.3)
project(cuda_test)
set(CMAKE_CUDA_COMPILER  /usr/local/cuda-9.1/bin/nvcc)

find_package(catkin_simple REQUIRED)
find_package(CUDA REQUIRED)

catkin_simple()

#Here you can set any ncvv compiler flags, if you so wish
#SET(CUDA_NVCC_FLAGS "${CUDA_NVCC_FLAGS} -DMY_DEF=1")

#Here you can set any gcc/cmake compiler flags, if you so wish
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O3")

#Add all of your sources here
cuda_add_executable(
  cuda_test_cu
  src/cuda_test.cpp
  src/hello_world.cu
)

#Link the executable to the necessary libs
target_link_libraries(
   cuda_test_cu
   ${catkin_LIBRARIES}
   ${CUDA_LIBRARIES}
)

# CMake Indexing
FILE(GLOB_RECURSE LibFiles "include/*")
add_custom_target(headers SOURCES ${LibFiles})

cs_install()
