package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminMainController {
	
	
	@RequestMapping("/indexAdmin")
	public void adminPage() {
	}
	
	//차트
	@RequestMapping("/chartsjs")
	public void charts() {
		
	}	
	
	//회원관리
	@RequestMapping("/adminMember")
	public void memberPage() {
		
	}
	
	//리뷰신고
	@RequestMapping("/report/adminRpReview")
	public void reportReview() {
		
	}
	
	//댓글신고
	@RequestMapping("/report/adminRpComment")
	public void reportComment() {
		
	}
	
	//게시글신고
	@RequestMapping("/report/adminRpBoard")
	public void reportBoard() {
		
	}
	
	//블랙리스트
	@RequestMapping("/report/adminBlacklist")
	public void Blacklist() {
		
	}
	
	//시설관리(보호소)
	@RequestMapping("/facilities/adminShelter")
	public void adminShelter() {
			
	}
	
	//시설관리(동물병원)
	@RequestMapping("/facilities/adminHospital")
	public void adminHospital() {
				
	}
	
	//시설관리(애견호텔)
	@RequestMapping("/facilities/adminHotel")
	public void adminHotel() {
						
	}
	
	//시설관리(장례식장)
	@RequestMapping("/facilities/adminFuneralhall")
	public void adminFuneralhall() {
						
	}
	
	//시설관리(애견카페)
	@RequestMapping("/facilities/adminCafe")
	public void adminCafe() {
							
	}
		
	//회원강아지 정보
	@RequestMapping("/adminDog")
	public void adminDog() {
									
	}
	
	//시설추가
	@RequestMapping("/facilities/adminAddFacilities")
	public void adminAddFacilities() {
										
	}
	


}
