package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/include")
public class CommunityController {

	@RequestMapping("/community/daily")
	public void daily() {
	}
	
	@RequestMapping("/community/dailyDetail")
	public void dailyDetail() {

	}
	
	
	
}
