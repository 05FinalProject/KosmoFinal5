package com.example.dao;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;
@Repository
public interface UserRepository extends CrudRepository<UserVO, String>{

	Optional<UserVO> findByUserNickname(String userNickname);

	UserVO findByUserEmail(String userEmail);

	

	
	
	
	
	
	 
}