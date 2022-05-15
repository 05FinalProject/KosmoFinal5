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

}
