package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AgencyVO;

@Repository
public interface AgencyRepository extends CrudRepository<AgencyVO, Integer> {
	
	@Query("SELECT a FROM AgencyVO a WHERE a.aCategoryNum = 1")
	public List<AgencyVO> findByACategoryNum();	
	
	//public List<AgencyVO> findByACategoryNum(int aCategoryNum);
	
	
	//시설 페이징 처리
	@Query("SELECT count(a) as count FROM AgencyVO a")
	 int countRecord();
	
	List<AgencyVO> findAll(Pageable paging);
	
}
