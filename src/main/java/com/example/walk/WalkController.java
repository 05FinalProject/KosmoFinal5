package com.example.walk;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.UserVO;

@Controller
@RequestMapping("/walk")
public class WalkController {
	
	@Autowired
	private WalkService walkService;
	
	
	@RequestMapping(value ="", method=RequestMethod.GET)
	public String walk(WalkVO vo) {
		
		
		return "/walk/walk";
	}
	
	@RequestMapping(value ="", method=RequestMethod.POST)
	public String walk2(WalkVO vo, HttpSession session) {
		
		String userEmail= session.getAttribute("userEmail").toString();
		UserVO userVo = walkService.getById(userEmail);
		vo.setUser(userVo);
		
		walkService.insertWalk(vo);
		
		return "/walk/walk";
	}
	
	@RequestMapping(value ="myWalk2", method=RequestMethod.GET)
	@ResponseBody //페이지 옮겨지지 않고 ajax 처리
	public List<WalkVO> myWalk2(WalkVO vo, HttpSession session) {
		
		
		System.out.println(vo);
		List<WalkVO> walkList = walkService.selectWalk((String)session.getAttribute("userEmail"), vo.getDate());
		
		
		return walkList;
	}
	
	
	@RequestMapping(value ="myWalk", method=RequestMethod.GET)
	public String myWalk(HashMap<String, String> hm, HttpSession session, Model m) {
		
		List<WalkVO> walkList = walkService.selectWalk2((String)session.getAttribute("userEmail"));
		m.addAttribute("walkList", walkList);	
		return "/walk/myWalk";
	}
	
	
	@RequestMapping(value ="myWalk3", method=RequestMethod.GET)
	@ResponseBody //페이지 옮겨지지 않고 ajax 처리
	public WalkVO myWalk3(WalkVO vo) {
		
		WalkVO vo2 = walkService.getById(vo.getWalkId());
		
		return vo2;
	}
	


}
