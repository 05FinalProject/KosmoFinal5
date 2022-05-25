package com.example.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.domain.ChatingRoomVO;

import com.example.domain.UserVO;
import com.example.service.chatingService.ChatingService;



@Controller
@RequestMapping("/chating")
public class ChatingController {
	
	@Autowired
	private ChatingService service;
	
	List<ChatingRoomVO> roomList = new ArrayList<ChatingRoomVO>();
	static int roomNumber = 0;
	
	@GetMapping("/chat")
	public void chat() {
		
	}
	
	@GetMapping("/room")
	public void room(Model m,UserVO user) {
		List<ChatingRoomVO> list = service.getAllRooms();
		m.addAttribute("list", list);
		m.addAttribute("email",user.getUserEmail());
		
	}
	
	@PostMapping(value = "/friend")
	public void roomGoOut(ChatingRoomVO vo) {
		
		service.deleteByRoomMember(vo);
		
	}
	
	@GetMapping("/friendChat")
	public void chat1() {
		
	}
	
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/friend")
	public void friend() {
		
	}
	
	
	/**
	 * 채팅방
	 * @return
	 */
	@PostMapping("/chatingRoom")
	public ModelAndView chating(ChatingRoomVO vo) {
		ModelAndView mv = new ModelAndView();

		List<ChatingRoomVO> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
	
		int roomNum = 1;
		if(vo.getRoomNumber() != 0) {
			roomNum = vo.getRoomNumber();
			List<ChatingRoomVO> list = service.findByRoomNumber(roomNum);
			ArrayList rlist = new ArrayList();
			HashMap hm = new HashMap();
			for(ChatingRoomVO v : list) {
				hm = new HashMap();
				hm.put("img", service.getUserImg(v.getRoomMember()).get(0).getPImgname()); //img
				hm.put("nickName",service.getUserInfo(v.getRoomMember()).getUserNickname());//niname
				hm.put("email", v.getRoomMember());
				rlist.add(hm);
			}
			mv.addObject("rlist",rlist);
			
			
			
			
		}else {
			List<ChatingRoomVO> chatingList = service.getLastRoomNumber();
			
			if(chatingList.size()>0) {
				roomNum = chatingList.get(0).getRoomNumber()+1;
			}
		}
		
		vo.setRoomNumber(roomNum);
		service.insertRoomMember(vo);
		mv.addObject("id",vo.getRoomMember());
		mv.addObject("roomName", vo.getRoomName());					
		mv.addObject("roomNumber", roomNum);

		mv.addObject("getRoomNum",service.getRoomMemCnt(roomNum));
		System.out.println(service.getRoomMemCnt(roomNum));
		mv.addObject("niName", service.getUserInfo(vo.getRoomMember()).getUserNickname());
		
		List<ChatingRoomVO> list = service.findByRoomNumber(vo);
		for(ChatingRoomVO vv: list) {
			service.getUserInfo(vv.getRoomMember());
			
		}
		mv.setViewName("/chating/chat");
		
		return mv;
	}
	
}