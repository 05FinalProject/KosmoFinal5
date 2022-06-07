package com.example.service.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;
import org.springframework.web.bind.annotation.RequestParam;

public interface AdminAgencyService {
	
	//*********페이징 처리********************
	public List<AgencyVO> getHotelPaging(Pageable paging);
	
	public int countHotelRecord();
	
	public List<AgencyVO> getCafetPaging(Pageable paging);
		
	public int countCafeRecord();
	
	public List<AgencyVO> getHospitaltPaging(Pageable paging);
	
	public int countHospitalRecord();
	
	public List<AgencyVO> getFunehallPaging(Pageable paging);
	
	public int countFunehallRecord();
	
	public List<AbandonedVO> getAbandonePaging(Pageable paging);
	
	public int countRecord();
	//****************************************
	
	//****************차트*********************
	public List<HashMap<String, Object>> chartAgencyCount();
	public List<HashMap<String, Object>> chartSignupUser();
	//****************************************


	//*****************시설관리*****************
	//시설수정
	public AgencyVO updateAgency(Integer agencyNum, String tel, String name, String content, String addr, String subAddr);

	//시설등록
	public AgencyVO insertAgency(Integer agencyCategoryNum, String agencyName, String addr, String subAddr, String tel, String agencyContent, String agencyImage);

}
