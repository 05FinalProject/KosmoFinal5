package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.LikeItVO;
@Repository
public interface LikeItRepository extends CrudRepository<LikeItVO, Integer>{

}
