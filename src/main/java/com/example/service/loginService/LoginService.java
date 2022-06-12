package com.example.service.loginService;

import java.util.HashMap;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.example.community.CommunityVO;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
import com.example.domain.PetVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;

public interface LoginService {

	public UserVO findByUserEmail(String userEmail);
	
	public ImgVO findBypRimgname(String pRimgname);

	/* 프로필 이미지 수정*/
	public void userImgUpdate(ImgVO ivo);

	/* 등록한 반려견 불러오기 */
	public List<PetVO>  findByPetNum(String petNum);

	/* 마이페이지 - 반려견 리스트 */
	public List<HashMap<String, Object>> getPetListPaging(Pageable paging);
	public int countPetRecord();
	
	/* 로그인 시 비밀번호 유효성검사 */
	public UserVO checkPass(UserVO vo);

	/* 반려견 등록 */
	public PetVO petAdd(PetVO pvo);
	void insertPet(String userEmail, PetVO pvo);

	/* 반려견 이미지 등록 */
	public void insertImgVO(ImgVO ivo);
	public PetVO getPetOwnerByUser(String userEmail);
	
	
	/* 반려견 상세보기 */
	public PetVO getPetDetail(PetVO pvo);
	

	/* 등록한 반려견 불러오기 2 */
	public List<PetVO> findmMyPet(String userEmail);
	public List<PetVO> findmMyPetImg(String userEmail);

	List<CommunityVO> findCommunityList(String userEmail);

	List<CommentVO> findCommentList(String userEmail);

	List<ReviewVO> findByReviewList(String userEmail);

	List<CommunityVO> findCommunityByLike(String userEmail);

	
//	/* 회원탈퇴용으로 쓰는 중*/
//	public void delete(UserVO vo);
}
