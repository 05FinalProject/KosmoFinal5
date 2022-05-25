package com.example.controller.api;

import java.util.HashMap;
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
	
	
	
	@RequestMapping(value = "/members")
	public int members(Room room) {
		
		if(room.getId().equals("1")) {
			System.out.println(654321);
			return (Integer.parseInt(room.getRoomName())+1);
		}
			return (Integer.parseInt(room.getRoomName())-1);
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
	
	@RequestMapping(value = "/membersImg",produces = "application/json; charset=UTF-8")
	public HashMap membersImg(UserVO vo) {
		List<ImgVO> img = service.getUserImg(vo.getUserEmail());
		HashMap hm = new HashMap();
		hm.put("niName",service.getUserInfo(vo.getUserEmail()).getUserNickname() );
		hm.put("img",img.get(0).getPRimgname() );
		hm.put("email",vo.getUserEmail());
		return hm;
	}
	
	@RequestMapping(value = "/checkLogin",produces = "application/text; charset=UTF-8")
	public String checkLogin(UserVO vo) {
		
		String boo = "";
		
		UserVO vv = service.getUserInfo(vo.getUserEmail());
		System.out.println(vv.getUserPass());
		System.out.println(vo.getUserPass());
		if(vo.getUserPass().equals(vv.getUserPass())) {
			boo = "yes";
		}else {
			boo = "no";
		}
		
		
		
		return boo;
	}
	
	
}
