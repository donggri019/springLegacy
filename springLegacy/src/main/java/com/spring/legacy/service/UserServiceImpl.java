package com.spring.legacy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.legacy.dao.UserDAO;
import com.spring.legacy.object.User;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	UserDAO userDAO;
	
	@Override
	public List<User> getUserList() {
		return userDAO.getUserList();
	}
}
