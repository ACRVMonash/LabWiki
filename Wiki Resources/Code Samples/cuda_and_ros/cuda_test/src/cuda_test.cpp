#include <ros/ros.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <iostream>

#include "hello_world.h"

int main(int argc, char** argv)
{
  ros::init(argc, argv, "hello");
  ros::NodeHandle nh;
	ROS_INFO_STREAM("Hello world! using ROS");
	std::cout << "Hello world! using STL" << std::endl;
	testmain();
  return 0;
}
