package com.example.dao;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AbandonedVO;

@Repository
public interface AbandonedRepository extends CrudRepository<AbandonedVO, Integer> {

	List<AbandonedVO> findAll(Pageable paging);
}
