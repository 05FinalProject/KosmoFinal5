package com.example.service.admin;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AgencyVO;

public interface AdminAgencyService {
	
	//애견호텔 목록 출력
	public List<AgencyVO> agencyList(AgencyVO vo);
	
	//페이징 처리
	public List<AgencyVO> getPaging(Pageable paging);
	
	public int countRecord();
	
	
	
	
}
