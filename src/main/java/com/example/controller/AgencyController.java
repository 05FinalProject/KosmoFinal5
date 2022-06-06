package com.example.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;
import com.example.domain.DogKindVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;
import com.example.service.agency.AgencyService;

@Controller
@RequestMapping("/include")
public class AgencyController {

	@Autowired
	private AgencyService agencyservice;
	
	

	// ******************************************************************************
	//// agencyhotel 보기
	@RequestMapping(value = "/agencyHotel", method = RequestMethod.GET)
	public String agencyHotel(Model m, AgencyVO vo) {

		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 16, Sort.Direction.ASC, "agencyNum");

		m.addAttribute("paging", agencyservice.getHotelPaging(paging));

		m.addAttribute("count", agencyservice.countHotelRecord());
		return "/include/agencyHotel";
	}

	// agencyhotel 상세보기
	@RequestMapping(value = "/agencyHotelDetail", method = RequestMethod.GET)
	public void agencyHotelDetail(Model m, AgencyVO vo) {
		System.out.println(vo.getAgencyNum());
		m.addAttribute("hotel", agencyservice.getagencyHotel(vo));
		
	//agencyhotel 리뷰 리스트 보여주기	
		List<ReviewVO> reviews = agencyservice.findByAgencyNum(vo);
		if(reviews.size() >0) {
		}
		m.addAttribute("reviews", reviews);

	}

	// **************************************************************************************************

	// **************************************************************************************************

	//// agencyCafe 보기
	@RequestMapping(value = "/agencyCafe", method = RequestMethod.GET)
	public String agencyCafe(Model m, AgencyVO vo) {

		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 16, Sort.Direction.ASC, "agencyNum");

		m.addAttribute("paging", agencyservice.getCafePaging(paging));

		m.addAttribute("count", agencyservice.countCafeRecord());
		return "/include/agencyCafe";
	}

	// agencyCafe 상세보기 
	@RequestMapping(value = "/agencyCafeDetail", method = RequestMethod.GET)
	public void agencyCafeDetail(Model m, AgencyVO vo) {
		
		m.addAttribute("cafe", agencyservice.getagencyCafe(vo));
		
	//agencyCafe 리뷰 리스트 보여주기
		List<ReviewVO> reviews = agencyservice.findByAgencyNum(vo);
		if(reviews.size() >0) {
		}
		m.addAttribute("reviews", reviews);

	}

	// ***********************************************************************************

	
	// ************************************************************************************

	// agencyShelter 페이징 처리
	@RequestMapping(value = "/agencyShelter", method = RequestMethod.GET)
	public String agencyShelter(Model m, AbandonedVO vo) {

		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 9, Sort.Direction.ASC, "abNo");

		m.addAttribute("paging", agencyservice.getPaging(paging));

		m.addAttribute("count", agencyservice.countRecord());
		return "/include/agencyShelter";
	}

	// agencyShelterDetail 상세보기

	@RequestMapping(value = "/agencyShelterDetail", method = RequestMethod.GET)
	public void agencyShelterDetail(Model m, AbandonedVO vo) {
		System.out.println(vo.getAbNo());
		m.addAttribute("shelter", agencyservice.getagencyShelter(vo));

	}
	
	
	//보호소 입양신청서 페이지 
			@RequestMapping(value = "/agencyShelterSignup", method = RequestMethod.GET)
			public void agencyShelterSignup(Model m, AbandonedVO vo,UserVO uv ) {
				m.addAttribute("agencysignup",agencyservice.getagencyShelterSignup(vo));
			}
	
	// ***************************************************************************************************

	
	
	
	// *****************************************************************************
	// 강아지 백과사전 페이지 및 페이징 처리
	@RequestMapping(value = "/encyclopedia", method = RequestMethod.GET)
	public String encyclopedia(Model m, DogKindVO vo) {

		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 18, Sort.Direction.ASC, "dogNum");

		m.addAttribute("paging", agencyservice.getkindPaging(paging));

		m.addAttribute("count", agencyservice.countkindRecord());
		return "/include/encyclopedia";
	}

	// 강아지 백과사전 상세보기

	
	  @RequestMapping(value ="/encyclopediaDetail", method=RequestMethod.GET)
	  public void encyclopediaDetail(Model m,DogKindVO vo) {
	  System.out.println(vo.getDogNum());
	  m.addAttribute("encyclopedia",agencyservice.getencyclopedia(vo));
	  }
	
	  
	// ***************************************************************************************************
	// ********************************************************************************

	// agencyCafe페이지에 검색 기능
	@RequestMapping("/cafeSearch")
	public void cafeSearch(AgencyVO vo) {

	}
	
	// agencyCafe페이지에 검색 기능
		@RequestMapping("/hotelSearch")
		public void hotelSearch(AgencyVO vo) {

		}

		
	//*******************************************************************************
	//agencyCafe   리뷰작성 
		
		@RequestMapping(value="/insertReview", method = RequestMethod.POST)
		public String agencyCafeUpdate(ReviewVO review, UserVO vo ,AgencyVO vv, HttpSession s) {
			review.setUser(vo);
			review.setAgency(vv);
			agencyservice.insertReview(review);
			
			return "redirect:/include/agencyCafeDetail?agencyNum="+vv.getAgencyNum();
		}	
		
		
	
	//agencyhotel  리뷰 작성
		
		@RequestMapping(value="/insertHotelReview", method = RequestMethod.POST)
		public String agencyHotelUpdate(ReviewVO review,UserVO vo ,AgencyVO vv, HttpSession s) {
			review.setUser(vo);
			review.setAgency(vv);
			agencyservice.insertHotelReview(review);
			return "redirect:/include/agencyHotelDetail?agencyNum="+vv.getAgencyNum();
		}	
	
		
	//*********************************************************************	
		
		
		
		
	
		
		
		
		
	//***********************************************************************************	
		
	@RequestMapping(value = "/yootest", method = RequestMethod.GET)
	public String yootest() {
		return "/include/yootest";
	}

	@RequestMapping(value = "/agencytest", method = RequestMethod.GET)
	public String agencytest() {
		return "/include/agencytest";
	}

	@RequestMapping(value = "/agencytestDetail", method = RequestMethod.GET)
	public String agencytestDetail() {
		return "/include/agencytestDetail";
	}

	
	
	
}
