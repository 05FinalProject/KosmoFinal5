package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.loginService.LoginService;

@Controller
@RequestMapping("/include")
public class LoginController {
	
	@Autowired
	private LoginService lservice;
	

	@RequestMapping("/Login")
	public void loginPage() {
	}

}
