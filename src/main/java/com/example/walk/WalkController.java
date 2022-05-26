package com.example.walk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/walk")
public class WalkController {
	
	@Autowired
	private WalkService walkService;
	
	@RequestMapping(value ="", method=RequestMethod.GET)
	public String walk() {
		
		return "/walk/walk";
	}
	

}
