package com.example.community;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/community")
public class CommunityRestController {

	@Autowired
	private CommunityService c_service;

	// 게시글 좋아요
	@RequestMapping(value = "/fullHeart", method = RequestMethod.POST)
	public String likeIt(Integer communityNum, String userEmail) {
		System.out.println(userEmail);
		System.out.println(communityNum);
		System.out.println("레스트 컨트롤러");
		c_service.likeIt(communityNum, userEmail);
		Integer likeItList = c_service.likeItList(communityNum, userEmail);
		return Integer.toString(likeItList);
	}

	
}
