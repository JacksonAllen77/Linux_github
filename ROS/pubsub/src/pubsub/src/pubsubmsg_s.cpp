#include "ros/ros.h"
#include "pubsub/Person.h" //包含自定义数据类型的头文件

/*
    实现流程:
        1.包含头文件 
        2.初始化 ROS 节点:命名(唯一)
        3.实例化 ROS 句柄
        4.实例化 订阅者 对象
        5.处理订阅的消息(回调函数)
        6.设置循环调用回调函数
*/
void doPerson(const pubsub::Person::ConstPtr &student)//回调函数
{
    ROS_INFO("接受的消息：%s,%d,%.2f",student->name.c_str(),student->age,student->height);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL, "");//防止中文乱码所需要的代码
    ROS_INFO("订阅方实现");
    ros::init(argc, argv, "listener_person");//初始化ROS节点
    ros::NodeHandle nh;//创建ROS句柄
    ros::Subscriber sub = nh.subscribe<pubsub::Person>("vava", 10, doPerson);//创建实例化对象，话题名称必须与发送者话题名一致，
    ros::spin();//设置循环调用回调函数，循环读取接受的数据，并调用回调函数处理
    return 0;
}
