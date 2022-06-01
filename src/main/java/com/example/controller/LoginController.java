package com.example.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.ImgVO;
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
	public String loginCheck(String userEmail, HttpSession session){
		UserVO result = lservice.findByUserEmail(userEmail);
		ImgVO result2 = lservice.findBypRimgname(userEmail);
		System.out.println(result2.getPRimgname());
		String message = "";
		if(result == null){
			System.out.println("로그인 실패");
			message = "N";
			return message;
		}else{
				System.out.println("*******로그인 성공********");
				session.setAttribute("userNickname", result.getUserNickname());
				session.setAttribute("userEmail", result.getUserEmail());
				session.setAttribute("userName", result.getUserName());
				session.setAttribute("userPhone", result.getUserPhone());
				session.setAttribute("userAddress", result.getUserAddress());
				session.setAttribute("userAdmin", result.getUserAdmin());
				session.setAttribute("pRimgname", result2.getPRimgname());
				session.setMaxInactiveInterval(60*60*24);
				return message;
			}
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
	public String UserUpdate(ImgVO ivo, HttpServletRequest request) {
		
		System.out.println(ivo.getPImgname());
		System.out.println(ivo.getPRimgname());   ///     /img/userImg/+ivo.getPRimgname()
		HttpSession session = request.getSession();
		
		session.setAttribute("pRimgname", "img/userImg/"+ivo.getPRimgname());
		UserVO vo = new UserVO();
		vo.setUserEmail(session.getAttribute("userEmail").toString());
		ivo.setUser(vo);
		lservice.userImgUpdate(ivo);
		
		return "/include/myPage/myPageProfile";
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
