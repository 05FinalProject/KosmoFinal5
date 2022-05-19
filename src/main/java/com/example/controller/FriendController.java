package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.service.friendService.FriendService;

@Controller
@RequestMapping("/include")
public class FriendController {
	
	@Autowired
	private FriendService service;

	@RequestMapping("/friend/friendList")
	public void friendList() {
		
	}
	
	@RequestMapping("/friend/friendBlockList")
	public void friendBlockList() {
		
	}
	
	@RequestMapping("/friend/friendProfile")
	public void friendProfile(Model m) {
		m.addAttribute("kindList", service.getDogList());
	}

	@RequestMapping("/friend/friendlist")
	public void friendlist() {

	}
	
	@RequestMapping("/friend/friendFind")
	public void friendFind() {
		
	}
}
