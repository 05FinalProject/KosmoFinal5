package com.example.service.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ReportRepository;
import com.example.domain.ReportVO;

@Service
public class AdminReportServiceImpl implements AdminReportService{
	
	@Autowired
	private ReportRepository rpRepo;

	//리뷰 목록 출력
	@Override
	public List<Object[]> reportReviewList(ReportVO vo) {
		
		return rpRepo.reportReview();
	}
	
	//댓글 목록 출력
	@Override
	public List<ReportVO> reportCommentList(ReportVO vo) {
		
		return (List<ReportVO>)rpRepo.findAll();
	}

	//게시글 목록 출력
	@Override
	public List<ReportVO> reportCommunityList(ReportVO vo) {
		
		return (List<ReportVO>)rpRepo.findAll();
	}

	//블랙리스트 목록 출력
	@Override
	public List<ReportVO> blackList(ReportVO vo) {
		
		return (List<ReportVO>)rpRepo.findAll();
	}
	
	
	
	
	
	
	
	
	

}
