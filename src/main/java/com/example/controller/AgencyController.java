package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.service.agency.AgencyService;

@Controller
@RequestMapping("/include")
public class AgencyController {
	
	@Autowired
	private AgencyService ag; 
	
	
	@RequestMapping(value ="/agency", method=RequestMethod.GET)
	public String agency() {
		return "/include/agency";
	}
	
	@RequestMapping(value ="/agencyDetail", method=RequestMethod.GET)
	public String agencyDetail() {
		return "/include/agencyDetail";
	}
	
	@RequestMapping(value ="/agencyHotel", method=RequestMethod.GET)
	public String agencyHotel() {
		return "/include/agencyHotel";
	}
	
	@RequestMapping(value ="/agencyHotelDetail", method=RequestMethod.GET)
	public String agencyHotelDetail() {
		return "/include/agencyHotelDetail";
	}

	@RequestMapping(value ="/agencyShelter", method=RequestMethod.GET)
	public String agencyShelter(Model m) {
		
//		Pageable paging = PageRequest.of(0, 0,Sort.Direction.ASC,"seq");

//		m.addAttribute("agList",ag.findAll(paging) );
		
		return "/include/agencyShelter";
	}
	
	@RequestMapping(value ="/agencyShelterDetail", method=RequestMethod.GET)
	public String agencyShelterDetail() {
		return "/include/agencyShelterDetail";
	}
	
	@RequestMapping(value ="/yootest", method=RequestMethod.GET)
	public String yootest() {
		return "/include/yootest";
	}
}
