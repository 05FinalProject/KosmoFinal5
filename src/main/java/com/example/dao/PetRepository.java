package com.example.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.domain.PetVO;

public interface PetRepository extends CrudRepository<PetVO, Integer>{

}
