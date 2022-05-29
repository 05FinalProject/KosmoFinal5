package com.example.community;

import java.util.List;

import com.example.domain.ImgFileVO;

public interface CommunityService {
	
	/* public List<ImgFileVO> saveDaily(String p_imgname, String p_rimgname); */
	
	public void insertDaily(CommunityVO vo);
}
