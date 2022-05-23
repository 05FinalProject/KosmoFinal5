package com.example.service.agency;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.dao.AbandonedRepository;
import com.example.domain.AbandonedVO;

@Service
public class AgencyServiceImpl implements AgencyService{
	
	@Autowired
	private AbandonedRepository ab;
	
	public List<AbandonedVO> getPaging(Pageable paging){
		return ab.findAll(paging);
	}
	
	public int countRecord() {
		return ab.countRecord();
	}
	
	
}
