package com.example.service.loginService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ImgRepository;
import com.example.dao.UserRepository;
import com.example.domain.ImgVO;
import com.example.domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserRepository user;
	
	@Autowired
	private ImgRepository Img;

	@Override
	public UserVO findByUserEmail(String userEmail) {
		return user.findByUserEmail(userEmail);
	}

	@Override
	public ImgVO findBypRimgname(String pRimgname) {
		
		return Img.findByUserEmail(pRimgname).get(0);
	}
}
