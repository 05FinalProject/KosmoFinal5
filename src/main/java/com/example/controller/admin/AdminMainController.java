package com.example.controller.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.domain.AgencyVO;
import com.example.domain.ReportVO;
import com.example.domain.UserVO;
import com.example.service.admin.AdminAgencyService;
import com.example.service.admin.AdminReportService;
import com.example.service.admin.AdminUserService;
import com.example.service.agency.AgencyService;


@Controller
@RequestMapping("/admin")
public class AdminMainController {
	
	@Autowired
	private AdminUserService adminUserService;	
	@Autowired
	private AdminReportService adminReportService;
	@Autowired
	private AdminAgencyService adminAgencyService;
	
	
	@RequestMapping(value="", method=RequestMethod.GET)
	public String adminPage() {
		return "/admin/indexAdmin";
	}
	
	//차트
	@RequestMapping(value="/adminChartsjs", method=RequestMethod.GET)
	public String charts() {
		return "/admin/chartsjs";
	}	
	
	//회원관리
	@RequestMapping(value="/adminUser", method=RequestMethod.GET)
	public String userList(Model m) {
		UserVO vo = new UserVO();
		List<UserVO> list = adminUserService.userList(vo);
		m.addAttribute("userList", list);
		
		return "/admin/adminUser";
	}
	
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
	
	//블랙리스트
	@RequestMapping(value="adminBlacklist", method=RequestMethod.GET)
	public String Blacklist() {
		return "/admin/report/adminBlacklist";
	}
	
	//시설관리(보호소)
	@RequestMapping(value="adminShelter", method=RequestMethod.GET)
	public String adminShelter() {
		return "/admin/facilities/adminShelter";
	}
	
	//시설관리(동물병원)
	@RequestMapping(value="adminHospital", method=RequestMethod.GET)
	public String adminHospital(Model m, AgencyVO vo) {
		//페이징 처리
		int page =1;
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
		
	//회원강아지 정보
	@RequestMapping(value="adminDog", method=RequestMethod.GET)
	public String adminDog() {
		return "/admin/adminDog";					
	}
					
			
	//시설추가
	@RequestMapping(value="adminAddFacilities", method=RequestMethod.GET)
	public String adminAddFacilities() {
		return "/admin/facilities/adminAddFacilities";						
	}
	
	
	//커뮤 관리
	@RequestMapping(value="adminComunities", method=RequestMethod.GET)
	public String adminCommunities() {
		return "/admin/communities/adminCommunities";
	}
	
	//커뮤 일상
	@RequestMapping(value="adminDaily", method=RequestMethod.GET)
	public String adminDaily() {
		return "/admin/communities/adminDaily";
	}
	
	//회원삭제
	@RequestMapping(value = "{userEmail}", method = RequestMethod.DELETE)
	public String deleteUser(UserVO vo) {
		adminUserService.deleteUser(vo);
		return "redirect:/adminUser";
	}
		
	//시설 수정
	@RequestMapping(value="update", method = RequestMethod.POST)
	public String adminUpdateFacilities(Integer agencyNum, @RequestParam String tel) {
		adminAgencyService.updateAgency(agencyNum, tel);
		return "redirect:/admin";
	}
	
	//시설삭제


}
