package com.example.service.admin;

import java.util.List;

import com.example.domain.ReportVO;
import com.example.domain.UserVO;

public interface AdminReportService {

	//리뷰신고리스트 출력
	public List<Object[]> reportReviewList(ReportVO vo);

	//댓글신고리스트 출력
	public List<Object[]> reportCommentList(ReportVO vo);

	//게시글신고리스트 출력
	public List<Object[]> reportCommunityList(ReportVO vo);



}
