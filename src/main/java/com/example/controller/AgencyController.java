package com.example.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.AbandonedVO;
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

	//agencyShelter 페이징 처리
	@RequestMapping(value ="/agencyShelter", method=RequestMethod.GET)
	public String agencyShelter(Model m,AbandonedVO vo) {
		int page = 1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page-1, 9,Sort.Direction.ASC,"abNo");

		m.addAttribute("paging",ag.getPaging(paging) );
		
		m.addAttribute("count",ag.countRecord() );
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
