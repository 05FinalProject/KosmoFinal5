package com.example.service.admin;

import java.util.List;

import com.example.domain.ReportVO;

public interface AdminReportService {
	
	public List<Object[]> reportReviewList(ReportVO vo);
	
	public List<Object[]> reportCommentList(ReportVO vo);
	
	public List<Object[]> reportCommunityList(ReportVO vo);
	
	public List<ReportVO> blackList(ReportVO vo);
	


}
