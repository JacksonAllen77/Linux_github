#include   "ros/ros.h"//包含ros头文件
int main(int argc,char *argv[])//编写main函数
{
    ros::init (argc,argv,"hello");//初始化ros节点
    ROS_INFO("HelloWorld");//输出日志
    return 0;
}

