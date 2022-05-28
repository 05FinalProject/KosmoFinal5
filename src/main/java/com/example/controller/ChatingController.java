package com.example.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
		//채팅방list 출력
		m.addAttribute("list", service.getAllRooms(user));
		// user 이메일 값
		m.addAttribute("email",user.getUserEmail());
		//채팅방수 얻어오기
		m.addAttribute("count",service.getRoomCnt());
		
	}
	
	@GetMapping("/friend")
	public void friend() {
		
		
	}

	
	@PostMapping(value = "/friend")
	public void roomGoOut(ChatingRoomVO vo) {
		//채팅방나가면 테이블에 user 정보 삭제
		service.deleteByRoomMember(vo);
		
	}
	
	@GetMapping("/friendChat")
	public void friendChat(UserVO vo ,HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session);
		session.setAttribute("email", vo.getUserEmail());
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
		//채팅방들어온 user 사진,닉네임, email은 HashMap에 담기
		if(vo.getRoomNumber() != 0) {
			roomNum = vo.getRoomNumber();
			
			mv.addObject("rlist",service.getChatingRoomMemberInfo(vo));
			
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