package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.ReviewVO;
@Repository
public interface ReviewRepository extends CrudRepository<ReviewVO, Integer>{

}
