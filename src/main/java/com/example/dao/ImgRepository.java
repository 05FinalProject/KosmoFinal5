package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.community.CommunityVO;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
@Repository
public interface ImgRepository extends CrudRepository<ImgVO, Integer> {
	
	@Query("SELECT i FROM ImgVO i WHERE i.user.userEmail=:email")
	public List<ImgVO> findByUserEmail(String email);
	
	@Query(value = "SELECT p_rimgname FROM img WHERE c_num = :number", nativeQuery = true)
	public List<ImgVO> findCommunityImgnum(Integer number);

	
	public List<ImgVO> findByCommunity(CommunityVO community);
	
}	

