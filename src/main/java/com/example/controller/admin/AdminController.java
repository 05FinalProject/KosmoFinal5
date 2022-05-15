package com.example.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	
	@RequestMapping("/indexAdmin")
	public void adminPage() {
	}
	
	//차트
	@RequestMapping("/pages/charts/chartsjs")
	public void charts() {
		
	}	
	
	//회원관리
	@RequestMapping("/adminMember")
	public void memberPage() {
		
	}
	
	//리뷰신고
	@RequestMapping("/adminRpReview")
	public void reportReview() {
		
	}
	
	//댓글신고
	@RequestMapping("/adminRpComment")
	public void reportComment() {
		
	}
	
	//게시글신고
	@RequestMapping("/adminRpBoard")
	public void reportBoard() {
		
	}
	
	//블랙리스트
	@RequestMapping("/adminBlacklist")
	public void Blacklist() {
		
	}
	
	//시설관리(보호소)
	@RequestMapping("/adminShelter")
	public void adminShelter() {
			
	}
	
	//시설관리(동물병원)
	@RequestMapping("/adminHospital")
	public void adminHospital() {
				
	}
	
	//시설관리(애견호텔)
	@RequestMapping("/adminHotel")
	public void adminHotel() {
						
	}
	
	//시설관리(장례식장)
	@RequestMapping("/adminFuneralhall")
	public void adminFuneralhall() {
						
	}
	
	//시설관리(애견카페)
	@RequestMapping("/adminCafe")
	public void adminCafe() {
							
	}
		
	//시설관리(애견카페)
	@RequestMapping("/adminDog")
	public void adminDog() {
									
	}
	
	//시설추가
	@RequestMapping("/adminAddFacilities")
	public void adminAddFacilities() {
										
	}
	


}
