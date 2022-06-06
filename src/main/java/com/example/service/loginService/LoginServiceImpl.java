package com.example.service.loginService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.ImgRepository;
import com.example.dao.PetRepository;
import com.example.dao.UserRepository;
import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserRepository user;
	
	@Autowired
	private ImgRepository Img;
	
	@Autowired
	private PetRepository pet;

	
	@Override
	public UserVO findByUserEmail(String userEmail) {
		return user.findByUserEmail(userEmail);
	}

	
	/* DB에 회원의 사진이 있으면 가져오기 */
	@Override
	public ImgVO findBypRimgname(String pRimgname) {
		return Img.findByUserEmail(pRimgname).get(0);
	}

	/* DB에 회원의 반려견 리스트 가져오기 */
	@Override
	public List<PetVO> findByPetNum(String petNum) {
		return (List<PetVO>) pet.findAll();
		
	}
	
	@Override
	public void userImgUpdate(ImgVO ivo) {
		ImgVO result = Img.findByUserEmail(ivo.getUser().getUserEmail()).get(0);
		result.setPImgname(ivo.getPImgname());
		result.setPRimgname("img/userImg/"+ivo.getPRimgname());
		Img.save(result);
	}

	public UserVO checkPass(UserVO vo) {
		return user.checkPass(vo.getUserEmail(),vo.getUserPass());
	}

	/* 반려견 등록 */
	@Override
	public void petAdd(PetVO pvo) {
		UserVO uvo = user.findById(pvo.getUser().getUserEmail()).get();
		ImgVO ivo = new ImgVO();
		ivo = Img.findByUserEmail(ivo.getUser().getUserEmail()).get(0);
		ivo.setPImgname(ivo.getPImgname());
		ivo.setPRimgname("img/petImg/"+ivo.getPRimgname());
		
		pvo.setUser(uvo);
		pvo.setPetNum(ivo.getPet().getPetNum());
		pet.save(pvo);
	}


	/* 반려견 상세보기 */
	@Override
	public PetVO getPetDetail(PetVO pvo) {
		PetVO pevo = pet.findById(pvo.getPetNum()).get();
		return pet.save(pevo);
	}



//	/* 회원탈퇴용으로 쓰는 중*/
//	@Override
//	public void delete(UserVO vo) {
//		user.deleteById(vo.getUserEmail());
//	}
}
