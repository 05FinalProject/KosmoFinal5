package com.example.service.signUpService;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ImgRepository;
import com.example.dao.UserRepository;
import com.example.domain.ImgVO;
import com.example.domain.UserVO;

@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	private UserRepository user;
	
	@Autowired
	private ImgRepository img;
	
	// 회원가입
	public void insertUser(UserVO vo) {
		
		user.save(vo);
	}
	
	// 회원가입 시 기본이미지 등록 (없을 시 serviceImpl에서 로그인 막힘)
	public void insertImage(ImgVO ivo) {
		user.save(ivo.getUser());
		img.save(ivo);
	}
	
	/*	이메일 중복 체크 - DB에 동일한 이메일이 있는지 레코드 검색 */
	@Override
	public UserVO emailCheck(UserVO vo) {
		Optional<UserVO> result = user.findById(vo.getUserEmail());
		if(result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
	
	/*	닉네임 중복 체크 - DB에 동일한 닉네임이 있는지 레코드 검색 */
	@Override
	public UserVO nicknameCheck(UserVO vo) {
		Optional<UserVO> result = user.findByUserNickname(vo.getUserNickname());
		if(result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
	
	/* 로그인 - DB에 입력된 이메일과 비밀번호가 일치하는 레코드 검색 */
	@Override
	public UserVO loginCheck(UserVO vo) {
		UserVO result = user.findById(vo.getUserEmail()).get();
		return result;
	}
	
/*
//	/**	비밀번호 찾기
//	 * 	- DB에서 회원 정보 찾기
//	 * 	- MemberDAO의 pwSearch() 호출
//	 * @param MemberVO vo 
//	 * @return MemberVO vo
//	 * 			- null O : 비밀번호 재설정 X 
//	 * 			- null X : 비밀전호 재설정 O
//	 */
//	@Override
//	public UserVO pwSearch(UserVO vo) {
//		return memberDAO.pwSearch(vo);
//	}
//	
//	/** 비밀번호 변경
//	 *	- DB에 동일한 이메일을 가진 회원의 비밀번호를 변경 
//	 * 	- MemberDAO의 pwChange() 호출
//	 * @param MemberVO vo 
//	 * @return int ( 입력 성공 시 1을 리턴 )
//	 */
//	@Override
//	public int pwChange(UserVO vo) {
//		return memberDAO.pwChange(vo);
//	}
//	
//
//	/**	회원 정보 수정
//	 * - DB에 동일한 이메일을 가진 회원의 정보를 수정
//	 * @param MemberVO vo 
//	 * @return int ( 입력 성공 시 1을 리턴 )
//	 */
//	@Override
//	public int userUpdate(UserVO vo) {
//		return memberDAO.memberUpdate(vo);
//	}
//
//	}
//
//	@Override
//	public int userDeleteManager(UserVO vo) {
//		return memberDAO.userDeleteManager(vo);
//	}
//
//	@Override
//	public int userDefaultList(UserVO vo) {
//		return memberDAO.memberDefaultList(vo);
//	}
	
	
	
}
