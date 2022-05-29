package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.UserVO;
import com.example.service.loginService.LoginService;

@SessionAttributes("user")
@Controller
@RequestMapping("/include")
public class LoginController {
	
	@Autowired
	private LoginService lservice;
	

	//@RequestMapping("/Login")
	//public void loginPage() {
	//}
	
	@GetMapping("/Login")
	public void loginView() {
	}
	
	
	
}
