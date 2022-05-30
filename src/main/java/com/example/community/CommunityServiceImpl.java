package com.example.community;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.domain.AgencyVO;
import com.example.domain.ImgFileVO;

@Service
public class CommunityServiceImpl implements CommunityService {
	
	
	@Autowired 
	private CommunityRepository communityRepo;
	/*
	 * public List<ImgFileVO> saveDaily(String p_imgname, String p_rimgname) {
	 * return communityRepo.findByP_imgnum(p_rimgname, p_rimgname); }
	 */
	
	public void insertDaily(CommunityVO vo) {
		communityRepo.save(vo);
	}
	
	public CommunityVO getCommunity(CommunityVO vo) {
		return communityRepo.findById(vo.getCommunityNum()).get();
	}

	@Override
	public List<CommunityVO> getCommunityPaging(Pageable paging) {		
		return communityRepo.findAll(paging);
	}
	
	@Override
	public int countCommunityRecord() {		
		return communityRepo.countCommunityRecord();
	}
}