package com.atguigu.crowdfunding.cpes.service;

import java.util.List;

import com.atguigu.crowdfunding.cpes.bean.Permission;

public interface PermissionService {

	List<Permission> queryAll();

	void insert(Permission permission);

	void delete(Integer id);

	Permission getPermission(Integer id);

	void update(Permission permission);

}
