#include "ros/ros.h"
#include "std_msgs/String.h"//普通文本类型的消息所需的头文件 
#include <sstream>//字符串拼接所需的头文件
/*
    实现流程:
        1.包含头文件 
        2.初始化 ROS 节点:命名(唯一)
        3.实例化 ROS 句柄
        4.实例化 发布者 对象
        5.组织被发布的数据，并编写逻辑发布数据
*/
int main(int argc,char *argv[])
{
    setlocale(LC_ALL,"");//防止中文乱码所需的代码

    ros::init(argc,argv,"talker");//初始化ROS节点
    ros::NodeHandle nh;//创建ROS句柄
    ros::Publisher pub=nh.advertise<std_msgs::String>("fang",10);//创建实例化对象，话题名称为fang,队列中最大保存数为10
    //要求以10HZ频率发布数据，并且文本后添加编号
    std_msgs::String msg;//创建被发布的消息
    ros::Rate rate(1);//设定发布频率为10HZ，需要配合循环中的sleep函数
    int count=0;//设定消息计数器初值
    ros::Duration(2).sleep();//休眠2秒钟，等待提交注册信息给master，从而使订阅者能接收到第一条数据
    while(ros::ok())//编写循环，循环中发布数据
    {
        count++;
        std::stringstream ss;//使用stringstream拼接字符串与编号
        ss<<"hello--->"<<count;
        msg.data=ss.str();
        pub.publish(msg);//发布消息
        ROS_INFO("发送的消息:%s",msg.data.c_str());//加入调试，打印发送的消息
        rate.sleep();
    }
    //编写发布逻辑并发布数据
    return 0;
}