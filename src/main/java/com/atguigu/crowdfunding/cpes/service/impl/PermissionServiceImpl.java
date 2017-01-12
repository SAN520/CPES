package com.atguigu.crowdfunding.cpes.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.crowdfunding.cpes.bean.Permission;
import com.atguigu.crowdfunding.cpes.dao.PermissionDao;
import com.atguigu.crowdfunding.cpes.service.PermissionService;

@Service
public class PermissionServiceImpl implements PermissionService{

	@Autowired
	private PermissionDao permissionDao;

	public List<Permission> queryAll() {
		return permissionDao.queryAll();
	}

	public void insert(Permission permission) {

		permissionDao.insert(permission);
	}

	public void delete(Integer id) {

		permissionDao.delete(id);
	}

	public Permission getPermission(Integer id) {

		return permissionDao.getPermission(id);
	}

	public void update(Permission permission) {

		permissionDao.update(permission);
	}

}
