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
	
	//일상공유 페이지 게시글 등록
	public void insertDaily(CommunityVO vo) {
		communityRepo.save(vo);
	}
	
	//일상공유 페이지 상세보기
	public CommunityVO getCommunity(CommunityVO vo) {
		CommunityVO cvo = communityRepo.findById(vo.getCommunityNum()).get();
		return communityRepo.save(cvo);
	}

	//*******************************************************************
	//일상공유 페이지 페이징 처리
	@Override
	public List<CommunityVO> getCommunityPaging(Pageable paging) {		
		return communityRepo.findAll(paging);
	}
	
	@Override
	public int countCommunityRecord() {		
		return communityRepo.countCommunityRecord();
	}
	//*******************************************************************
}