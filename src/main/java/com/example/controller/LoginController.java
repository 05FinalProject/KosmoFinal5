package com.example.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;
import com.example.mail.MailDto;
import com.example.mail.SendEmailService;
import com.example.service.friendService.FriendService;
import com.example.service.loginService.LoginService;
import com.example.service.signUpService.SignUpService;

@SessionAttributes("user")
@Controller
@RequestMapping("/myPage")
public class LoginController {
	
	@Autowired
	private SignUpService signUp;
	
	@Autowired
	private LoginService lservice;
	
	@Autowired
	private FriendService fservice;
	
	@Autowired
	private SendEmailService sendService;
	
	/* 회원가입 페이지 */
	@RequestMapping("/signUp")
	public void signUpPage() {
	}
	
	/* 회원가입 확인 */
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
			
			/* 성공! */
			return "redirect:/myPage/Login";
			
		} else {
			/* 실패! */
			return "redirect:/myPage/signUp";
		}
	}

	/* 닉네임 중복 검사 */
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

	/* 이메일 중복 검사 */
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

	/* 비밀번호 찾기 페이지로 이동 (인증키) */
	@RequestMapping("/findPassPage")
	public void findPass() {
	}
	
	/* 비밀번호 찾기 */
	@RequestMapping(value="pwSearch", produces="application/text;charset=utf-8")
	@ResponseBody
	public String pwSearch(UserVO vo) {
		UserVO result = signUp.pwSearch(vo);
		String message = "";	// 회원 정보 유무를 담을 변수
		
		if(result == null) {
			// 회원정보가 없다는 뜻
			message = "N";
		}
		return message;
	}//end of pwSearch()

	/* 등록된 이메일로 인증번호를 발송하고 발송된 인증번호로 사용자의 패스워드 변경*/
	@PostMapping("/sendEmail")
	public @ResponseBody void sendEmail(String userEmail, String userName) {
	       MailDto dto = sendService.createMailAndChangePassword(userEmail, userName);
	       sendService.mailSend(dto);
	}
	
	/* 비밀번호 재설정 과정 중 현재 비밀번호 체크 */
	@RequestMapping("/pwCheckPage")
	public void pwCheck(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();
		String userEmail = (String)session.getAttribute("userEmail");
		
		UserVO result = lservice.findByUserEmail(userEmail);
		
		m.addAttribute("result", result);
		m.addAttribute("userEmail",userEmail);
	}
	
	/* 비밀번호 변경확인*/
	@RequestMapping("/pwCheck")
	public String pwCheck(HttpServletRequest request, UserVO vo, Model m) {
		
		HttpSession session = request.getSession();
		
		String userEmail = (String)session.getAttribute("userEmail");
		
		vo.setUserEmail(userEmail);
		
		UserVO result = lservice.passCheck(vo);
		
		if (result != null) {
			session.setAttribute("userPass", userEmail);
			return "redirect:pwCheckPage";
		} else {
			m.addAttribute("userPass",result);
			return "redirect:pwChangePage";
		}
		
	}
	
	/* 비밀번호 변경하기 */
	@RequestMapping("/pwChangePage")
	public void pwChangePage(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();
		String userEmail = (String)session.getAttribute("userEmail");
		
		UserVO result = lservice.findByUserEmail(userEmail);
		m.addAttribute("userE", userEmail);
		m.addAttribute("userEamil", result);
	}
	
	/* 비밀번호 업데이트*/
	@RequestMapping("/pwChange")
	public String pwChange(HttpServletRequest request, UserVO uvo, Model m) {
		
		HttpSession session = request.getSession();
		String userEmail = (String)session.getAttribute("userEmail");
		
		UserVO result = lservice.findByUserEmail(userEmail);
		
		if (result == null) {
			session.setAttribute("userEmail", userEmail);
			return "redirect:pwChangePage";	
		} else {
			result.setUserPass(uvo.getUserPass());
			lservice.saveUserEmail(result);
			session.invalidate();
			return "/myPage/Login";
		}
	}
	
	
	
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
		session.setAttribute("userAdmin", result.getUserAdmin());
		session.setAttribute("pRimgname", result2.getRealImgName());
		
		
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
			return "redirect:/include/Main";
	}
			
	/* 로그아웃 (세션 종료) */
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
			System.out.println(session.getAttribute("userEmail") + "님 로그아웃");
			session.invalidate();
			
			return "redirect:/include/Main";
	}
	
	/* 프로필 사진 수정 */
	@RequestMapping("/userUpdate")
	public String UserUpdate(ImgVO ivo, HttpServletRequest request,Model m) {
		
		HttpSession session = request.getSession();
		
		session.setAttribute("pRimgname", "img/userImg/"+ivo.getRealImgName());
		UserVO vo = new UserVO();
		vo.setUserEmail(session.getAttribute("userEmail").toString());
		ivo.setUser(vo);
		lservice.userImgUpdate(ivo);
		m.addAttribute("pRimgname", "img/userImg/"+ivo.getRealImgName());
		return "/myPage/imgModify";
	}
	
	/* 프로필 페이지 이동*/
	@RequestMapping("/myPageProfile")
	public void myPageProfile() {
	}

	/* 반려견 리스트 페이지 이동*/
	@RequestMapping(value = "/myPageDogList", method = RequestMethod.GET )
	public String myPetList(PetVO pvo, Model m, HttpSession session) {
		
		int page = 1;
		if (pvo.getPage() != 0) {
			page = pvo.getPage();
		}
		Pageable paging = PageRequest.of(page -1, 3, Sort.Direction.DESC, "petNum");
		/* 유저의 글 */
		
		session.setAttribute("userEmail", paging);
		
		m.addAttribute("myPet", pvo);
		m.addAttribute("paging", lservice.getPetListPaging(paging));
		m.addAttribute("count", lservice.countPetRecord());
		
		return "/myPage/myPageDogList";
	}

	/* 반려견 정보 상세보기*/
	@RequestMapping(value="/myPageDogDetail")
	public void myDogDetail(PetVO pvo, Model m) {
		m.addAttribute("petImg", lservice.getPetDetail(pvo));
	}

	/* 반려견 등록 페이지 (견종) */
	@RequestMapping(value="/myPageDogAdd", method=RequestMethod.GET)
	public void myPageDogAdd(Model m) {
		m.addAttribute("kindList", fservice.getDogList());
	}

	/* 반려견 등록 버튼 이벤트 */
	@RequestMapping(value="/petAdd", method=RequestMethod.POST)
	public String petAdd(PetVO pvo, MultipartFile file, HttpSession session) {
		
		String userEmail = session.getAttribute("userEmail").toString();
		
		ImgVO ivo = new ImgVO();
		
		UserVO uvo = lservice.getUserInfo(userEmail);
		pvo.setUser(uvo);
		ivo.setPet(pvo);
		ivo.setFile3(file);
		lservice.insertImgVO(ivo);
		
		return "redirect:/myPage/myPageDogList";
	}

	/* 유저의 글 */
	@RequestMapping(value = "/myPageBoard", method = RequestMethod.GET)
	public void myPageBoard(HttpSession session, Model m) {	
		
		String userEmail = session.getAttribute("userEmail").toString();
		
		m.addAttribute("CommunityWrite", lservice.findCommunityList(userEmail));
		m.addAttribute("comment", lservice.findCommentList(userEmail) );
		m.addAttribute("like", lservice.findCommunityByLike(userEmail));
		m.addAttribute("review", lservice.findByReviewList(userEmail));
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
