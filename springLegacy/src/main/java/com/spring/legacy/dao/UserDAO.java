package com.spring.legacy.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.legacy.object.User;

@Repository("userDAO")
public class UserDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<User> getUserList() {
		return selectList("user.getUserList");
	}
}
