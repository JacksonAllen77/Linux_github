#! /usr/bin/env python
import rospy
from pubsub.msg import Person
# 实现流程:
#         1.导包 
#         2.初始化 ROS 节点:命名(唯一)
#         3.实例化 订阅者 对象
#         4.处理订阅的消息(回调函数)
#         5.设置循环调用回调函数

def doPerson(student):
    rospy.loginfo("接受的数据:%s,%d,%.2f",student.name,student.age,student.height)
if __name__ =="__main__":
    rospy.init_node("listener_person")#初始化ROS节点
    sub=rospy.Subscriber("mata",Person,doPerson,queue_size=10)#创建订阅者对象,话题必须与发布者的一致，否则无法接收
    rospy.spin()#回调函数处理数据,spin()

