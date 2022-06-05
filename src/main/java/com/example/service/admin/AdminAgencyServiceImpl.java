package com.example.service.admin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.dao.AbandonedRepository;
import com.example.dao.AgencyRepository;
import com.example.domain.AbandonedVO;
import com.example.domain.AgencyVO;

@Service
public class AdminAgencyServiceImpl implements AdminAgencyService{
	
	@Autowired
	private AgencyRepository aRepo;
	
	@Autowired
	private AbandonedRepository abRepo;

	
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
	
//	@Override
//	public AgencyVO updateAgency(Integer agencyNum, String tel, String address, String name, String content) {
//		
//		AgencyVO updateAgency =  aRepo.findById(agencyNum).get();//찾는거
//		updateAgency.setAgencyContent(content);
//		updateAgency.setAgencyName(name);//값 변경
//		updateAgency.setAgencyAddress(address);
//		updateAgency.setAgencyTel(tel);		
//		return aRepo.save(updateAgency);//업데이트 문장 돌리기
//	}
	
	@Override
	public AgencyVO updateAgency(Integer agencyNum, String tel, String name, String content, String addr, String subAddr) {
		
		AgencyVO updateAgency =  aRepo.findById(agencyNum).get();//찾는거
		updateAgency.setAgencyContent(content);
		updateAgency.setAgencyName(name);//값 변경
		updateAgency.setAgencyTel(tel);		
		updateAgency.setAgencyAddress(addr);	
		updateAgency.setAgencyAddress2(subAddr);	
		return aRepo.save(updateAgency);//업데이트 문장 돌리기
	}

	//시설등록
	@Override
	public AgencyVO insertAgency(Integer agencyCategoryNum, String agencyName, String addr, String subAddr, String tel, String agencyContent) {

		AgencyVO insertAgency = new AgencyVO();
		insertAgency.setAgencyCategoryNum(agencyCategoryNum);
		insertAgency.setAgencyName(agencyName);
		insertAgency.setAgencyAddress(addr);
		insertAgency.setAgencyAddress2(subAddr);
		insertAgency.setAgencyTel(tel);
		insertAgency.setAgencyContent(agencyContent);

		return aRepo.save(insertAgency);
	}

	@Override
	public List<AbandonedVO> getAbandonePaging(Pageable paging) {
		
		return abRepo.findAll(paging);
	}
	
	@Override
	public int countRecord() {
		
		return abRepo.countRecord();
	}
	
	@Override
	public List<HashMap<String, Object>> chartAgencyCount() {
		List<HashMap<String, Object>> rList = new ArrayList<HashMap<String,Object>>();
		
		for(Object[] obj : aRepo.chartAgencyCount()) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("chartCount",obj[0]);
			hm.put("agencyCategoryNum",obj[1]);
			rList.add(hm);
		}							
		return rList ;
	}

	@Override
	public List<HashMap<String, Object>> chartSignupUser() {
		List<HashMap<String, Object>> rList = new ArrayList<HashMap<String,Object>>();

		for(Object[] obj : aRepo.chartSignupUser()) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("chartMonth",obj[0]);
			hm.put("userSignup",obj[1]);
			rList.add(hm);
		}
		return rList;
	}


}
