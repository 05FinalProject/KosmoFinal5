package com.example.service.friendService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DogKindRepository;
import com.example.dao.PetRepository;
import com.example.dao.UserRepository;
import com.example.domain.DogKindVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;

@Service
public class FriendServiceImpl implements FriendService {
	@Autowired
	private DogKindRepository d;
	
	@Autowired
	private PetRepository petRepo;
	
	@Autowired
	private UserRepository userRepo;
	
	public List<DogKindVO> getDogList(){
		return (List<DogKindVO>)d.findAll();
	}
	
	public int getUserCount() {
		return userRepo.getUserCount();
	}
	
	public List<UserVO> getRandomUsers(String email) {
		List<UserVO> list = new ArrayList<UserVO>();
		
		for(Object[] o:userRepo.getRandomUsers(email)) {
			UserVO uvo = new UserVO();
			uvo.setUserEmail((String)o[0]);
			uvo.setUserNickname((String)o[1]);
			list.add(uvo);
		}
		
		return list;
	}
}
