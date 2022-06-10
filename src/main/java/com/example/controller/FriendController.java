package com.example.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.PetVO;
import com.example.domain.UserVO;
import com.example.service.chatingService.ChatingService;
import com.example.service.friendService.FriendService;

@Controller
@RequestMapping("/friend")
public class FriendController {
	
	@Autowired
	private FriendService service;
	
	@Autowired
	private ChatingService cservice;

	@RequestMapping("/friendList")
	public void friendList(Integer page,Model m,HttpSession session) {
		int fpage = 1;
		if(page != null) {
			fpage = page;
		}
		List<HashMap<String, Object>> friendList = cservice.friendList(session.getAttribute("userEmail").toString());
		
		m.addAttribute("list", friendList);
		m.addAttribute("count", friendList.size());
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
		//int cnt = service.getUserCount()-1;  //자기 빼고 숫자 세야하기 때문에 -1(레코드 수)
		List<UserVO> list = service.getRandomUsers((String)session.getAttribute("userEmail"));
		int cnt = list.size();
		if(cnt>18) {
			cnt=18;
		} 
		
			
		session.setAttribute("userRandom", list);
		
		m.addAttribute("count", cnt);
	}
	
	
}
