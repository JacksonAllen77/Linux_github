#include "ros/ros.h"
/*
    参数服务器操作之查询_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作
    ros::param

        param(键,默认值) 
            存在，返回对应结果，否则返回默认值

        getParam(键,存储结果的变量)
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamCached键,存储结果的变量)--提高变量获取效率
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值

        getParamNames(std::vector<std::string>)
            获取所有的键,并存储在参数 vector 中 

        hasParam(键)
            是否包含某个键，存在返回 true，否则返回 false

        searchParam(参数1，参数2)
            搜索键，参数1是被搜索的键，参数2存储搜索结果的变量

*/
int main(int argc,char*argv[])
{
    setlocale(LC_ALL,"");//设置编码
    ros::init(argc,argv,"get_g");//初始化节点,get_g是自定义的节点名
    ros::NodeHandle nh;//创建ROS节点句柄
    //实现参数的查找——ros::NodeHandle参数查询
    double radius_param=ros::param::param("radius",100.5);//param(键,默认值)结果：存在，返回对应结果，否则返回默认值
    ROS_INFO("radius_param=%.2f",radius_param);

    double radius2_param=0.0;//get结果：存在,返回 true,且将值赋值给参数2；若果键不存在，那么返回值为 false，且不为参数2赋值
    bool result=ros::param::get("radius",radius2_param);
    if(result)
    {
        ROS_INFO("获取的半径是：%.2f",radius2_param);
    }
    else
    {
        ROS_INFO("被查询的结果不存在");
    }

    double radius3_param=0.0;//getParamCached结果：存在,返回 true,且将值赋值给参数2;若果键不存在，那么返回值为 false，且不为参数2赋值
    bool result2=nh.getParamCached("radiuss",radius3_param);
    if(result2)
    {
        ROS_INFO("获取的半径是：%.2f",radius3_param);
    }
    else
    {
        ROS_INFO("被查询的结果不存在");
    }

    std::vector<std::string>names;//getParamNames结果：获取所有的键,并存储在参数 vector 中 
    ros::param::getParamNames(names);
    for (auto&&name:names)
    {
        ROS_INFO("遍历到的元素：%s",name.c_str());
    }

    bool flag1=ros::param::has("radius");//has结果：是否包含某个键，存在返回 true，否则返回 false
    bool flag2=ros::param::has("radiusxxx");
    ROS_INFO("radius存在吗?%d",flag1);
    ROS_INFO("radiusxxxx存在吗?%d",flag2);

    
    std::string key;//search(参数1，参数2)结果：搜索键，参数1是被搜索的键，参数2存储搜索结果的变量
    ros::param::search("radius",key);
    ROS_INFO("搜索结果为:%s",key.c_str());

    return 0;
}