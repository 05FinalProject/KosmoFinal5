package com.example.walk;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WalkServiceImpl implements WalkService{
	
	@Autowired
	private WalkRepository walkRepository;

	@Override
	public void insertWalk(WalkVO vo) {
		walkRepository.save(vo);
		
	}

}
