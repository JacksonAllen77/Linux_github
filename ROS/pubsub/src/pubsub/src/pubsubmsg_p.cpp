#include "ros/ros.h"
#include "pubsub/Person.h"//包含自定义数据类型的头文件

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
    ROS_INFO("这是消息发布方");
    ros::init(argc,argv,"talker_person");//初始化ROS节点
    ros::NodeHandle nh;//创建ROS句柄
    ros::Publisher pub=nh.advertise<pubsub::Person>("vava",10);//创建实例化对象，话题名称为fang,队列中最大保存数为10
    //要求以10HZ频率发布数据，并且文本后添加编号
    pubsub::Person student;//创建被发布的数据
    student.name="张三";
    student.age=23;
    student.height=183.5;
    ros::Rate rate(3);//设定发布频率为3HZ【即1秒3次】，需要配合循环中的sleep函数
    while(ros::ok())//编写循环，循环中发布数据
    {
        student.age+=1;//修改被发布的数据
        pub.publish(student);//发布数据
        ROS_INFO("发布的消息：%s,%d,%.2f",student.name.c_str(),student.age,student.height);
        rate.sleep();//休眠
        ros::spinOnce();//回调函数
    }
    //编写发布逻辑并发布数据
    return 0;
}