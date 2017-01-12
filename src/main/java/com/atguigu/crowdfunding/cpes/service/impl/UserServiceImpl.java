package com.atguigu.crowdfunding.cpes.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.crowdfunding.cpes.bean.User;
import com.atguigu.crowdfunding.cpes.dao.UserDao;
import com.atguigu.crowdfunding.cpes.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public User queryUserByLoginacct(String loginacct) {
		return userDao.queryUserByLoginacct(loginacct);
	}
}
