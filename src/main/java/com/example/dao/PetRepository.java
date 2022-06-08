package com.example.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.PetVO;
import com.example.domain.UserVO;
@Repository
public interface PetRepository extends CrudRepository<PetVO, Integer>{

	List<PetVO> findByUser(UserVO vo);

	
}
