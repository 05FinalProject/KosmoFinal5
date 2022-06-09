package com.example.service.admin;

import java.util.List;

import com.example.dao.PetRepository;
import com.example.domain.PetVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class AdminUserServiceImpl implements AdminUserService{
	
	@Autowired
	private UserRepository userRepo;

	@Autowired
	private PetRepository petRepo;

	//회원 목록 출력
	@Override
	public List<UserVO> userList(UserVO vo) {
		return (List<UserVO>)userRepo.findAll();
	}

	//회원 삭제
	/*@Override
	public void deleteUser(UserVO vo) {
	userRepo.deleteById(vo.getUserEmail());
		
	}*/

	@Override
	public void deleteUser(String userEmail) {
		UserVO userVO = userRepo.findById(userEmail).get();
		userVO.setUserState("N");

		userRepo.save(userVO);
	}

	//대시보드 총 유저수 출력
	@Override
	public int getUserTotalSize() {
		List<UserVO> cnt = (List<UserVO>)userRepo.findAll();
		int Count = cnt.size();
		return Count;
	}

	public int getPetTotalSize() {
		List<PetVO> cnt = (List<PetVO>)petRepo.findAll();
		int Count = cnt.size();
		return Count;
	}

	@Override
	public int getSignupCount() {

		return userRepo.getSignupCount();
	}

	@Override
	public List<PetVO> petList(PetVO vo) {
		return (List<PetVO>)userRepo.findByPetNum();
	}


}
