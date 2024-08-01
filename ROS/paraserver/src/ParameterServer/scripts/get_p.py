#! /usr/bin/env python

"""
    参数服务器操作之查询_Python实现:    
        get_param(键,默认值)
            当键存在时，返回对应的值，如果不存在返回默认值
        get_param_cached
        get_param_names
        has_param
        search_param
"""

import rospy

if __name__ == "__main__":
        rospy.init_node("get_p")#初始化节点，get_p是自定义的节点名

        int_value = rospy.get_param("p_int",20)# get_param结果：存在,返回 true,且将值赋值给参数2； 若果键不存在，那么返回值为 false，且不为参数2赋值
        double_value = rospy.get_param("p_double")
        int_value2 = rospy.get_param("p_int22",20)
        rospy.loginfo("int_value=%.2f",int_value)
        rospy.loginfo("double_value=%.2f",double_value)
        rospy.loginfo("int_value2=%.2f",int_value2)

        int_cached = rospy.get_param_cached("p_int")  # get_param_cached结果：存在,返回 true,且将值赋值给参数2； 若果键不存在，那么返回值为 false，且不为参数2赋值
        double_value = rospy.get_param("p_double")
        rospy.loginfo("缓存数据:%d",int_cached)

    
        names = rospy.get_param_names()# get_param_names结果： 获取所有的键
        for name in names:
            rospy.loginfo("name = %s",name)


  
        flag = rospy.has_param("p_int")  # has_param结果： 是否包含某个键，存在返回 true，否则返回 false
        rospy.loginfo("包含p_int吗？%d",flag)

   
        key = rospy.search_param("p_int") # search_param结果：搜索键，参数1是被搜索的键，参数2存储搜索结果的变量
        rospy.loginfo("搜索的键 = %s",key)