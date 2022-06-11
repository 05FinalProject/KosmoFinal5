package com.example.controller.admin;

//import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.example.domain.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.community.CommunityVO;
import com.example.service.admin.AdminAgencyService;
import com.example.service.admin.AdminCommunityService;
import com.example.service.admin.AdminReportService;
import com.example.service.admin.AdminUserService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class AdminMainController {

	@Autowired
	private AdminUserService adminUserService;	
	@Autowired
	private AdminReportService adminReportService;
	@Autowired
	private AdminAgencyService adminAgencyService;
	@Autowired
	private AdminCommunityService adminCommunityService;


	//********************대시보드,차트***********************************
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String adminPage(Model model) {
		//리스트 담기 (도넛차트)
		List<HashMap<String, Object>> list = adminAgencyService.chartAgencyCount();//서비스 리턴
		Gson agencyGson = new Gson();
		JsonArray agencyJArray = new JsonArray();

		Iterator<HashMap<String, Object>> agencyIterator = list.iterator();
		while (agencyIterator.hasNext()) {
			HashMap agencyCount = agencyIterator.next();
			JsonObject object = new JsonObject();
			Integer agencyChartCount =Integer.parseInt(String.valueOf(agencyCount.get("chartCount")));
			Integer agencyCategoryNum =Integer.parseInt(String.valueOf(agencyCount.get("agencyCategoryNum")));

			object.addProperty("agencyChartCount", agencyChartCount);
			object.addProperty("agencyCategoryNum", agencyCategoryNum);
			agencyJArray.add(object);
		}

		String agencyJson = agencyGson.toJson(agencyJArray);
		model.addAttribute("agency", agencyJson);

		//바 차트
		List<HashMap<String, Object>> list2 = adminAgencyService.chartSignupUser();//서비스 리턴
		Gson userSignupGson = new Gson();
		JsonArray userSignupJArray = new JsonArray();

		Iterator<HashMap<String, Object>> userSignupIterator = list2.iterator();//리스트에 있는걸 읽어서 해쉬맵에 담음
		while (userSignupIterator.hasNext()) {//담은걸 하나씩 찾아서 분해한다
			HashMap userSignupCount = userSignupIterator.next();
			JsonObject object = new JsonObject();
			String userSignupMonth = String.valueOf(userSignupCount.get("chartMonth"));
			Integer userSignupNum = Integer.parseInt(String.valueOf(userSignupCount.get("userSignup")));
			object.addProperty("userSignupMonth", userSignupMonth);//분해한걸 담는다 key value형식으로
			object.addProperty("userSignupNum", userSignupNum);
			userSignupJArray.add(object);//agencyJArray배열에 object를 담는다
		}

		String userSignupJson = userSignupGson.toJson(userSignupJArray);
		model.addAttribute("userSignup", userSignupJson);
		System.out.println("테스트"+model.getAttribute("userSignup"));

		//대시보드 수 출력
		/*총유저수
		반려견등록수
		게시글 일상공유 등록 수
		오늘 등록된 회원가입수*/
		//서비스 호출 => 레포때려버리기
		model.addAttribute("getUserTotalSize", adminUserService.getUserTotalSize());
		model.addAttribute("getPetTotalSize", adminUserService.getPetTotalSize());
		model.addAttribute("getCommunityTotalSize", adminCommunityService.getCommunityTotalSize());

		model.addAttribute("getSignupCount", adminUserService.getSignupCount());

		return "/admin/indexAdmin";
	}
	//*****************************************************************


	//차트2
	@RequestMapping(value="/adminFlot", method=RequestMethod.GET)
	public String flotCharts() {
		return "/admin/charts/flot";
	}

	//*****************************************************************
	//회원관리 회원 리스트 출력
	@RequestMapping(value="/adminUser", method=RequestMethod.GET)
	public String userList(Model m) {
		UserVO vo = new UserVO();
		List<UserVO> list = adminUserService.userList(vo);
		m.addAttribute("userList", list);
		return "/admin/adminUser";
	}

	//회원 펫 리스트 띄우기
	@RequestMapping(value="/admin/getUserPet")
	@ResponseBody
	public List<PetVO> getUserPet(UserVO userVO){
		List<PetVO> l = adminUserService.getUserPet(userVO);
		System.out.println(l);
		return l;
	}

	/*//회원삭제
	@RequestMapping(value = "{userEmail}", method = RequestMethod.DELETE)
	public String deleteUser(UserVO vo) {
		adminUserService.deleteUser(vo);
		return "redirect:/adminUser";
	}*/

	//회원삭제
	@RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	public String deleteUser(String userEmail) {
		System.out.println(userEmail);
		adminUserService.deleteUser(userEmail);
		return "redirect:/adminUser";
	}

	//************************신고관리************************
	//리뷰신고
	@RequestMapping(value="adminReview", method=RequestMethod.GET)
	public String reportReview(Model m) {
		List<HashMap> llist= new ArrayList<>();
		List<Object[]> list = adminReportService.reportReviewList(new ReportVO());

		for(Object[] o : list) {
			HashMap hm = new HashMap<>();
			hm.put("r_num",(int)o[0] );
			hm.put("user_email",(String)o[1] );
			hm.put("review_content",(String)o[2] );
			hm.put("r_reason",(String)o[3] );
			llist.add(hm);
		}		
		m.addAttribute("reviewList", llist);

		return "/admin/report/adminRpReview";
	}	

	//댓글신고
	@RequestMapping(value="adminComment", method=RequestMethod.GET)
	public String reportComment(Model m) {
		List<HashMap> list = new ArrayList<>();
		List<Object[]> list2 = adminReportService.reportCommentList(new ReportVO());

		for(Object[] obj : list2) {
			HashMap hm = new HashMap<>();
			hm.put("comment_num", (int)obj[0]);
			hm.put("u_email", (String)obj[1]);
			hm.put("comment_content", (String)obj[2]);
			hm.put("r_reason", (String)obj[3]);
			hm.put("r_date", (Date)obj[4]);
			list.add(hm);
		}
		m.addAttribute("commentList", list);
		return "/admin/report/adminRpComment";
	}

	//게시글신고
	@RequestMapping(value="adminCommunity", method=RequestMethod.GET)
	public String reportCommunity(Model m) {
		List<HashMap> list = new ArrayList<>();
		List<Object[]> list2 = adminReportService.reportCommunityList(new ReportVO());

		for(Object[] obj : list2) {
			HashMap hm = new HashMap<>();
			hm.put("c_num", (int)obj[0]);
			hm.put("c_title", (String)obj[1]);
			hm.put("user_email", (String)obj[2]);
			hm.put("r_reason", (String)obj[3]);
			hm.put("r_date", (Date)obj[4]);
			list.add(hm);
		}
		m.addAttribute("communityList", list);
		return "/admin/report/adminRpCommunity";
	}

	//블랙리스트 리스트 출력
	@RequestMapping(value="adminBlacklist", method=RequestMethod.GET)
	public String Blacklist() {

		return "/admin/report/adminBlacklist";
	}

	// ******************************************************************************

	//*******************************시설관리***************************************
	//**************************시설리스트출력/페이징 처리***************************************
	//시설관리(보호소)
	@RequestMapping(value="adminShelter", method=RequestMethod.GET)
	public String adminShelter(Model m, AbandonedVO vo) {
		int page = 1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page-1, 9,Sort.Direction.ASC,"abNo");

		m.addAttribute("paging",adminAgencyService.getAbandonePaging(paging) );
		m.addAttribute("count",adminAgencyService.countRecord() );
		
		return "/admin/facilities/adminShelter";
	}

	//시설관리(동물병원)
	@RequestMapping(value="adminHospital", method=RequestMethod.GET)
	public String adminHospital(Model m, AgencyVO vo) {
		//페이징 처리
		int page = 1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		} 
		Pageable paging = PageRequest.of(page-1, 9, Sort.Direction.ASC, "agencyNum");
		m.addAttribute("paging", adminAgencyService.getHospitaltPaging(paging));
		m.addAttribute("count",adminAgencyService.countHospitalRecord());	

		return "/admin/facilities/adminHospital";
	}

	//시설관리(애견호텔)
	@RequestMapping(value="/adminHotel", method=RequestMethod.GET)
	public String adminHotel(Model m, AgencyVO vo) {
		//페이징 처리
		int page =1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		} 
		Pageable paging = PageRequest.of(page-1, 9, Sort.Direction.ASC, "agencyNum");
		m.addAttribute("paging", adminAgencyService.getHotelPaging(paging));
		m.addAttribute("count",adminAgencyService.countHotelRecord());	

		return "/admin/facilities/adminHotel";
	}

	//시설관리(장례식장)
	@RequestMapping(value="adminFuneralhall", method=RequestMethod.GET)
	public String adminFuneralhall(Model m, AgencyVO vo) {
		//페이징 처리
		int page =1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		} 
		Pageable paging = PageRequest.of(page-1, 9, Sort.Direction.ASC, "agencyNum");
		m.addAttribute("paging", adminAgencyService.getFunehallPaging(paging));
		m.addAttribute("count",adminAgencyService.countFunehallRecord());
		return "/admin/facilities/adminFuneralhall";
	}

	//시설관리(애견카페)
	@RequestMapping(value="/adminCafe", method=RequestMethod.GET)
	public String adminCafe(Model m, AgencyVO vo) {
		//페이징 처리
		int page =1;
		if(vo.getPage()!=0) {
			page = vo.getPage();
		} 
		Pageable paging = PageRequest.of(page-1, 9, Sort.Direction.ASC, "agencyNum");
		m.addAttribute("paging", adminAgencyService.getCafetPaging(paging));
		m.addAttribute("count",adminAgencyService.countCafeRecord());

		return "/admin/facilities/adminCafe";			
	}
	// ******************************************************************************

	//*************************시설추가, 수정, 삭제*************************************
	//시설등록
	@RequestMapping(value="/admin/insertAgency", method=RequestMethod.POST)
	public String adminInsertFacilities(@RequestParam Integer agencyCategoryNum, @RequestParam String agencyName, @RequestParam String addr, @RequestParam String subAddr, @RequestParam String tel, @RequestParam String agencyContent, @RequestParam String agencyImage) {
		System.out.println("인서트");
		adminAgencyService.insertAgency(agencyCategoryNum, agencyName, addr, subAddr, tel, agencyContent, agencyImage);
		return "redirect:/adminAddFacilities";
	}

	//시설 수정
	@RequestMapping(value="/admin/update", method = RequestMethod.POST)
	public String adminUpdateFacilities(Integer agencyNum, @RequestParam String tel, @RequestParam String facility, @RequestParam String content, @RequestParam String addr, @RequestParam String subAddr) {
		adminAgencyService.updateAgency(agencyNum, tel, facility, content, addr, subAddr);
		return "redirect:/indexAdmin";
	}

	//보호소 수정
	@RequestMapping(value="/admin/update2", method = RequestMethod.POST)
	public String adminUpdateShelter(Integer abNo, @RequestParam String abName, @RequestParam String abAge, @RequestParam String abImage) {
		adminAgencyService.updateShelter(abNo, abName, abAge, abImage);
		return "redirect:/adminShelter";
	}

	//시설 등록
	@RequestMapping(value = "/adminAddFacilities", method = RequestMethod.GET)
	public String adminAddFacilities(){

		return "/admin/facilities/adminAddFacilities";
	}

	//시설삭제

	// ******************************************************************************
	// ******************************************************************************



	// **************************커뮤니티 관리*****************************************
	//커뮤 관리
	@RequestMapping(value="adminComunities", method=RequestMethod.GET)
	public String adminCommunities() {

		return "/admin/communities/adminCommunities";
	}

	//커뮤 일상공유 리스트 출력
	@RequestMapping(value="adminDaily", method=RequestMethod.GET)
	public String adminDaily(Model m) {
		CommunityVO vo = new CommunityVO();
		List<CommunityVO> list = adminCommunityService.communityList(vo);
		m.addAttribute("communityList", list);
		
		return "/admin/communities/adminDaily";
	}
	// ******************************************************************************

}
