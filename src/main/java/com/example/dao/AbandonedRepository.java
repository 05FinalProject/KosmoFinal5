package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.AbandonedVO;

@Repository
public interface AbandonedRepository extends CrudRepository<AbandonedVO, Integer> {

}
