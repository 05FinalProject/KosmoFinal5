package com.example.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dao.DogDAO;
import com.example.domain.Room;

@Controller
@RequestMapping("/api")
@ResponseBody
public class ApiController {
	
	@Autowired
	private DogDAO dao;
	
	@RequestMapping(value = "/members",produces = "application/text; charset=UTF-8")
	public String members(Room room) {
		System.out.println(room.getRoomName());
		if(room.getId().equals("1")) {
			return String.valueOf(Integer.parseInt(Character.toString(room.getRoomName().strip().charAt(4)) )+1);
		}
		
		return String.valueOf(Integer.parseInt(Character.toString(room.getRoomName().strip().charAt(4)) )-1);
		
	}
}
