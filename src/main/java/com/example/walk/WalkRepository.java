package com.example.walk;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WalkRepository extends CrudRepository<WalkVO, Integer>{

}
