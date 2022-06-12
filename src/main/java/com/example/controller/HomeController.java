package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;
import com.example.mail.MailDto;
import com.example.mail.SendEmailService;
import com.example.service.chatingService.ChatingService;
import com.example.service.signUpService.SignUpService;

@Controller
@RequestMapping("/include")
public class HomeController {
	
	@Autowired
	private ChatingService cservice;

	
	@RequestMapping("/Main")
	public void MainPage(UserVO vo,HttpSession session,Model m) {
		UserVO u = new UserVO();
		if (session.getAttribute("userEmail") != null) {
			u = cservice.getUserInfo(session.getAttribute("userEmail").toString());
			
			m.addAttribute("unreadMessage", cservice.UnreadMessage(u).size());
			m.addAttribute("friendRequest", cservice.getFriendRequests(u).size());
			
		}
		
		
	}

}
