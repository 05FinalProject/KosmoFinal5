package com.example.domain;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

public class ImgFileVO {
	
	private MultipartFile file1;
	private MultipartFile file2;
	private MultipartFile file3;
	private String name1;
	private String name2;
	private String name3;
	private String rname1;
	private String rname2;
	private String rname3;
	
	
	/*
	 * public MultipartFile getFile1() { return file1; }
	 * 
	 * public void setFile1(MultipartFile file1) { this.file1 = file1;
	 * 
	 * if(!file1.isEmpty()) { name1 = file1.getOriginalFilename();
	 * 
	 * rname1 = UUID.randomUUID().toString()+"_"+ name1;
	 * 
	 * File file = new
	 * File("C:\\FinalProject\\KosmoFinal5\\src\\main\\resources\\static\\imgFile\\"
	 * + rname1);
	 * 
	 * try { file1.transferTo(file); } catch (Exception e) { e.printStackTrace(); }
	 * }
	 * 
	 * 
	 * }
	 * 
	 * public MultipartFile getFile2() { return file2; }
	 * 
	 * public void setFile2(MultipartFile file2) {
	 * 
	 * this.file2 = file2;
	 * 
	 * if(!file2.isEmpty()) { name2 = file2.getOriginalFilename();
	 * 
	 * rname2 = UUID.randomUUID().toString()+"_"+ name2;
	 * 
	 * File file = new
	 * File("C:\\FinalProject\\KosmoFinal5\\src\\main\\resources\\static\\imgFile\\"
	 * + rname2);
	 * 
	 * try { file2.transferTo(file); } catch (Exception e) { e.printStackTrace(); }
	 * } }
	 * 
	 * public MultipartFile getFile3() { return file3; }
	 * 
	 * public void setFile3(MultipartFile file3) { this.file3 = file3;
	 * 
	 * if(!file3.isEmpty()) { name3 = file3.getOriginalFilename();
	 * 
	 * rname3 = UUID.randomUUID().toString()+"_"+ name3;
	 * 
	 * File file = new
	 * File("C:\\FinalProject\\KosmoFinal5\\src\\main\\resources\\static\\imgFile\\"
	 * + rname3);
	 * 
	 * try { file3.transferTo(file); } catch (Exception e) { e.printStackTrace(); }
	 * } }
	 * 
	 */
	
	
}
