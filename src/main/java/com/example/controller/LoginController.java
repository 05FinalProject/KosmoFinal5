package com.example.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;
import com.example.service.loginService.LoginService;

@SessionAttributes("user")
@Controller
@RequestMapping("/include")
public class LoginController {
	
	@Autowired
	private LoginService lservice;
	
	/* 로그인 페이지로 이동*/
	@RequestMapping("/Login")
	public void loginPage() {
	}
	
	/* 로그인 성공여부에 따른 세션 저장*/
	@RequestMapping(value="loginCheck", produces="application/text;charset=utf-8")
	@ResponseBody
	public String loginCheck(UserVO vo, HttpSession session, Model m){
		UserVO result = lservice.findByUserEmail(vo.getUserEmail());
		ImgVO result2 = lservice.findBypRimgname(vo.getUserEmail());
		List<PetVO> result3 = lservice.findByPetNum(vo.getUserEmail());
		UserVO check = lservice.checkPass(vo);
		String message = "";
		if(check == null) {
			message = "N";
			return message;
		}
		
		System.out.println("*******로그인 성공********");
		session.setAttribute("userNickname", result.getUserNickname());
		session.setAttribute("userEmail", result.getUserEmail());
		session.setAttribute("userName", result.getUserName());
		session.setAttribute("userPhone", result.getUserPhone());
		session.setAttribute("userAddress", result.getUserAddress());
		session.setAttribute("pRimgname", result2.getPRimgname());
		session.setAttribute("pets", result3);
		m.addAttribute("pets", result3.get(0));
		
		session.setMaxInactiveInterval(60*60*24);
		return message;
		}
	
	
	/* 로그인 성공 후 페이지 이동 */
	@RequestMapping("loginMove")
	public String loginMove(UserVO vo,HttpServletRequest request, HttpServletResponse response) {
			HttpSession session = request.getSession();
			System.out.println(session.getAttribute("userEmail")+"로그인");
			System.out.println(vo.isRememberEmail()+"***********확인");
			if(vo.isRememberEmail()) {
				// 체크박스에 체크가 되어있다면
				Cookie[] getCookie = request.getCookies();
				
				// 저장되어 있는 쿠키값이 없으면 새로 생성
				if(getCookie == null) {
					Cookie rememberEmail = new Cookie("rememberEmail", vo.getUserEmail());
					rememberEmail.setMaxAge(60*60*24*30); 	// 30일 지정
					response.addCookie(rememberEmail);
				}else {
					// 저장되어 있는 쿠키값이 있으면 삭제하고 다시 생성
					Cookie removeEmail = new Cookie("rememberEmail", null);
					removeEmail.setMaxAge(0);
					response.addCookie(removeEmail);
					
					Cookie rememberEmail = new Cookie("rememberEmail", vo.getUserEmail());
					rememberEmail.setMaxAge(60*60*24*30); 	// 30일 지정
					response.addCookie(rememberEmail);
				}
				
			}else {
				// 체크 박스에 체크가 안되어 있을 때
				Cookie[] getCookie = request.getCookies(); // 쿠키를 얻어오고
				
				if(getCookie != null) { // 쿠키값이 null이 아니면 쿠키 삭제
					Cookie removeEmail = new Cookie("rememberEmail", null);
					removeEmail.setMaxAge(0);
					response.addCookie(removeEmail);
				}//end of if - 쿠키값이 null값인지 검사
			}//end of if - 체크박스에 체크가 되어있는지
			return "redirect:Main";
	}
			
	/* 로그아웃 (세션 종료) */
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
			System.out.println(session.getAttribute("userEmail") + "님 로그아웃");
			session.invalidate();
			
			return "redirect:Main";
	}
	
	/* 프로필 수정 */
	@RequestMapping("/myPage/userUpdate")
	public String UserUpdate(ImgVO ivo, HttpServletRequest request,Model m) {
		
		HttpSession session = request.getSession();
		
		session.setAttribute("pRimgname", "img/userImg/"+ivo.getPRimgname());
		UserVO vo = new UserVO();
		vo.setUserEmail(session.getAttribute("userEmail").toString());
		ivo.setUser(vo);
		lservice.userImgUpdate(ivo);
		m.addAttribute("pRimgname", "img/userImg/"+ivo.getPRimgname());
		return "/include/myPage/imgModify";
	}
	
	/* 프로필 페이지 이동*/
	@RequestMapping("/myPage/myPageProfile")
	public void myPageProfile() {
	}

	/* 반려견 리스트 페이지 이동*/
	@RequestMapping("/myPage/myPageDogList")
	public void myDogList() {
	}

	/* 반려견 정보 상세보기*/
//	@RequestMapping("/myPage/myPageDogDetail")
//	public void myDogDetail(PetVO pvo, Model m) {
//		System.out.println(pvo.getPetNum());
//		m.addAttribute("petNum", lservice.getPetDetail(pvo));
//	}
	
	/* 반려견 추가 페이지 */
	@RequestMapping(value="/myPage/myPageDogAdd", method=RequestMethod.GET)
	public void myPageDogAdd() {
	}
	
	/* 반려견 추가 버튼 이벤트 */
	@RequestMapping(value="/myPage/petAdd", method=RequestMethod.POST)
	public String petAdd(PetVO pvo, UserVO vo, ImgVO ivo, HttpSession session, Model m) {
		
		session.setAttribute("pRimgname", "img/userImg/"+ivo.getPRimgname());
		vo.setUserEmail(session.getAttribute("userEmail").toString());
		
		ivo.setUser(vo);
		ivo.setPet(pvo);
		lservice.petAdd(pvo);
		
		return "redirect:/include/myPage/myPageDogList";
	}


	/* 유저의 글 */
	@RequestMapping("/myPage/myPageBoard")
	public void myPageBoard() {
	}
	
	
//	/* 회원탈퇴 */
//	@RequestMapping(value="userDelete")
//	public String delete(UserVO vo,HttpServletRequest request,HttpServletResponse response) {
//		lservice.delete(vo);
//		// 쿠키가 있다면
//		Cookie[] getCookie = request.getCookies();
//		if(getCookie != null) {
//			for(Cookie c : getCookie) {
//				String value = c.getValue();
//				
//				if(value.equals(vo.getUserEmail())) {
//					Cookie removeEmail = new Cookie("rememberEmail", null);
//					removeEmail.setMaxAge(0);
//					response.addCookie(removeEmail);
//				}//end of if
//			}//end of for
//		}//end of if
//
//		System.out.println(vo.getUserEmail() + "님 회원 탈퇴 성공");
//		HttpSession session = request.getSession();
//		
//		session.invalidate(); // 세션에 저장된 로그인 정보를 삭제
//		
//		return "Main";	// 회원 탈퇴 시 메인 페이지로 이동
//	}
	
	
	
}
