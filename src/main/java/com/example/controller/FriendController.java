package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.PetVO;
import com.example.domain.UserVO;
import com.example.service.friendService.FriendService;

@Controller
@RequestMapping("/friend")
public class FriendController {
	
	@Autowired
	private FriendService service;

	@RequestMapping("/friendList")
	public void friendList() {
		
	}
	
	@RequestMapping("/friendBlockList")
	public void friendBlockList() {
		
	}
	
	@RequestMapping("/friendProfile")
	public void friendProfile(Model m) {
		m.addAttribute("kindList", service.getDogList());
	}

	@RequestMapping("/friendRequestList")
	public void friendRequestList() {

	}
	
	
	@RequestMapping(value="/friendFind", method = RequestMethod.GET)
	public void friendFind(Model m, HttpSession session) {
		int cnt = service.getUserCount()-1;  //자기 빼고 숫자 세야하기 때문에 -1(레코드 수)
		if(cnt>18) {
			cnt=18;
		} 
		if(session.getAttribute("userRandom")==null) {
			
			session.setAttribute("userRandom", service.getRandomUsers((String)session.getAttribute("userEmail")));
		}
		m.addAttribute("count", cnt);
	}
	
	
}
