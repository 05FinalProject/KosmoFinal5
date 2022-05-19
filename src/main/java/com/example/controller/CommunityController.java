package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/include")
public class CommunityController {
	
	


	
	//일상공유 리스트 페이지
	@RequestMapping(value="/community/daily", method=RequestMethod.GET)
	public String daily() {
		return "/include/community/daily";
	}
	
	//일상공유 상세보기 페이지
	@RequestMapping(value="/community/dailyDetail", method = RequestMethod.GET)
	public String dailyDetail() {
		return "/include/community/dailyDetail";
	}
	
	//일상공유 게시글 작성 페이지
	@RequestMapping(value="/community/writeDaily", method = RequestMethod.GET)
	public String writeDaily() {
		return "/include/community/writeDaily";
	}
	
}
