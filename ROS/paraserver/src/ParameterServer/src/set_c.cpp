#include "ros/ros.h"
/*
    参数服务器操作之新增与修改(二者API一样)_C++实现:
    需求：首先设置机器人的共享参数，类型、半径（0.15m）、再修改半径（0.2m）
    ros::NodeHandle
        setParam("键",值)
    ros::param
        set("键","值")

    示例:分别设置整形、浮点、字符串、bool、列表、字典等类型参数
        修改(相同的键，不同的值)

*/

int main(int argc,char*argv[])
{
    ros::init(argc,argv,"set_c");//初始化节点,set_c是自定义的节点名
    ros::NodeHandle nh;//创建ROS节点句柄
    //实现参数的增加、修改
    //参数增加——方案1：ros::NodeHandle
    nh.setParam("type","xiaohuang");
    nh.setParam("radius",0.15);
    //参数增加——方案2：ros::param
    ros::param::set("type_param","xiaozhang");
    ros::param::set("radius_param",0.15);
    //参数修改——方案1：ros::NodeHandle
    nh.setParam("radius",0.2);//重写，从而修改其对应的值
    //参数修改——方案2：ros::param
    ros::param::set("type_param","xiaoming");//重写，从而修改其对应的值
    return 0;
}