package com.example.service.agency;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.dao.AbandonedRepository;
import com.example.dao.AgencyRepository;
import com.example.dao.DogKindRepository;
import com.example.dao.ReviewRepository;
import com.example.dao.UserRepository;
import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;
import com.example.domain.DogKindVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;

@Service
public class AgencyServiceImpl implements AgencyService{
	
	@Autowired
	private AbandonedRepository abandonedRepo;
	
	@Autowired
	private AgencyRepository agencyRepo;
	
	@Autowired
	private DogKindRepository DogKindRepo;
	
    @Autowired
    private ReviewRepository reviewRepo;
    
    @Autowired
    private UserRepository usr;
    
    
    
  //*****************************************************
  	//카테고리 별 위도 경도 이름 가져오기
  		public List<HashMap<String, Object>> mapList(Integer number){
  			List<HashMap<String, Object>> categoryMapList = new ArrayList<HashMap<String,Object>>();

  	        for(Object[] o : agencyRepo.mapList(number)) {
  	            HashMap<String, Object> hm = new HashMap<String, Object>();
  	            hm.put("name", o[0]);
  	            hm.put("lat", o[1]);
  	            hm.put("lon", o[2]);
  	            categoryMapList.add(hm);
  	        }

  	        return categoryMapList;
  	    };
  		
  	
  	//**********************************************************
    
	//*******************************************************
	//보호소 페이지 처리 
	public List<AbandonedVO> getPaging(Pageable paging){
		return abandonedRepo.findAll(paging);
	}
	
	public int countRecord() {
		return abandonedRepo.countRecord();
	}
	
	//*************************************************************************
	//호텔 페이지 처리 //호텔 페이지에서 별점 평균값 표시 
	@Override
	public List<AgencyVO> getHotelPaging(Pageable paging) {	
		List<AgencyVO> list = agencyRepo.findByAgencyCategoryNum(paging, 1);
		List<AgencyVO> rlist = new ArrayList<AgencyVO>();
		for(AgencyVO avo : list) {
			Object aob = reviewRepo.agencyStarAvg(avo.getAgencyNum());
			if(aob != null) {
				avo.setAvgStars((double)aob);
			}else {
				avo.setAvgStars(0.0);
			}
			
			rlist.add(avo);
		}
		return rlist;
	}
	
	
	@Override
	public int countHotelRecord() {		
		return agencyRepo.countHotelRecord();
	}
    
//*****************************************************************************	
	//카페 페이지 처리 // 카페 별점 평점 나타내기 
	@Override
	public List<AgencyVO> getCafePaging(Pageable paging) {	
		List<AgencyVO> list = agencyRepo.findByAgencyCategoryNum(paging, 2);
		List<AgencyVO> rlist = new ArrayList<AgencyVO>();
		for(AgencyVO avo : list) {
			Object aob = reviewRepo.agencyStarAvg(avo.getAgencyNum());
			if(aob != null) {
				avo.setAvgStars((double)aob);
			}else {
				avo.setAvgStars(0.0);
			}
			
			rlist.add(avo);
		}
		return rlist;
	}
		
	@Override
	public int countCafeRecord() {		
		return agencyRepo.countCafeRecord();
	}
	
//*****************************************************************	
	
	//병원 페이지 처리 //병원 별점 평균 처리 
	@Override
	public List<AgencyVO> getHospitalPaging(Pageable paging) {		
		List<AgencyVO> list = agencyRepo.findByAgencyCategoryNum(paging, 3);
		List<AgencyVO> rlist = new ArrayList<AgencyVO>();
		for(AgencyVO avo : list) {
			Object aob = reviewRepo.agencyStarAvg(avo.getAgencyNum());
			if(aob != null) {
				avo.setAvgStars((double)aob);
			}else {
				avo.setAvgStars(0.0);
			}
			
			rlist.add(avo);
		}
		return rlist;
	}
			
	@Override
	public int countHospitalRecord() {		
	return agencyRepo.countHospitalRecord();
	}
	
	
	//*******************************************************************
		//장례식장 페이지 처리
		@Override
		public List<AgencyVO> getHallPaging(Pageable paging) {		
			List<AgencyVO> list = agencyRepo.findByAgencyCategoryNum(paging, 5);
			List<AgencyVO> rlist = new ArrayList<AgencyVO>();
			for(AgencyVO avo : list) {
				Object aob = reviewRepo.agencyStarAvg(avo.getAgencyNum());
				if(aob != null) {
					avo.setAvgStars((double)aob);
				}else {
					avo.setAvgStars(0.0);
				}
				
				rlist.add(avo);
			}
			return rlist;
		}
				
		@Override
		public int countFunehallRecord() {		
		return agencyRepo.countFunehallRecord();
		}
	
	
	//백과사전 페이지 처리
	@Override
	public List<DogKindVO> getkindPaging(Pageable paging) {		
		return DogKindRepo.findAll(paging);
	}
	
	@Override
	public int countkindRecord() {		
		return DogKindRepo.countkindRecord();
	}
	
	
	
	//******************************************************************************
	
	
	//보호소 상세정보 띄우기 
	@Override
	public AbandonedVO getagencyShelter(AbandonedVO vo) {
		AbandonedVO avo = abandonedRepo.findById(vo.getAbNo()).get();
		return abandonedRepo.save(avo);
	}
	
	
	//보호소 입양하기 페이지 띄우기 
		@Override
		public AbandonedVO agencyShelterSignup(AbandonedVO vo) {
			AbandonedVO avo = abandonedRepo.findById(vo.getAbNo()).get(); 
			  return abandonedRepo.save(avo);
		}
		
	
	
	//호텔정보 상세정보 띄우기 
		@Override
		public AgencyVO getagencyHotel(AgencyVO vo) {
			AgencyVO avo = agencyRepo.findById(vo.getAgencyNum()).get();
			return agencyRepo.save(avo);
		}
	
	//카페정보 상세정보 띄우기 
				@Override
				public AgencyVO getagencyCafe(AgencyVO vo) {
					AgencyVO avo = agencyRepo.findById(vo.getAgencyNum()).get();
					return agencyRepo.save(avo);
				}
	
	//병원정보 상세정보 띄우기 
			@Override
			public AgencyVO getagencyHospital(AgencyVO vo) {
				AgencyVO avo = agencyRepo.findById(vo.getAgencyNum()).get();
				return agencyRepo.save(avo);
				}			
				
	//장레식장 정보 상세정보 띄우기 
	@Override
	public AgencyVO getagencyHall(AgencyVO vo) {
		AgencyVO avo = agencyRepo.findById(vo.getAgencyNum()).get();
		return agencyRepo.save(avo);
		}			
			
			
	
	//백과사전 상세정보 띄우기 
				
		@Override public DogKindVO getencyclopedia(DogKindVO vo) { 
	   DogKindVO avo = DogKindRepo.findById(vo.getDogNum()).get(); 
		return DogKindRepo.save(avo); }
				
				
				
	//******************************************************************************
				 
	//카페 검색 기능 			 
	public List<AgencyVO> agencyCafeSearch(AgencyVO vo){
		ArrayList<AgencyVO> list = new ArrayList<AgencyVO>();
		for(Object[] o : agencyRepo.agencyCafeSearch(vo.getAgencyName())) {
			AgencyVO v = new AgencyVO();
			v.setAgencyName((String)o[6]);
			v.setAgencyAddress((String)o[1]);
			v.setAgencyTel((String)o[7]);
			v.setAgencyImage((String)o[8]);
			v.setAgencyNum((int)o[0]);
			list.add(v);
		}
		return  list;
	}		
	
	
	//호텔 검색 기능 			 
		public List<AgencyVO> agencyHotelSearch(AgencyVO vo){
			ArrayList<AgencyVO> list = new ArrayList<AgencyVO>();
			for(Object[] o : agencyRepo.agencyHotelSearch(vo.getAgencyName())) {
				AgencyVO v = new AgencyVO();
				v.setAgencyName((String)o[6]);
				v.setAgencyAddress((String)o[1]);
				v.setAgencyTel((String)o[7]);
				v.setAgencyImage((String)o[8]);
				v.setAgencyNum((int)o[0]);
				list.add(v);
			}
			return  list;
		}		
		
	
		//병원 검색 기능 			 
				public List<AgencyVO> agencyHospitalSearch(AgencyVO vo){
					ArrayList<AgencyVO> list = new ArrayList<AgencyVO>();
					for(Object[] o : agencyRepo.agencyHospitalSearch(vo.getAgencyName())) {
						AgencyVO v = new AgencyVO();
						v.setAgencyName((String)o[6]);
						v.setAgencyAddress((String)o[1]);
						v.setAgencyTel((String)o[7]);
						//v.setAgencyImage((String)o[8]);
						v.setAgencyNum((int)o[0]);
						list.add(v);
					}
					return  list;
				}			
		
		
		//장례식장 검색 기능 			 
				public List<AgencyVO> agencyHallSearch(AgencyVO vo){
					ArrayList<AgencyVO> list = new ArrayList<AgencyVO>();
					for(Object[] o : agencyRepo.agencyHallSearch(vo.getAgencyName())) {
						AgencyVO v = new AgencyVO();
						v.setAgencyName((String)o[6]);
						v.setAgencyAddress((String)o[1]);
						v.setAgencyTel((String)o[7]);
						//v.setAgencyImage((String)o[8]);
						v.setAgencyNum((int)o[0]);
						list.add(v);
					}
					return  list;
				}			
				
				
				
		
	//***********************************************
	//리뷰 작성 테이블 
	
		//카페 리뷰 작성
		public void insertReview(ReviewVO vo) {
			UserVO v = usr.findById(vo.getUser().getUserEmail()).get();
			vo.setUser(v);
			AgencyVO a = agencyRepo.findById(vo.getAgency().getAgencyNum()).get();
			vo.setAgency(a);
			reviewRepo.save(vo);
		}
	    
		//호텔 리뷰 작성
		public void insertHotelReview(ReviewVO vo) {
			
			
			UserVO v = usr.findById(vo.getUser().getUserEmail()).get();
			vo.setUser(v);
			AgencyVO a = agencyRepo.findById(vo.getAgency().getAgencyNum()).get();
			vo.setAgency(a);
			reviewRepo.save(vo);
		}
		
		//병원 리뷰 작성
		public void insertHospitalReview(ReviewVO vo) {
			UserVO v = usr.findById(vo.getUser().getUserEmail()).get();
			vo.setUser(v);
			AgencyVO a = agencyRepo.findById(vo.getAgency().getAgencyNum()).get();
			vo.setAgency(a);
			reviewRepo.save(vo);
		}
		
		
		//장례식장 리뷰 작성
				public void insertHallReview(ReviewVO vo) {
					UserVO v = usr.findById(vo.getUser().getUserEmail()).get();
					vo.setUser(v);
					AgencyVO a = agencyRepo.findById(vo.getAgency().getAgencyNum()).get();
					vo.setAgency(a);
					reviewRepo.save(vo);
				}
		
		
		public List<ReviewVO> findByAgencyNum(AgencyVO vo){
			return reviewRepo.findByAgency(vo);
		}
				
}
