package com.example.service.agency;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.AbandonedRepository;
import com.example.domain.AbandonedVO;

@Service
public class AgencyServiceImpl implements AgencyService{
	@Autowired
	private AbandonedRepository ab;
	
	public List<AbandonedVO> getAllAbandoned(){
		return (List<AbandonedVO>)ab.findAll();
	}
	
	
}
