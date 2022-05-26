package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AgencyVO;

@Repository
public interface AgencyRepository extends CrudRepository<AgencyVO, Integer> {
	
	@Query("SELECT a FROM AgencyVO a WHERE a.agencyCategoryNum = 1")
	public List<AgencyVO> findByAgencyCategoryNum();	
	
	//public List<AgencyVO> findByACategoryNum(int aCategoryNum);
	
	
	//시설 페이징 처리(호텔)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 1")
	int countHotelRecord();
	
	List<AgencyVO> findByAgencyCategoryNum(Pageable paging, int agencyCategoryNum);
	
	//시설 페이징 처리(카페)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 2")
	int countCafeRecord();
	
	//시설 페이징 처리(병원)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 3")
	int countHospitalRecord();
	
	//시설 페이징 처리(장례식장)
	@Query("SELECT count(a) as count FROM AgencyVO a WHERE a.agencyCategoryNum = 5")
	int countFunehallRecord();
	
	
	
	
}
