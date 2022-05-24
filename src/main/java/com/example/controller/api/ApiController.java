package com.example.controller.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ChatingRoomVO;
import com.example.domain.ImgVO;
import com.example.domain.Room;
import com.example.domain.UserVO;
import com.example.service.chatingService.ChatingService;
import com.example.service.signUpService.SignUpService;

@Controller
@RequestMapping("/api")
@ResponseBody
public class ApiController {
	
	@Autowired
	private ChatingService service;
	
	
	
	@RequestMapping(value = "/members",produces = "application/text; charset=UTF-8")
	public String members(Room room) {
		System.out.println(room.getRoomName());
		if(room.getId().equals("1")) {
			return String.valueOf(Integer.parseInt(Character.toString(room.getRoomName().strip().charAt(4)) )+1);
		}
		return String.valueOf(Integer.parseInt(Character.toString(room.getRoomName().strip().charAt(4)) )-1);
		
	}
	
	@RequestMapping(value = "/checkRoomPass",produces = "application/text; charset=UTF-8")
	public String members(ChatingRoomVO vo) {
		String boo = "no";
		List<ChatingRoomVO> list = service.checkRoomPass(vo);
		if(list.size()>0) {
			boo = "yes";
		}
		return boo;
	}
	
	@RequestMapping(value = "/membersImg",produces = "application/text; charset=UTF-8")
	public String membersImg(UserVO vo) {
		List<ImgVO> img = service.getUserImg(vo.getUser_email());
		return img.get(0).getP_rimgname();
	}
	
	@RequestMapping(value = "/checkLogin",produces = "application/text; charset=UTF-8")
	public String checkLogin(UserVO vo) {
		
		String boo = "";
		
		UserVO vv = service.getUserInfo(vo.getUser_email());
		System.out.println(vv.getUser_pass());
		System.out.println(vo.getUser_pass());
		if(vo.getUser_pass().equals(vv.getUser_pass())) {
			boo = "yes";
		}else {
			boo = "no";
		}
		
		
		
		return boo;
	}
	
	
}
