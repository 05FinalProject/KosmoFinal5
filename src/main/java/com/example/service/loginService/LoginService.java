package com.example.service.loginService;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;

public interface LoginService {

	public UserVO findByUserEmail(String userEmail);
	
	public ImgVO findBypRimgname(String pRimgname);

	/* 프로필 이미지 수정*/
	public void userImgUpdate(ImgVO ivo);

	/* 등록한 반려견 불러오기 */
	public List<PetVO>  findByPetNum(String petNum);

	public UserVO checkPass(UserVO vo);

	/* 반려견 등록 */
	public void petAdd(String petName, Integer petAge, String petGender, String petVariety, String petNeutering,
			Integer petWeight, MultipartFile file);

	/* 반려견 상세보기 */
	public PetVO getPetDetail(PetVO pvo);
	
	/* 반려견 이미지 등록 */
	public void insertImgVO(ImgVO ivo);
	
//	/* 회원탈퇴용으로 쓰는 중*/
//	public void delete(UserVO vo);
}
