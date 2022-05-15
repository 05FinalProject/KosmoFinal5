package com.example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.dao.DogDAO;
import com.example.dao.JpaRepository;
import com.example.domain.DogKindVO;


@Controller
@RequestMapping("/include")
public class MainController {
	
	@Autowired
	private DogDAO dao;
	
	@Autowired
	private JpaRepository jpa;
	
	
	
	//index
	@RequestMapping("/")
	public String viewPage() {
		return "index";
	}
	
	@RequestMapping("/getDog")
	public void getDog(Model m) {
		m.addAttribute("getDog", dao.getDog(new DogKindVO()));
		m.addAttribute("getDogInfo", jpa.findById("골든 리트리버 (GOLDEN RETRIEVER)").get());
	}
	
	
	
}
