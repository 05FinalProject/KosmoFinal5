package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.domain.ReportVO;
@Repository
public interface ReportRepository extends CrudRepository<ReportVO, Integer>{

}
