package com.example.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.LikeItVO;
import com.example.domain.UserVO;
@Repository
public interface LikeItRepository extends CrudRepository<LikeItVO, Integer>{

	List<LikeItVO> findByUser(UserVO u);

	
}
