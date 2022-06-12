package com.example.walk;

import java.util.List;

public interface WalkService {
	
	public void insertWalk(WalkVO vo);
	
	public List<WalkVO> selectWalk(String user, String date);
	
	public List<WalkVO> selectWalk2(String user);

	WalkVO getById(int num);
	

}
