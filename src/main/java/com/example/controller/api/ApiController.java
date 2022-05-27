package com.example.controller.api;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ChatingRoomVO;
import com.example.domain.UserVO;
import com.example.service.chatingService.ChatingService;

@Controller
@RequestMapping("/api")
@ResponseBody
public class ApiController {
	
	@Autowired
	private ChatingService service;
	
	//채팅방리스트페이지에 채팅방번호랑 비밀번호 일치하는지 확인
	@RequestMapping(value = "/checkRoomPass",produces = "application/text; charset=UTF-8")
	public String checkRoomPass(ChatingRoomVO vo) {
	
		return service.checkRoomPass(vo);
	}
	
	//채팅방들어올때 user정보(이메지,닉네임)출력
	@RequestMapping(value = "/membersImg",produces = "application/json; charset=UTF-8")
	public HashMap membersImg(UserVO vo) {
		
		return service.getChatingRoomUserInfo(vo);
	}
	
	//login페이지 id와 비밀번호 일치하는지 확인
	@RequestMapping(value = "/checkLogin",produces = "application/text; charset=UTF-8")
	public String checkLogin(UserVO vo) {
	
		return service.checkLogin(vo);
		
	}
	
	//roomList 페이지에 검색기능
	@RequestMapping("/roomSearch")
	public List<ChatingRoomVO> roomSearch(ChatingRoomVO vo) {
		return service.roomSearch(vo);
	}
	
	
	
}
