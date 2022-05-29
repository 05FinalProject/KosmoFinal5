package com.example.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;
@Repository
public interface UserRepository extends CrudRepository<UserVO, String>{

	Optional<UserVO> findByUserNickname(String userNickname);

	UserVO findByUserEmail(String userEmail);

//	//SELECT u.user_gender, i.p_imgnum FROM user u INNER JOIN img i 
//	//ON u.user_email = i.user_email WHERE u.user_email="abcd1@naver.com";
//	@Query(value="SELECT u.userEmail, u.userAddress, u.userGender, i.pRimgname FROM UserVO u INNER JOIN ImgVO i ON u.userEmail = i.userEmail WHERE u.userEmail=:userEmail", nativeQuery=true)
//	UserVO userSearch(UserVO vo);

	

	
	
	
	
	
	 
}