package com.example.service.admin;

import java.util.List;

import com.example.dao.UserRepository;
import com.example.domain.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReportRepository;
import com.example.domain.ReportVO;

@Service
public class AdminReportServiceImpl implements AdminReportService{
	
	@Autowired
	private ReportRepository rpRepo;

	@Autowired
	private UserRepository uRepo;

	//리뷰 목록 출력
	@Override
	public List<Object[]> reportReviewList(ReportVO vo) {
		
		return rpRepo.reportReview();
	}
	
	//댓글 목록 출력
	@Override
	public List<Object[]> reportCommentList(ReportVO vo) {
		
		return rpRepo.reportComment();
	}

	//게시글 목록 출력
	@Override
	public List<Object[]> reportCommunityList(ReportVO vo) {
		
		return rpRepo.reportCommunity();
	}



}
