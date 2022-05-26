package com.example.service.agency;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;



public interface AgencyService {

	public List<AbandonedVO> getPaging(Pageable paging);
	
	public int countRecord();
	
    public List<AgencyVO> getHotelPaging(Pageable paging);
	
	public int countHotelRecord();
	
	
	//보호소 상세 띄우기 
	AbandonedVO getagencyShelter(AbandonedVO vo);
	
	//호텔 상세 띄우기
	AgencyVO getagencyHotel(AgencyVO vo);
}
