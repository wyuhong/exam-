package com.edu.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edu.dao.UserDao;
import com.edu.entity.User;
@Service
public class UserService {
	@Autowired
	private UserDao userDao;

	public User login(User user) {
		User user1=null;
		if(user.getType()==1){
		user1 = userDao.login(user);
		}else{
		user1 = userDao.mangerLogin(user);
		}
		return user1;
	}


		
	

}
