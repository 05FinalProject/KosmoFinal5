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

@Controller
@RequestMapping("/api")
@ResponseBody
public class ApiController {
	
	@Autowired
	private ChatingService service;
	
	@RequestMapping(value = "/members",produces = "application/text; charset=UTF-8")
	public int members(Room room) {
		System.out.println(room.getRoomName());
		if(room.getId().equals("1")) {
			return Integer.parseInt(room.getRoomName())+1;
		}

		
			return Integer.parseInt(room.getRoomName())-1;

		
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
		List<ImgVO> img = service.getUserImg(vo.getUser_email());
		HashMap hm = new HashMap();
		hm.put("niName",service.getUserInfo(vo.getUser_email()).getUser_nickname() );
		hm.put("img",img.get(0).getP_rimgname() );
		hm.put("email",vo.getUser_email());
		return hm;
	}
	
	
}
