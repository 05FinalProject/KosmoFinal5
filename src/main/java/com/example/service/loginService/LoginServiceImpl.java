package com.example.service.loginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserRepository user;

	@Override
	public UserVO findByUserEmail(String userEmail) {
		return user.findByUserEmail(userEmail);
	}

}
