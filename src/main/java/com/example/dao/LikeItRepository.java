package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.community.CommunityVO;
import com.example.domain.LikeItVO;
import com.example.domain.UserVO;
@Repository
public interface LikeItRepository extends CrudRepository<LikeItVO, Integer>{

	List<LikeItVO> findByUser(UserVO u);

	LikeItVO findByCommunityAndUser(CommunityVO community, UserVO user);
	

	@Query(value = "select c_num  , count(c_num) count from like_it\r\n"
			+ "group by c_num\r\n"
			+ "order by count limit 5",nativeQuery = true)
	List<Object[]> LikeItRepository();
	
}
