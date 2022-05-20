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
	
}
