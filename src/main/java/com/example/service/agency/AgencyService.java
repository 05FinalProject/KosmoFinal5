package com.example.service.agency;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;
import com.example.domain.DogKindVO;



public interface AgencyService {

	//보호소 페이지 처리
	public List<AbandonedVO> getPaging(Pageable paging);
	
	public int countRecord();
	
	
	//호텔 페이지 처리 
    public List<AgencyVO> getHotelPaging(Pageable paging);
	
	public int countHotelRecord();
	
	//카페 페이지 처리 
	public List<AgencyVO> getCafePaging(Pageable paging);
		
	public int countCafeRecord();
	
	//백과 사전 페이지 처리
	public List<DogKindVO> getkindPaging(Pageable paging);
	
	public int countkindRecord();
		
	
 //************************************************************************************************	
	//보호소 상세 띄우기 
	AbandonedVO getagencyShelter(AbandonedVO vo);
	
	//호텔 상세 띄우기
	AgencyVO getagencyHotel(AgencyVO vo);
	
	//카페 상세 띄우기
	AgencyVO getagencyCafe(AgencyVO vo);
	
	//백과사전 상세 띄우기
	//DogKindVO getencyclopedia(DogKindVO vo);
	
	
//***************************************************
	List<AgencyVO> agencyCafeSearch(AgencyVO vo);
}
