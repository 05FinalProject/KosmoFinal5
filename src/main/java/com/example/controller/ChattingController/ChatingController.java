package com.example.controller.ChattingController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.DogDAO;
import com.example.dao.JpaRepository;
import com.example.domain.ChatingRoomVO;
import com.example.domain.Room;



@Controller
@RequestMapping("/chating")
public class ChatingController {
	
	@Autowired
	private DogDAO dao;
	
	@Autowired
	private JpaRepository jpa;
	
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	@RequestMapping("/chat")
	public ModelAndView chat(Room room) {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	@RequestMapping("/chat2")
	public ModelAndView chat2(Room room) {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/room")
	public ModelAndView room() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/chating/room");
		return mv;
	}
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/friend")
	public void friend(ChatingRoomVO vo) {
		
		 if(vo != null) { dao.deleteRoomMember(vo); }
		 
		
	}
	
	/**
	 * 방 생성하기
	 * @param params
	 * @return
	 */
	@RequestMapping("/createRoom")
	public @ResponseBody List<Room> createRoom(@RequestParam HashMap<Object, Object> params){
		String roomName = (String) params.get("roomName");
		if(roomName != null && !roomName.trim().equals("")) {
			Room room = new Room();
			room.setRoomNumber(++roomNumber);
			room.setRoomName(roomName);
			roomList.add(room);
		}
		return roomList;
	}
	
	/**
	 * 방 정보가져오기
	 * @param params
	 * @return
	 */
	@RequestMapping("/getRoom")
	public @ResponseBody List<Room> getRoom(@RequestParam HashMap<Object, Object> params){
		return roomList;
	}
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params ,Room room) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		/*
		 * if(new_list != null && new_list.size() > 0) { mv.addObject("roomName",
		 * params.get("roomName")); mv.addObject("roomNumber",
		 * params.get("roomNumber")); mv.setViewName("chat"); }else {
		 * mv.setViewName("room"); }
		 */
		ChatingRoomVO vo = new ChatingRoomVO(room.getRoomNumber(),room.getRoomName(),room.getId());
		dao.insertRoomMember(vo);
		mv.addObject("id",room.getId());
		mv.addObject("roomName", params.get("roomName"));
		mv.addObject("roomNumber", params.get("roomNumber"));
		mv.addObject("getRoomNum",dao.getRoomNum(room));
		mv.setViewName("/chating/chat");
		mv.setViewName("/chating/chat");
		
		return mv;
	}
	
	
}