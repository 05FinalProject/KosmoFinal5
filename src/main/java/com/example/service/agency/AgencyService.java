package com.example.service.agency;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;
import com.example.domain.DogKindVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;



public interface AgencyService {
	
	
	//카테고리 별 위도 경도 이름 가져오기
	public List<HashMap<String, Object>> mapList(Integer number);

	
	
//*******************************************************************************
	
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
		
	
	//병원 페이지 처리 
	public List<AgencyVO> getHospitalPaging(Pageable paging);
			
	public int countHospitalRecord();
	
	//장례식장 페이지 처리 
	public List<AgencyVO> getHallPaging(Pageable paging);
				
	public int countFunehallRecord();
		
	
 //************************************************************************************************	
	//보호소 상세 띄우기 
	AbandonedVO getagencyShelter(AbandonedVO vo);
	
	//호텔 상세 띄우기
	AgencyVO getagencyHotel(AgencyVO vo);
	
	//카페 상세 띄우기
	AgencyVO getagencyCafe(AgencyVO vo);
	
	//병원 상세 띄우기
	AgencyVO getagencyHospital(AgencyVO vo);
	
	//장례식장 상세 띄우기
	AgencyVO getagencyHall(AgencyVO vo);
	
	//백과사전 상세 띄우기
	DogKindVO getencyclopedia(DogKindVO vo);
	
	//입양하기 페이지 
	AbandonedVO agencyShelterSignup(AbandonedVO vo);

	
//***************************************************
	//카페 검색 기능 
	List<AgencyVO> agencyCafeSearch(AgencyVO vo);
	
	//호텔 검색 기능
	List<AgencyVO> agencyHotelSearch(AgencyVO vo);
	
	//병원 검색 기능
    List<AgencyVO> agencyHospitalSearch(AgencyVO vo);
    
    //장례식장 검색 기능
    List<AgencyVO> agencyHallSearch(AgencyVO vo);
	
//**************************************************
	
	
	
//*****************************************************
	
	public List<ReviewVO> findByAgencyNum(AgencyVO vo);
	
	//카페 리뷰
	public void insertReview(ReviewVO vo);
	
	//호텔 리뷰
	public void insertHotelReview(ReviewVO vo);
	
	//병원 리뷰
	public void insertHospitalReview(ReviewVO vo);
	
	//장례식장 리뷰
	public void insertHallReview(ReviewVO vo);
}
