package com.example.service.loginService;

import com.example.domain.UserVO;

public interface LoginService {

	public UserVO findByUserEmail(String userEmail);
	
//	public UserVO userSearch(UserVO vo);

}
