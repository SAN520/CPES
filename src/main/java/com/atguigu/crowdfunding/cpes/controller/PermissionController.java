package com.atguigu.crowdfunding.cpes.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.crowdfunding.cpes.bean.Permission;
import com.atguigu.crowdfunding.cpes.service.PermissionService;

@Controller
public class PermissionController {

	@Autowired
	private PermissionService permissionService;
	
	@ResponseBody
	@RequestMapping("/system/permission/update")
	public Object update(Permission permission){
	
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			permissionService.update(permission);
			map.put("success", true);
		}catch(Exception e){
			e.printStackTrace();
			map.put("success", false);
			map.put("error", "许可修改失败");
		}
		
		return map;
	}
	
	@RequestMapping("/system/permission/edit")
	public String edit(
			@RequestParam("id")Integer id,
			Map<String,Object> map){

		Permission permission = permissionService.getPermission(id);
		map.put("permission", permission);
		return "permission/edit";
	}
	
	@ResponseBody
	@RequestMapping("/system/permission/delete")
	public Object delete(@RequestParam("id") Integer id){
		
		Map<String,Object> map = new HashMap<String, Object>();
		try{
			permissionService.delete(id);
			map.put("success", true);
		}catch(Exception e){
			e.printStackTrace();
			map.put("success", false);
			map.put("error", "许可删除失败");
		}
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping("/system/permission/insert")
	public Object insert(
			Permission permission){

		Map<String,Object> map = new HashMap<String, Object>();
		try{
			permissionService.insert(permission);
			map.put("success", true);
		}catch(Exception e){
			e.printStackTrace();
			map.put("success", false);
			map.put("error", "许可添加失败");
		}
		
		return map;
	}
	
	@RequestMapping("/system/permission/add")
	public String add(@RequestParam("pid")Integer pid,Map<String,Object> map){

		map.put("pid", pid);
		return "permission/add";
	}
	
	@RequestMapping("/system/permission/index")
	public String permissionIndex(){
		
		return "permission/index";
	}

	@ResponseBody
	@RequestMapping("/system/permission/tree")
	public Object tree(){
		
		List<Permission> permissions = new ArrayList<Permission>();
		List<Permission> ps = permissionService.queryAll();
		for (Permission p : ps) {
			Permission childPermission = p;
			int pid = childPermission.getPid();
			if(pid==0){
				permissions.add(p);
			}else{
				for (Permission cp : ps) {
					if(cp.getId() == pid){
						Permission parentPermission = cp;
						parentPermission.getChildren().add(childPermission);
					}
				}
			}
		}
		return permissions;
	}
}
