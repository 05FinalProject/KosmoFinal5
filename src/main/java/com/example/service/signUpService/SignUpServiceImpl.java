package com.example.service.signUpService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	private UserRepository user;
	
	public void insertUser(UserVO vo) {
		user.save(vo);
	}
	
	
	
	
	

}
