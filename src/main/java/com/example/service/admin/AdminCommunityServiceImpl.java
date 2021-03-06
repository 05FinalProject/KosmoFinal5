package com.example.service.admin;

import java.util.List;

import com.example.domain.PetVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.community.CommunityRepository;
import com.example.community.CommunityVO;

@Service
public class AdminCommunityServiceImpl implements AdminCommunityService {
	@Autowired
	private CommunityRepository communityRepo;



	
	//커뮤니티 일상공유 리스트 출력
	@Override
	public List<CommunityVO> communityList(CommunityVO vo) {
		
		return (List<CommunityVO>) communityRepo.findAll();
	}

	@Override
	public int getCommunityTotalSize() {
			List<CommunityVO> cnt = (List<CommunityVO>)communityRepo.findAll();
			int Count = cnt.size();
			return Count;
		}
	}
