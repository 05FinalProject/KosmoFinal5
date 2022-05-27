package com.example.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.dao.AgencyRepository;
import com.example.domain.AgencyVO;

@Service
public class AdminAgencyServiceImpl implements AdminAgencyService{
	
	@Autowired
	private AgencyRepository aRepo;

	
	@Override
	public List<AgencyVO> getHotelPaging(Pageable paging) {		
		return aRepo.findByAgencyCategoryNum(paging, 1);
	}
	@Override
	public int countHotelRecord() {		
		return aRepo.countHotelRecord();
	}
	
	@Override
	public List<AgencyVO> getCafetPaging(Pageable paging) {		
		return aRepo.findByAgencyCategoryNum(paging,2);
	}
	
	@Override
	public int countCafeRecord() {	
		return aRepo.countCafeRecord();
	}
	
	@Override
	public List<AgencyVO> getHospitaltPaging(Pageable paging) {
		
		return aRepo.findByAgencyCategoryNum(paging, 3);
	}
	
	@Override
	public int countHospitalRecord() {
		
		return aRepo.countHospitalRecord();
	}
	
	@Override
	public List<AgencyVO> getFunehallPaging(Pageable paging) {
		
		return aRepo.findByAgencyCategoryNum(paging, 5);
	}
	
	@Override
	public int countFunehallRecord() {
		
		return aRepo.countFunehallRecord();
	}	
	
	@Override
	public AgencyVO updateAgency(Integer agencyNum, String tel) {
		
		AgencyVO updateAgency =  aRepo.findById(agencyNum).get();//찾는거
//		updateAgency.setAgencyName(agencyName);//값 변경
//		updateAgency.setAgencyAddress(agencyAddress);
		updateAgency.setAgencyTel(tel);
		
		return aRepo.save(updateAgency);//업데이트 문장 돌리기
	}		
	

}
