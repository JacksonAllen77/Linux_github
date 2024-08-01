#!/usr/bin/env python3
"""
    参数服务器操作之删除_Python实现:
    rospy.delete_param("键")
    键存在时，可以删除成功，键不存在时，会抛出异常
"""
import rospy

if __name__ == "__main__":
    rospy.init_node("del_p")#del_p是自定义的节点名称

    rospy.init_node("del_p")

    try:
        rospy.delete_param("p_int")
        rospy.loginfo("删除成功")
    except Exception as e:
        rospy.loginfo("删除失败")