package com.example.service.admin;

import java.util.List;

import com.example.domain.PetVO;
import com.example.domain.UserVO;

public interface AdminUserService {
	
	//회원 목록 출력
	public List<UserVO> userList(UserVO vo);

	//회원 삭제
	public void deleteUser(String userEmail);

	public int getUserTotalSize();

	public int getPetTotalSize();

	public int getSignupCount();

	//강아지 리스트 출력
	public List<PetVO> petList(PetVO vo);

	

}
