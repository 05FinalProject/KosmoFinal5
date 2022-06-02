package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.PetVO;
@Repository
public interface PetRepository extends CrudRepository<PetVO, Integer>{


}
