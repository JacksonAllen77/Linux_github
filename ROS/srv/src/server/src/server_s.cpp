#include "ros/ros.h"
#include "server/Addints.h"//包含头文件
/*
    服务器实现:
        1.包含头文件
        2.初始化 ROS 节点
        3.创建 ROS 句柄
        4.创建 服务 对象
        5.回调函数处理请求并产生响应
        6.由于请求有多个，需要调用 ros::spin()
*/
bool doNums(server::Addints::Request& request, server::Addints::Response& response)
{
    //处理请求
    int num1=request.num1;
    int num2=request.num2;
    ROS_INFO("收到的请求数据:num1=%d,num2=%d",num1,num2);
    //组织响应
    int sum=num1+num2;
    response.sum=sum;
    ROS_INFO("求和结果: sum=%d", response.sum);
    return true;
}

int main(int argc,char *argv[])
{
    setlocale(LC_ALL,"");//防止中文乱码所需的代码

    ros::init(argc,argv,"baojie");//初始化ROS节点
    ros::NodeHandle nh;//创建ROS句柄
    ros::ServiceServer server =nh.advertiseService("Jackson",doNums);//创建一个服务对象，Jackson为话题名，doNums为回调函数
    ROS_INFO("服务端启动！");
    ros::spin();//回调
    return 0;
}