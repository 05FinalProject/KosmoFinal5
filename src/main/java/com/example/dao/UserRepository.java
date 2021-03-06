package com.example.dao;

import java.util.List;
import java.util.Optional;

import com.example.domain.PetVO;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;
@Repository
public interface UserRepository extends CrudRepository<UserVO, String>{

	Optional<UserVO> findByUserNickname(String userNickname);

	UserVO findByUserEmail(String userEmail);
	
	//1:1 친구 검색
	List<UserVO> findByUserNicknameContaining(String title);

	//SELECT count(*) FROM user;
	@Query("SELECT count(user) FROM UserVO user")
	int getUserCount();

	@Query(value="select user_email,user_nickname \r\n"
			+ "from user \r\n"
			+ "where user_email not in (select user_email from friend where user_email=:email or user_email1=:email) \r\n"
			+ "and user_email not in (select user_email1 from friend where user_email=:email or user_email1=:email)\r\n"
			+ "order by rand() limit 18" ,nativeQuery = true)
	List<Object[]> getRandomUsers(String email);
	
	// 로그인
	//select * from user where user_email='aa' and user_pass='abcd';
	@Query("SELECT uvo FROM UserVO uvo WHERE uvo.userEmail=:userEmail and uvo.userPass=:userPass")
	UserVO checkPass(String userEmail,String userPass);

	// 비밀번호 찾기
	// select * from user where user_email='aa' and user_name='0102033423'
	@Query("SELECT uvo FROM UserVO uvo WHERE uvo.userEmail=:userEmail and uvo.userName=:userName")
	UserVO pwSearch(String userEmail, String userName);

	// 비밀번호 재설정
	// UPDATE user set userPass WEHRE userEmail
	@Query("UPDATE UserVO uvo SET uvo.userPass=:userPass WHERE uvo.userEmail=:userEmail")
	UserVO save(String userEmail, String userPass);


	// 반려견 리스트 출력
	@Query("SELECT pvo FROM PetVO pvo WHERE pvo.petNum=:petNum")
	PetVO findByPetNum();

	//****************************관리자***********************
	//대시보드 페이지 총 유저수 출력
	@Query("SELECT count(uvo) FROM UserVO uvo")
	int totalUserCount();

	UserVO findUserByUserEmail(String userEmail);


	//대시보드 오늘 등록된 회원가입 수 출력
	//SELECT count(*) FROM user WHERE user_signup = curdate()
	@Query("SELECT count(u) FROM UserVO u WHERE u.userSignup=current_date")
	int getSignupCount();


	//블랙리스트 회원 출력
	@Query("SELECT uvo FROM UserVO uvo WHERE uvo.userBlack = :userBlack")
	public List<UserVO> blackList(String userBlack);


}