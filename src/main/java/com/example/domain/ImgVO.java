package com.example.domain;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import com.example.community.CommunityVO;

import lombok.Data;

@Data
@Entity
@Table(name="img")
public class ImgVO {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_imgnum")
	private Integer pImgnum;
	
	
	@Column(length = 200,name = "p_imgname")
	private String pImgname;
	
	@Column(length = 200,name = "p_rimgname")
	private String pRimgname;
	
	@ManyToOne
	@JoinColumn(name="c_num")
	private CommunityVO community;
	
	@ManyToOne
	@JoinColumn(name="comment_num")
	private CommentVO comment;
	
	@ManyToOne
	@JoinColumn(name="review_num")
	private ReviewVO review;
	
	@ManyToOne
	@JoinColumn(name="p_num")
	private PetVO pet;
	
	@ManyToOne
	@JoinColumn(name="user_email")
	private UserVO user;

	@Transient
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	
	public void setFile(MultipartFile file) {
		
		if(!file.isEmpty()) {
			pImgname = file.getOriginalFilename();
			pRimgname = UUID.randomUUID().toString()+"_"+pImgname;
			Path path = Paths.get(System.getProperty("user.dir"), "src/main/resources/static/img/userImg");
			System.out.println(path);
			
			File files = new File(path+"/" + pRimgname);
			
			try {
				file.transferTo(files);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		
	
				
	}
	
public void setFile2(MultipartFile file) {
		
		if(!file.isEmpty()) {
			pImgname = file.getOriginalFilename();
			pRimgname = UUID.randomUUID().toString()+"_"+pImgname;
			Path path = Paths.get(System.getProperty("user.dir"), "src/main/resources/static/img/communityImg");
			System.out.println(path);
			
			File files = new File(path+"/" + pRimgname);
			
			try {
				file.transferTo(files);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
		
		
	
				
	}
	
	
}
