package com.example.walk;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;

@Service
public class WalkServiceImpl implements WalkService{
	
	@Autowired
	private WalkRepository walkRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public void insertWalk(WalkVO vo) {
		walkRepository.save(vo);
	}

	@Override
	public List<WalkVO> selectWalk(String email, String date) {
		
		UserVO user = userRepository.findById(email).get();
		List<WalkVO> walk = walkRepository.findByUser(user);
		System.out.println(walk);
		
		List<WalkVO> vo = new ArrayList<WalkVO>();
		
		for (WalkVO walkVO : walk) {
			walkVO.getCreatedDateAt();
			
			if(walkVO.getCreatedDateAt().toString().equals(date)) {
				vo.add(walkVO);
				
			}
			
		}
		System.out.println(vo);
		return vo;
		
	} 

	@Override
	public List<WalkVO> selectWalk2(String user) {
		
		return walkRepository.selectWalk2(user);
	}

	@Override
	public WalkVO getById(int num) {
	
		WalkVO vo = walkRepository.findById(num).get();
		
		return vo;
	}

}
