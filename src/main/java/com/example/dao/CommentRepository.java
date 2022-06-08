package com.example.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.community.CommunityVO;
import com.example.domain.CommentVO;

@Repository
public interface CommentRepository extends CrudRepository<CommentVO, Integer> {
	
	List<CommentVO> findByCommunity(CommunityVO community);

}
