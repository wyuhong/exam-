package com.edu.dao;

import com.edu.entity.User;

/**
 * mybatis中用的接口代理的开发模式
 * 映射文件, 同一个包路径下, 文件名要一致
 * 所有的xml文件, 都要放到resource文件夹下面
 * @author Administrator
 *
 */
public interface UserDao {

	User login(User user);

	User mangerLogin(User user);

}
