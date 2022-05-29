package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.FriendVO;
@Repository
public interface FriendRepository extends CrudRepository<FriendVO, Integer> {
	//select * from friend 
	//where (user_sign = 0 and user_email = 'abcd2@naver.com')
	//or (user_sign = 0 and user_email1 = 'abcd2@naver.com');
	@Query("SELECT f FROM FriendVO f WHERE(f.userSign=0 and f.user1.userEmail=:email)  or   "
			+ "(f.userSign=0 and f.user2.userEmail=:email)")
	List<FriendVO> friendList(String email);
}
