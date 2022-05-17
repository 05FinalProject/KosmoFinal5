package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.ImgVO;

public interface ImgRepository extends CrudRepository<ImgVO, Integer> {

}
