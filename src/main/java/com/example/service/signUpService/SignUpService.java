package com.example.service.signUpService;

import com.example.domain.ImgVO;
import com.example.domain.UserVO;

public interface SignUpService {
	
	/* 회원가입 */
	void insertUser(UserVO vo);
	void insertImage(ImgVO vo);

	/*	email 중복 체크 - DB에 동일한 이메일이 있는지 레코드 검색 */
	public UserVO emailCheck(UserVO vo);

	/*	nickname 중복 체크 - DB에 동일한 닉네임이 있는지 레코드 검색 */
	public UserVO nicknameCheck(UserVO vo);
	
	/* 회원가입과 동시에 디폴트 리스트 생성 */
	//public int userDefaultList(UserVO vo);
	
	/* 로그인 - DB에 입력된 이메일과 비밀번호가 일치하는 레코드 검색 */
	public UserVO loginCheck(UserVO vo);
	
	
}
