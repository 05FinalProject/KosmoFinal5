package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.PetVO;
import com.example.domain.UserVO;
@Repository
public interface PetRepository extends CrudRepository<PetVO, Integer>{

	List<PetVO> findByUser(UserVO vo);

	

	
	// 마이페이지 - 반려견 리스트 페이징 처리
	@Query("SELECT count(c) as count FROM PetVO c")
	int countPetRecord();
	
	List<PetVO> findAll(Pageable paging);

}
