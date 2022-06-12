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

	//회원탈퇴
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

	public List<PetVO> adminUserDog(UserVO userVO){

		return petRepo.findByUser(userVO);
	}

	//강아지 리스트 출력
	public List<PetVO> getUserPet(UserVO userVO){
		return petRepo.findByUser(userVO);
	}

	//블랙리스트 목록 출력
	@Override
	public List<UserVO> blackList(UserVO vo) {

		return userRepo.blackList("Y");
 	}

	//블랙리스트 등록
	@Override
	public void  insertBlackList(String userEmail) {
		UserVO userVO = userRepo.findById(userEmail).get();
		userVO.setUserBlack("Y");

		userRepo.save(userVO);
	}

	//블랙리스트 취소
	@Override
	public void cancelBlackList(String userEmail) {
		UserVO userVO = userRepo.findById(userEmail).get();
		userVO.setUserBlack("N");

		userRepo.save(userVO);
	}


}
