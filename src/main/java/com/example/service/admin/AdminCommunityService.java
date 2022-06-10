package com.example.service.admin;

import java.util.List;

import com.example.community.CommunityVO;

public interface AdminCommunityService {
	
	//커뮤니티 리스트 출력(일상공유)
	public List<CommunityVO> communityList(CommunityVO vo);

	//대시보드 게시글 등록수 출력
	public int getCommunityTotalSize();


	

}
