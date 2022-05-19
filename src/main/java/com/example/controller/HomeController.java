package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/include")
public class HomeController {

	@RequestMapping("Header")
	public void HeaderPage() {
	}
	
	@RequestMapping("/Footer")
	public void FooterPage() {
	}
	
	
	@RequestMapping("/Main")
	public void MainPage() {
	}
	
	@RequestMapping("/signUp")
	public void signUpPage() {
	}
	
	@RequestMapping("/findPassword")
	public void findPass() {	
	}
	
	@RequestMapping("/myPage/myPageProfile")
	public void myPageProfile() {
	}
}
