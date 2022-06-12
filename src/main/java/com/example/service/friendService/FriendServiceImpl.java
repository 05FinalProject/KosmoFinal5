package com.example.service.friendService;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DogKindRepository;
import com.example.dao.FriendRepository;
import com.example.dao.ImgRepository;
import com.example.dao.PetRepository;
import com.example.dao.UserRepository;
import com.example.domain.DogKindVO;
import com.example.domain.FriendVO;
import com.example.domain.ImgVO;
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
	
	@Autowired
	private FriendRepository fri;
	
	@Autowired
	private ImgRepository img;
	
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

	@Override
	public List<FriendVO> getFriendRequests(String userEmail) {
		List<FriendVO> list = new ArrayList<FriendVO>();
		for(FriendVO v : fri.getFriendRequest(userEmail)) {
			List<ImgVO> imgvo = img.findByUser(v.getUser1());
			if (imgvo.size()>0) {
				v.setImg(imgvo.get(0).getRealImgName());
				
			}
			list.add(v);
		}
		
		
		return list;
	}
}
