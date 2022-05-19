package com.example.service.friendService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.DogKindRepository;
import com.example.domain.DogKindVO;

@Service
public class FriendServiceImpl implements FriendService {
	@Autowired
	private DogKindRepository d;
	
	
	public List<DogKindVO> getDogList(){
		return (List<DogKindVO>)d.findAll();
	}
	
	
}
