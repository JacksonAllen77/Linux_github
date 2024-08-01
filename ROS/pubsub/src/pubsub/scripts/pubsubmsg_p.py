#! /usr/bin/env python
import rospy
from pubsub.msg import Person
# 实现流程:
#         1.导包 
#         2.初始化 ROS 节点:命名(唯一)
#         3.实例化 发布者 对象
#         4.组织被发布的数据，并编写逻辑发布数据
if __name__ == "__main__":
    rospy.init_node("talker_person")#初始化ROS节点，talker是设定的节点名
    pub=rospy.Publisher("mata",Person,queue_size=10)#创建发布者对象
    #编写发布逻辑病发布数据
    teacher=Person()#创建数据
    teacher.name="杰克"
    teacher.age=8
    teacher.height=153.9
    rate=rospy.Rate(2)#设置发布频率为1秒2次
    while not rospy.is_shutdown():
        teacher.height+=2.5
        #发布数据
        pub.publish(teacher)
        rospy.loginfo("写出的数据:%s,%d,%.2f",teacher.name,teacher.age,teacher.height)
        rate.sleep()



