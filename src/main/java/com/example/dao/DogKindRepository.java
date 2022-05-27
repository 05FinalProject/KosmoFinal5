package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.DogKindVO;
@Repository
public interface DogKindRepository extends CrudRepository<DogKindVO, String>{
	

	@Query("SELECT count(a) as count FROM DogKindVO a")
	 int countkindRecord();
	
	List<DogKindVO> findAll(Pageable paging);
}
