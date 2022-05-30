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

	
	/* DB에 회원의 사진이 있으면 가져오기 */
	@Override
	public ImgVO findBypRimgname(String pRimgname) {
		return Img.findByUserEmail(pRimgname).get(0);
	}

//	/* 회원탈퇴용으로 쓰는 중*/
//	@Override
//	public void delete(UserVO vo) {
//		user.deleteById(vo.getUserEmail());
//	}
}
