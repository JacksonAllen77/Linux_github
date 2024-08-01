#! /usr/bin/env python
import rospy
from server.srv import Addints,AddintsRequest,AddintsResponse#导包
# 服务器端实现:
#         1.导包
#         2.初始化 ROS 节点
#         3.创建服务对象
#         4.回调函数处理请求并产生响应
#         5.spin 函数

def doNum(request):#回调函数【参数——封装了请求数据，返回值——响应数据】
    #1.解析提交的两个整数
    num1=request.num1
    num2=request.num2
    #2.求和
    sum=num1+num2
    #3.将结果封装进入响应对象
    response=AddintsResponse()
    response.sum=sum
    rospy.loginfo("服务器解析的数据num1=%d ,num2=%d ,结果:sum=%d ",num1,num2,sum)
    return response

if __name__=="__main__":
    rospy.init_node("XYY")#初始化ROS节点，XYY是自设定的节点名
    server=rospy.Service("JK",Addints,doNum)#创建服务器对象,JK为话题名，Addints为srv目录下的名称
    rospy.loginfo("服务器已经启动了!")
    #处理逻辑（回调函数）
    #spin（）
    rospy.spin()


