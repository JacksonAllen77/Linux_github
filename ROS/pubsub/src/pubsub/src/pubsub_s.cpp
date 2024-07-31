#include "ros/ros.h"
#include "std_msgs/String.h"  // 包含头文件

/*
    实现流程:
        1.包含头文件 
        2.初始化 ROS 节点:命名(唯一)
        3.实例化 ROS 句柄
        4.实例化 订阅者 对象
        5.处理订阅的消息(回调函数)
        6.设置循环调用回调函数
*/
void doMsg(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("接受的消息:%s", msg->data.c_str()); 
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");//防止中文乱码所需要的代码
    ros::init(argc, argv, "listener");//初始化ROS节点
    ros::NodeHandle nh;//创建ROS句柄
    ros::Subscriber sub = nh.subscribe<std_msgs::String>("fang", 10, doMsg);//创建实例化对象，话题名称必须与发送者话题名一致，
    ros::spin();//设置循环调用回调函数，循环读取接受的数据，并调用回调函数处理
    return 0;
}
