package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.ReviewVO;

public interface ReviewRepository extends CrudRepository<ReviewVO, Integer>{

}
