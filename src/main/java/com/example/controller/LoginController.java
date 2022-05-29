package com.example.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.example.domain.UserVO;
import com.example.service.loginService.LoginService;

@SessionAttributes("user")
@Controller
@RequestMapping("/include")
public class LoginController {
	
	@Autowired
	private LoginService lservice;
	

	@RequestMapping("/Login")
	public void loginPage() {
	}
	
	@RequestMapping(value="loginCheck", produces="application/text;charset=utf-8")
	@ResponseBody
	public String loginCheck(String userEmail, HttpSession session){
		UserVO result = lservice.findByUserEmail(userEmail);
		System.out.println(result);
		String message = "";
		if(result == null){
			System.out.println("로그인 실패");
			message = "N";
			return message;
		}else{
				System.out.println("*******로그인 성공********");
				session.setAttribute("userNickname", result.getUserNickname());
				session.setAttribute("userEmail", result.getUserEmail());
				session.setAttribute("admin", result.getUserAdmin());
				session.setMaxInactiveInterval(60*60*24);
				return message;
			}//end of if

		}//end of loginCheck()
	
	/** 로그인 성공 후 페이지 이동
	 * @param HttpSession session -> 세션에 저장된 이메일 값 가져오기
	 * @return main.do로 이동
	 */
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
					
				}//end of if
				
				
			}else {
				// 체크 박스에 체크가 안되어 있을 때
				Cookie[] getCookie = request.getCookies(); // 쿠키를 얻어오고
				
				if(getCookie != null) { // 쿠키값이 null이 아니면 쿠키 삭제
					Cookie removeEmail = new Cookie("rememberEmail", null);
					removeEmail.setMaxAge(0);
					response.addCookie(removeEmail);
				}//end of if - 쿠키값이 null값인지 검사
			}//end of if - 체크박스에 체크가 되어있는지
			
			System.out.println(session.getAttribute("userEmail")+"***********확인하기 입니다.22222");
			return "redirect:Main";
	}

	
	
	
}
