package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/include")
public class AgencyController {
	
	
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

}
