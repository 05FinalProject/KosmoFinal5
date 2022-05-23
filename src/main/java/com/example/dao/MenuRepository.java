package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.MenuVO;

@Repository
public interface MenuRepository extends CrudRepository<MenuVO, Integer> {

}
