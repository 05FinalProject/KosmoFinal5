package com.example.controller.api;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.AgencyVO;
import com.example.domain.ChatingRoomVO;
import com.example.domain.FriendVO;
import com.example.domain.UserVO;
import com.example.service.agency.AgencyService;
import com.example.service.chatingService.ChatingService;

@Controller
@RequestMapping("/api")
@ResponseBody
public class ApiController {
	
	@Autowired
	private ChatingService service;
	
	@Autowired
	private AgencyService aService;
	
	//채팅방리스트페이지에 채팅방번호랑 비밀번호 일치하는지 확인
	@RequestMapping(value = "/checkRoomPass",produces = "application/text; charset=UTF-8")
	public String checkRoomPass(ChatingRoomVO vo) {
	
		return service.checkRoomPass(vo);
	}
	
	//채팅방들어올때 user정보(이메지,닉네임)출력
	@RequestMapping(value = "/membersImg",produces = "application/json; charset=UTF-8")
	public HashMap<String,Object> membersImg(UserVO vo) {
		
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
	
	//agencyCafe 검색기능
	@RequestMapping("/agencyCafeSearch")
	public List<AgencyVO> agencyCafeSearch(AgencyVO vo){
		
		return aService.agencyCafeSearch(vo);
		
	}
	
	//agencyhotel 검색기능
		@RequestMapping("/agencyHotelSearch")
		public List<AgencyVO> agencyHotelSearch(AgencyVO vo){
			
			return aService.agencyHotelSearch(vo);
			
		}
		
		//agency병원 검색기능
		@RequestMapping("/agencyHospitalSearch")
		public List<AgencyVO> agencyHospitalSearch(AgencyVO vo){
					
			return aService.agencyHospitalSearch(vo);
					
				}	
	
	//보내는 매세지를 db에 저장하기
	@RequestMapping("/saveMessage")
	public void saveMessage(@RequestParam HashMap<String,Object> params) {
		service.insertMessage(params);
		
	}
	
	//화면 뜨자마자 아니면 친구선택할때에 채팅기록 뜨기
	@RequestMapping("messageHistory")
	public List<HashMap<String, Object>> messageHistory(FriendVO vo){
		return service.messageHistory(vo.getFriendNo());
	}
	
	//친구차단기능
	@RequestMapping("/blackList")
	public void blackList(FriendVO vo) {
		service.blackList(vo);
	}
	
	//1:1채팅 친구 검색
	@RequestMapping("friendSearch")
	public List<FriendVO> friendSearch(FriendVO vo){
		return service.friendSearch(vo.getSearch(),vo.getFriend());
		
	}
	
	////친구채팅창 떠나는 시간 저장
	@RequestMapping("leaveTime")
	public void leaveTime(UserVO vo) {
		service.leaveTime(vo);
	}
	
	//친구 요청
	@RequestMapping("/friendRequest")
	public void friendRequest(UserVO vo , HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userEmail = session.getAttribute("userEmail").toString();
		service.friendRequest(userEmail,vo.getUserEmail());
		
	}
	
	//
	@RequestMapping("/complet")
	public void complet(UserVO vo,HttpSession session) {
		String userEmail = session.getAttribute("userEmail").toString();
		service.complet(vo,userEmail);
	}
}
