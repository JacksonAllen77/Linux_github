#! /usr/bin/env python
import rospy
from std_msgs.msg import String
# 实现流程:
#         1.导包 
#         2.初始化 ROS 节点:命名(唯一)
#         3.实例化 发布者 对象
#         4.组织被发布的数据，并编写逻辑发布数据
if __name__ == "__main__":
    rospy.init_node("talker")#初始化ROS节点，talker是设定的节点名
    pub=rospy.Publisher("che",String,queue_size=10)#创建发布者对象
    #编写发布逻辑病发布数据
    msg=String()#创建数据
    rate=rospy.Rate(2)#设置发布频率为1秒2次
    count=0#设定计数器初值
    rospy.sleep(2)#休眠2秒钟，等待提交注册信息给master，从而使订阅者能接收到第一条数据
    while not rospy.is_shutdown():
        count+=1
        msg.data="hello"+str(count)
        #发布数据
        pub.publish(msg)
        rospy.loginfo("写出的数据:%s",msg.data)
        rate.sleep()



