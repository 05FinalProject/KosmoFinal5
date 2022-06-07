package com.example.community;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.CommentVO;
import com.example.domain.ImgVO;

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
		
		
		//일상공유 댓글리스트
		List<CommentVO> commentList = c_service.commentList(vo.getCommunityNum());
		m.addAttribute("commentList", commentList);
		
		
		
		
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
		CommunityVO communityVo = new CommunityVO();
		communityVo.setCommunityTitle(communityTitle);
		communityVo.setCommunityContent(communityContent);
		communityVo.setCommunityInsertdate(new Date());
		
		c_service.insertDaily(userEmail, communityTitle, communityContent, file);
		
		
		for(MultipartFile f : file) {
			ImgVO imgvo = new ImgVO();
			
			imgvo.setCommunity(null);
			imgvo.setCommunity(c_service.getCommunityByUser(userEmail));
			imgvo.setFile2(f);
			c_service.insertImgVo(imgvo);
		}

		

		return "redirect:/community/daily";
	}

	// 일상공유 게시판 상세보기
//	@RequestMapping(value = "/getCommunity", method = RequestMethod.GET)
//	public void getCommunity(CommunityVO vo, Model m) {
//		m.addAttribute("community", c_service.getCommunity(vo));
//	}

	//일상공유 게시글 삭제
	@RequestMapping(value="/deleteCommunity", method = RequestMethod.GET)
	public String deleteCommunity(CommunityVO communityVo) {
		System.out.println("너오니?11111111111111111");
		c_service.deleteCommunity(communityVo.getCommunityNum());
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
	
	//일상공유페이지 댓글 작성
	@RequestMapping(value="/writeCommunitycomment", method = RequestMethod.POST)
	public String communityComment(Integer communityNum, String userEmail, String commentContent) {
		System.out.println("communityNum" + communityNum);
		System.out.println("userEmail" + userEmail);
		System.out.println("commentContent" + commentContent);
		
		c_service.writeCommunitycomment(communityNum, userEmail, commentContent);
		
		return "redirect:/community/dailyDetail?communityNum=" + communityNum;
	}
	
	
	
	
	
	
}
