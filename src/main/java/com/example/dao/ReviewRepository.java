package com.example.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AgencyVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;
@Repository
public interface ReviewRepository extends CrudRepository<ReviewVO, Integer>{
	List<ReviewVO> findByAgency(AgencyVO vo);

	List<ReviewVO> findByUser(UserVO u);
}
