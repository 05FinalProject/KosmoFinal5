package com.example.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.CommunityVO;

@Repository
public interface CommunityRepository extends CrudRepository<CommunityVO, Integer> {
	
	
	 
	
}
