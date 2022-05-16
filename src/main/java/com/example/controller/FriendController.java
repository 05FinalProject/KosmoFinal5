package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/include")
public class FriendController {

	@RequestMapping("/friends/friend")
	public void friend() {
		
	}
}
