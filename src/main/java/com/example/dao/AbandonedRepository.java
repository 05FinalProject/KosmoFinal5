package com.example.dao;

import java.util.List;


import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;

@Repository
public interface AbandonedRepository extends CrudRepository<AbandonedVO, Integer> {

	@Query("SELECT count(a) as count FROM AbandonedVO a")
	 int countRecord();
	
	List<AbandonedVO> findAll(Pageable paging);

}
