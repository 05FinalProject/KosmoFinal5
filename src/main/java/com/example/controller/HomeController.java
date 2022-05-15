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
	
	@RequestMapping("login")
	public void loginPage() {
	}
	
	@RequestMapping("/Main")
	public void MainPage() {
	}
	
	
}
