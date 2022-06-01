package com.example.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.community.CommunityRepository;
import com.example.community.CommunityVO;

@Service
public class AdminCommunityServiceImpl implements AdminCommunityService {

	@Autowired
	private CommunityRepository communityRepo;
	
	@Override
	public List<CommunityVO> communityList(CommunityVO vo) {
		
		return (List<CommunityVO>) communityRepo.findAll();
	}
	
	
	
	
	
	
	
}
