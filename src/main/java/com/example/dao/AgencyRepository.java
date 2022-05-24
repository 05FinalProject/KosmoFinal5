package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AgencyVO;

@Repository
public interface AgencyRepository extends CrudRepository<AgencyVO, Integer> {
	
	
	@Query("SELECT a FROM AgencyVO a WHERE a.a_category_num = 1")
	public List<AgencyVO> agencyHotelList();	
	
}
