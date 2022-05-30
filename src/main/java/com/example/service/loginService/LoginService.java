package com.example.service.loginService;

import java.util.List;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;

public interface LoginService {

	public UserVO findByUserEmail(String userEmail);
	
	public ImgVO findBypRimgname(String pRimgname);

//	/* 회원탈퇴용으로 쓰는 중*/
//	public void delete(UserVO vo);
}
