package com.atguigu.crowdfunding.cpes.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.atguigu.crowdfunding.cpes.bean.User;
import com.atguigu.crowdfunding.cpes.service.UserService;
import com.atguigu.crowdfunding.util.Const;
import com.atguigu.crowdfunding.util.MD5Utils;

@Controller
@RequestMapping("/system/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	/**
	 * 用户登录
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/login")
	public Object login( User user,HttpSession session ) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 根据登录账号查询用户信息
		User dbUser = userService.queryUserByLoginacct(user.getLoginacct());
		if ( dbUser == null ) {
			resultMap.put("success", false);
			resultMap.put("error", "用户账号不存在。请重新输入");
		} else {
		    if ( dbUser.getUserpswd().equals(MD5Utils.md5(user.getUserpswd())) ) {
		    	session.setAttribute(Const.LOGIN_USER, dbUser);
		    	resultMap.put("success", true);
		    } else {
		    	resultMap.put("success", false);
		    	resultMap.put("error", "用户账号/密码不正确。请重新输入");
		    }
		}
		return resultMap;
	}
}
