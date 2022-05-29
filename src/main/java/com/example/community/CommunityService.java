package com.example.community;

import java.util.List;

import com.example.domain.ImgFileVO;

public interface CommunityService {
	
	/* public List<ImgFileVO> saveDaily(String p_imgname, String p_rimgname); */
	
	//게시글 등록
	public void insertDaily(CommunityVO vo);
	
	//게시글 상세보기
	public CommunityVO getCommunity(CommunityVO vo);
}
