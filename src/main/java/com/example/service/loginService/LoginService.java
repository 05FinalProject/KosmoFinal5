package com.example.service.loginService;

import java.util.List;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;

public interface LoginService {

	public UserVO findByUserEmail(String userEmail);
	
	public ImgVO findBypRimgname(String pRimgname);
}
