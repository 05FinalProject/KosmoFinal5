package com.example.community;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.domain.UserVO;

@Controller
@RequestMapping("/community")
public class CommunityController {

	@Autowired
	private CommunityService c_service;

	// 일상공유 리스트 페이지
	@RequestMapping(value = "/daily", method = RequestMethod.GET)
	public String daily(Model m, CommunityVO vo) {
		System.out.println("너오니?66666666666666666");
		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 8, Sort.Direction.DESC, "communityNum");

		m.addAttribute("paging", c_service.getCommunityPaging(paging));

		m.addAttribute("count", c_service.countCommunityRecord());
		return "/community/daily";
	}

	// 일상공유 상세보기 페이지
	@RequestMapping(value = "/dailyDetail", method = RequestMethod.GET)
	public String dailyDetail(CommunityVO vo, Model m) {
		System.out.println("너오니?5555555555555555");
		m.addAttribute("community", c_service.getCommunity(vo));
		return "/community/dailyDetail";
	}

	// 일상공유 게시글 작성 페이지
	@RequestMapping(value = "/writeDaily", method = RequestMethod.GET)
	public String writeDaily() {
		System.out.println("너오니?4444444444444444444");
		return "/community/writeDaily";
	}

	// 일상공유 게시글 작성
	@RequestMapping(value = "/writeDaily", method = RequestMethod.POST)
	public String insertDaily(String userEmail, String communityTitle, String communityContent, MultipartFile[] file) {
		System.out.println("너오니?3333333333333");
		/*
		 * List<MultipartFile> fileList = mtfRequest.getFiles("file"); String src =
		 * mtfRequest.getParameter("src"); System.out.println("src value : " + src);
		 * 
		 * String path =
		 * "C:\\FinalProject\\KosmoFinal5\\src\\main\\resources\\static\\imgFile\\";
		 * 
		 * for (MultipartFile mf : fileList) { String originFileName =
		 * mf.getOriginalFilename(); // 원본 파일 명 long fileSize = mf.getSize(); // 파일 사이즈
		 * 
		 * System.out.println("originFileName : " + originFileName);
		 * System.out.println("fileSize : " + fileSize);
		 * 
		 * String safeFile = path + System.currentTimeMillis() + originFileName; try {
		 * mf.transferTo(new File(safeFile)); } catch (IllegalStateException e) { //
		 * TODO Auto-generated catch block e.printStackTrace(); } catch (IOException e)
		 * { // TODO Auto-generated catch block e.printStackTrace(); } }
		 */

		c_service.insertDaily(userEmail, communityTitle, communityContent, file);

		return "redirect:/community/daily";
	}

	// 일상공유 게시판 상세보기
//	@RequestMapping(value = "/getCommunity", method = RequestMethod.GET)
//	public void getCommunity(CommunityVO vo, Model m) {
//		m.addAttribute("community", c_service.getCommunity(vo));
//	}

	//일상공유 게시글 삭제
	@RequestMapping(value="/deleteCommunity", method = RequestMethod.GET)
	public String deleteCommunity(Integer communityNum) {
		System.out.println("너오니?11111111111111111");
		c_service.deleteCommunity(communityNum);
		return "redirect:/community/daily";
	}

	// 일상공유 게시글 수정
	@RequestMapping(value = "/communityUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String updateCommunity(Integer communityNum, String communityTitle, String communityContent) {
		System.out.println("너오니?222222222222");
		c_service.updateCommunity(communityNum, communityTitle, communityContent);
		return "yes";
	}
	
}
