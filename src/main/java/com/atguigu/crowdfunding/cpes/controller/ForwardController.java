package com.atguigu.crowdfunding.cpes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 跳转控制器
 * @author evaima
 *
 */
@Controller
@RequestMapping("/")
public class ForwardController {

	@RequestMapping("/system/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/system/main")
	public String main() {
		return "main";
	}
	
	
}
