package com.example.service.agency;


import java.util.ArrayList;
import java.util.Date;
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
	//*******************************************************
	//보호소 페이지 처리 
	public List<AbandonedVO> getPaging(Pageable paging){
		return abandonedRepo.findAll(paging);
	}
	
	public int countRecord() {
		return abandonedRepo.countRecord();
	}
	//*****************************************************
	
	
	//**********************************************************
	//호텔 페이지 처리 
	@Override
	public List<AgencyVO> getHotelPaging(Pageable paging) {		
		return agencyRepo.findByAgencyCategoryNum(paging, 1);
	}
	
	@Override
	public int countHotelRecord() {		
		return agencyRepo.countHotelRecord();
	}
    //***************************************************************
	
	//**************************************************************
	//카페 페이지 처리
	@Override
	public List<AgencyVO> getCafePaging(Pageable paging) {		
		return agencyRepo.findByAgencyCategoryNum(paging, 2);
	}
	
	@Override
	public int countCafeRecord() {		
		return agencyRepo.countHotelRecord();
	}
	
	//************************************************************************
	
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
		public AbandonedVO getagencyShelterSignup(AbandonedVO vo) {
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
		
		
	//***********************************************
	//리뷰 작성 테이블 
	
		public void insertReview(ReviewVO vo) {
			UserVO v = usr.findById(vo.getUser().getUserEmail()).get();
			vo.setUser(v);
			AgencyVO a = agencyRepo.findById(vo.getAgency().getAgencyNum()).get();
			vo.setAgency(a);
			reviewRepo.save(vo);
		}
	
		public void insertHotelReview(ReviewVO vo) {
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
