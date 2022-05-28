package com.example.service.loginService;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserRepository user;
	
	public UserVO getUser(UserVO vo) {
		Optional<UserVO> findUser = user.findById(vo.getUserEmail());
		if(findUser.isPresent())
			return findUser.get();
		else return null;
	}
	

}
