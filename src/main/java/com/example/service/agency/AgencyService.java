package com.example.service.agency;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.domain.AbandonedVO;



public interface AgencyService {

	public List<AbandonedVO> getPaging(Pageable paging);
	
	public int countRecord();
	
}
