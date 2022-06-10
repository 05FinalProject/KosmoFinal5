package com.example.community;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/communnity")
public class CommunityRestController {

	@Autowired
	private CommunityService c_service;

	// 게시글 좋아요
	@RequestMapping(value = "/fullHeart", method = RequestMethod.POST)
	public boolean likeIt(Integer communityNum, String userEmail, Integer likeNum, Integer likeState) {
		c_service.likeIt(communityNum, userEmail, likeNum, likeState);
		return true;
	}

}
