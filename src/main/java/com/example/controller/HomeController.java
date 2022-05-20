package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.domain.UserVO;
import com.example.service.signUpService.SignUpService;

@Controller
@RequestMapping("/include")
public class HomeController {
	
	@Autowired
	private SignUpService signUp;

	@RequestMapping("Header")
	public void HeaderPage() {
	}
	
	@RequestMapping("/Footer")
	public void FooterPage() {
	}
	
	
	@RequestMapping("/Main")
	public void MainPage(UserVO vo) {
		vo.setUser_address(vo.getAddr1()+vo.getAddr2()+vo.getAddr3());
		vo.setUser_black("N");
		vo.setUser_admin("N");
		
		
		signUp.insertUser(vo);
	}
	
	@RequestMapping("/signUp")
	public void signUpPage( ) {
		
	}
	
	@RequestMapping("/findPassword")
	public void findPass() {	
	}
	
	@RequestMapping("/myPage/myPageProfile")
	public void myPageProfile() {
	}
}
