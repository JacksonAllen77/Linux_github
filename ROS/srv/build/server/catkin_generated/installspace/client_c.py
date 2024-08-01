#!/usr/bin/env python3
import rospy
from server.srv import *#导包
#   客户端实现:
#         1.导包
#         2.初始化 ROS 节点
#         3.创建请求对象
#         4.发送请求
#         5.接收并处理响应
#   优化实现：
#         可以在执行节点时，动态传入参数
#   问题：
#         客户端先于服务端启动，会抛出异常
#   需要：
#         客户端先于服务端启动，不要抛出异常而是挂起，等待服务器启动后，再次发送请求
#   实现：
#         ROS中内置了相关函数，可以用于判断服务器状态，如果服务器没启动，则让客户端挂起

if __name__=="__main__":
    if len(sys.argv)!=3:#判断参数长度
        rospy.logerr("传入的参数个数不对")
        sys.exit(1)
    
    rospy.init_node("HTL")#初始化ROS节点，HTL是自设定的节点名
    client=rospy.ServiceProxy("JK",Addints)#创建服务器对象,JK为话题名，Addints为srv目录下的名称
     #组织请求数据，并发送请求
     #解析传入的参数
    num1=int(sys.argv[1])
    num2=int(sys.argv[2])
    #等待服务器启动
    # client.wait_for_service()#等待服务器启动【第一种方案】
    rospy.wait_for_service("JK")#等待服务器启动【第二种方案】，JK为话题名称
    response=client.call(num1,num2)
    rospy.loginfo("响应的数据结果=%d",response.sum)#处理响应


