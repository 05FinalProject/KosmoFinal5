package com.example.service.admin;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AgencyVO;

public interface AdminAgencyService {
	
	//페이징 처리
	public List<AgencyVO> getHotelPaging(Pageable paging);
	
	public int countHotelRecord();
	
	//페이징 처리
	public List<AgencyVO> getCafetPaging(Pageable paging);
		
	public int countCafeRecord();
	
	
}
