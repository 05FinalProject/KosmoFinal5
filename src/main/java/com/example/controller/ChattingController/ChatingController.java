package com.example.controller.ChattingController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.ChatingRoomRepository;
import com.example.dao.JpaRepository;
import com.example.domain.ChatingRoomVO;
import com.example.domain.Room;



@Controller
@RequestMapping("/chating")
public class ChatingController {
	
	
	
	@Autowired
	private JpaRepository jpa;
	
	@Autowired
	private ChatingRoomRepository chatingRoomJpa;
	
	
	List<Room> roomList = new ArrayList<Room>();
	static int roomNumber = 0;
	
	@GetMapping("/chat")
	public ModelAndView chat(Room room) {
		ModelAndView mv = new ModelAndView();

		return mv;
	}
	
	@GetMapping("/friendChat")
	public ModelAndView chat1(Room room) {
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
	
	
	/**
	 * 방 페이지
	 * @return
	 */
	@RequestMapping("/friend")
	public void friend(ChatingRoomVO vo) {
		
		// if(vo != null) { chatingRoomJpa.deleteById(vo.getRoomNumber());  }
	
		if(vo.getCount() != 1) { 
			chatingRoomJpa.deleteByRoomMember(vo.getRoomMember());
		}	 	
	}
	
	
	/**
	 * 채팅방
	 * @return
	 */
	@RequestMapping("/moveChating")
	public ModelAndView chating(@RequestParam HashMap<Object, Object> params ,ChatingRoomVO vo) {
		ModelAndView mv = new ModelAndView();
		int roomNumber = Integer.parseInt((String) params.get("roomNumber"));
		
		List<Room> new_list = roomList.stream().filter(o->o.getRoomNumber()==roomNumber).collect(Collectors.toList());
		
		chatingRoomJpa.save(vo);

		mv.addObject("id",vo.getRoomMember());
		mv.addObject("roomName", params.get("roomName"));
		mv.addObject("roomNumber", params.get("roomNumber"));
		
		mv.addObject("getRoomNum",chatingRoomJpa.findByRoomName(vo.getRoomName()).size());
		
		mv.setViewName("/chating/chat");
		
		return mv;
	}
	
	
}