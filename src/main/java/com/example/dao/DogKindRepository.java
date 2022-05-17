package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.DogKindVO;

public interface DogKindRepository extends CrudRepository<DogKindVO, String>{

}
