package com.example.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AgencyRepository;
import com.example.domain.AgencyVO;

@Service
public class AdminAgencyServiceImpl implements AdminAgencyService{
	
	@Autowired
	private AgencyRepository aRepo;
	
	//애견호텔 목록 출력
	@Override
	public List<AgencyVO> agencyList(AgencyVO vo) {
		
		return null;
	}
	
	
	

}
