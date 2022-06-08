package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;
import com.example.service.chatingService.ChatingService;
import com.example.service.signUpService.SignUpService;

@Controller
@RequestMapping("/include")
public class HomeController {

	@Autowired
	private SignUpService signUp;
	
	@Autowired
	private ChatingService cservice;

	@RequestMapping("/Main")
	public void MainPage(UserVO vo,HttpSession session,Model m) {
		UserVO u = new UserVO();
		if (session.getAttribute("userEmail") != null) {
			u = cservice.getUserInfo(session.getAttribute("userEmail").toString());
			
			m.addAttribute("unreadMessage", cservice.UnreadMessage(u).size());
			
		}
		
		
	}

	@RequestMapping("/signUp")
	public void signUpPage() {
	}
	
	@RequestMapping("/signUpSuccess")
	public String signUp(UserVO vo) {
		
		ImgVO ivo = new ImgVO();
		
		if (vo.getAddr3() != null) {
			vo.setUserAddress(vo.getAddr2() + vo.getAddr3());
			vo.setUserBlack("N");
			vo.setUserAdmin("N");
			ivo.setRealImgName("img/userImg/noImage.jpg");
			
			//signUp.insertUser(vo);
			ivo.setUser(vo);
			signUp.insertImage(ivo);
			
			return "redirect:Login";
			
		} else {
			return "redirect:signUp";
		}
	}

	@RequestMapping(value = "/nicknameCheck", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String nicknameCheck(UserVO vo) {
		UserVO result = signUp.nicknameCheck(vo); // 사용가능한 닉네임이면 null값이 넘어옴
		String message = ""; // 닉네임 사용 가능 여부를 담을 변수

		if (result == null) { // 검색되는 레코드가 없으면 닉네임 사용 가능
			message = "Y";
		} // end of if
		return message;
	}

	@RequestMapping(value = "/emailCheck", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String emailCheck(UserVO vo) {
		UserVO result = signUp.emailCheck(vo); // 사용가능한 이메일이면 null값이 넘어옴
		String message = ""; // 이메일 사용 가능 여부를 담을 변수

		if (result == null) { // 검색되는 레코드가 없으면 이메일 사용 가능
			message = "Y";
		} // end of if
		return message;
	}

	@RequestMapping("/findPassPage")
	public void findPass() {
	}

	@RequestMapping("/changePassPage")
	public void changePass() {	
	}
	
	
	/* 비밀번호 찾기 */
	@RequestMapping(value="pwSearch", produces="application/text;charset=utf-8")
	@ResponseBody
	public String pwSearch(UserVO vo, HttpSession session) {
		UserVO result = signUp.pwSearch(vo);
		String message = "";	// 회원 정보 유무를 담을 변수
		
		if(result == null) {
			// 회원정보가 없다는 뜻
			message = "N";
		}

		/*	존재하는 회원이면 해당 이메일을 세션에 저장, 추후에 저장한 이메일을 비밀번호 재설정에서 사용함 */
		session.setAttribute("userEmail", vo.getUserEmail());

		return message;

	}//end of pwSearch()

	
	
	/* 비밀번호 재설정 */
	@RequestMapping("pwChange")
	public String pwChange(UserVO vo, HttpSession session) {
		vo.setUserEmail(session.getAttribute("userEmail").toString());
		signUp.pwChange(vo);

		return "redirect:Login";

	}//end of pwChange()
}
