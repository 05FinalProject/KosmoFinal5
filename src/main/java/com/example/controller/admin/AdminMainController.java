package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminMainController {
	
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String adminPage() {
		return "/admin/indexAdmin";
		
	}
	
	//차트
	@RequestMapping(value="/adminChartsjs", method=RequestMethod.GET)
	public String charts() {
		return "/admin/chartsjs";
	}	
	
	//회원관리
	@RequestMapping(value="/adminMember", method=RequestMethod.GET)
	public String memberPage() {
		return "/admin/adminMember";
	}
	
	//리뷰신고
	@RequestMapping(value="adminReview", method=RequestMethod.GET)
	public String reportReview() {
		return "/admin/report/adminRpReview";
	}
	
	//댓글신고
	@RequestMapping(value="adminComment", method=RequestMethod.GET)
	public String reportComment() {
		return "/admin/report/adminRpComment";
	}
	
	//게시글신고
	@RequestMapping(value="adminBoard", method=RequestMethod.GET)
	public String reportBoard() {
		return "/admin/report/adminRpBoard";
	}
	
	//블랙리스트
	@RequestMapping(value="adminBlacklist", method=RequestMethod.GET)
	public String Blacklist() {
		return "/admin/report/adminBlacklist";
	}
	
	//시설관리(보호소)
	@RequestMapping(value="adminShelter", method=RequestMethod.GET)
	public String adminShelter() {
		return "/admin/facilities/adminShelter";
	}
	
	//시설관리(동물병원)
	@RequestMapping(value="adminHospital", method=RequestMethod.GET)
	public String adminHospital() {
		return "/admin/facilities/adminHospital";
	}
	
	//시설관리(애견호텔)
	@RequestMapping(value="adminHotel", method=RequestMethod.GET)
	public String adminHotel() {
		return "/admin/facilities/adminHotel";		
	}
	
	//시설관리(장례식장)
	@RequestMapping(value="adminFuneralhall", method=RequestMethod.GET)
	public String adminFuneralhall() {
		return "/admin/facilities/adminFuneralhall";		
	}
	
	//시설관리(애견카페)
	@RequestMapping(value="adminCafe", method=RequestMethod.GET)
	public String adminCafe() {
		return "/admin/facilities/adminCafe";			
	}
		
	//회원강아지 정보
	@RequestMapping(value="adminDog", method=RequestMethod.GET)
	public String adminDog() {
		return "/admin/adminDog";					
	}
	
	//시설추가
	@RequestMapping(value="adminFacilities", method=RequestMethod.GET)
	public String adminAddFacilities() {
		return "/admin/facilities/adminAddFacilities";						
	}
	
	//커뮤 관리
	@RequestMapping(value="adminComunities", method=RequestMethod.GET)
	public String adminCommunities() {
		return "/admin/communities/adminCommunities";
	}
	
	//커뮤 일상
	@RequestMapping(value="adminDaily", method=RequestMethod.GET)
	public String adminDaily() {
		return "/admin/communities/adminDaily";
	}
	


}
