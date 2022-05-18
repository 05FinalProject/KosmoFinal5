package com.example.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class AdminUserServiceImpl implements AdminUserService{
	
	@Autowired
	private UserRepository userRepo;

	//회원 목록 출력
	@Override
	public List<UserVO> userList(UserVO vo) {
		
		return (List<UserVO>)userRepo.findAll();
	}

	//회원 삭제
	@Override
	public void deleteUser(UserVO vo) {
	userRepo.deleteById(vo.getUser_email());
		
	}
	
	
		

	

}
