package com.atguigu.crowdfunding.cpes.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.atguigu.crowdfunding.cpes.bean.Permission;

public interface PermissionDao {

	List<Permission> queryAll();

	void insert(@Param("permission")Permission permission);

	void delete(Integer id);

	Permission getPermission(Integer id);

	void update(@Param("permission") Permission permission);

}
