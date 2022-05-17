package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.CommentVO;

@Repository
public interface CommentVORepository extends CrudRepository<CommentVO, Integer> {
	
	
	 
	 
	
}
