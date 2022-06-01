package com.example.community;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.domain.UserVO;

@Controller
@RequestMapping("/include")
public class CommunityController {

	@Autowired
	private CommunityService c_service;

	// 일상공유 리스트 페이지
	@RequestMapping(value = "community/daily", method = RequestMethod.GET)
	public String daily(Model m, CommunityVO vo) {

		int page = 1;
		if (vo.getPage() != 0) {
			page = vo.getPage();
		}
		Pageable paging = PageRequest.of(page - 1, 8, Sort.Direction.DESC, "communityNum");

		m.addAttribute("paging", c_service.getCommunityPaging(paging));

		m.addAttribute("count", c_service.countCommunityRecord());
		return "/include/community/daily";
	}

	// 일상공유 상세보기 페이지
	/*
	 * @RequestMapping(value = "/community/dailyDetail", method = RequestMethod.GET)
	 * public String dailyDetail() { return "/include/community/dailyDetail"; }
	 */
	@RequestMapping(value = "/community/dailyDetail", method = RequestMethod.GET)
	public void dailyDetail(CommunityVO vo, Model m) {
		m.addAttribute("community", c_service.getCommunity(vo));
	}

	// 일상공유 게시글 작성 페이지
	@RequestMapping(value = "/community/writeDaily", method = RequestMethod.GET)
	public String writeDaily() {
		return "/include/community/writeDaily";
	}

	// 일상공유 게시글 작성
	@RequestMapping(value = "/community/writeDaily", method = RequestMethod.POST)
	public String insertDaily(CommunityVO vo) {

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
		
		
		c_service.insertDaily(vo);

		return "/include/community/dailyDetail";
	}

	//일상공유 게시판 상세보기
	@RequestMapping(value = "/getCommunity", method = RequestMethod.GET)
	public void getCommunity(CommunityVO vo, Model m) {
		m.addAttribute("community", c_service.getCommunity(vo));
	}

}
