package com.example.walk;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.UserVO;

@Repository
public interface WalkRepository extends CrudRepository<WalkVO, Integer>{
	
	
	List<WalkVO> findByUserAndCreatedDateAt(UserVO user, String date);
	
	List<WalkVO> findByUser(UserVO user);
	
	//select *
	//from walk
	//where user_email='yangjun95@naver.com' and created_date_at=curdate();
	@Query("select w from WalkVO w where w.user.userEmail=:user and w.createdDateAt=CURRENT_DATE")
	List<WalkVO> selectWalk2(String user);
	
}
