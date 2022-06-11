package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.ReportVO;
@Repository
public interface ReportRepository extends CrudRepository<ReportVO, Integer>{

	//리뷰신고 리스트 출력
	@Query(value = "select rp.r_num, rp.user_email, rv.review_content, rp.r_reason    "
			+ "from report rp      "
			+ "inner join review rv        "
			+ "on rp.review_num = rv.review_num    ", nativeQuery = true)
	 List<Object[]> reportReview();
	
	 //댓글신고 리스트 출력
	 @Query(value = "SELECT ct.comment_num, ct.u_email, ct.comment_content, rp.r_reason, rp.r_date   "
	 		+ "FROM comment ct\r\n    "
	 		+ "INNER JOIN report rp\r\n     "
	 		+ "ON ct.comment_num = rp.comment_num     ", nativeQuery = true)
	 List<Object[]> reportComment();
	 
	 //게시글 리스트 출력
	 @Query(value = "SELECT rp.c_num, cm.c_title, cm.user_email, rp.r_reason, rp.r_date     "
	 		+ "FROM community cm     "
	 		+ "INNER JOIN report rp    "
	 		+ "ON cm.c_num = rp.c_num    ", nativeQuery = true)
	 List<Object[]> reportCommunity();

	 //블랙리스트 출력

}
