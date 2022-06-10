package com.example.service.loginService;

import java.util.List;

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

	public UserVO checkPass(UserVO vo);

	/* 반려견 등록 */
	public PetVO petAdd(PetVO pvo);
	
	void insertPet(String userEmail, PetVO pvo);

	/* 반려견 상세보기 */
	public PetVO getPetDetail(PetVO pvo);
	
	/* 반려견 이미지 등록 */
	public void insertImgVO(ImgVO ivo);
	public PetVO getPetOwnerByUser(String userEmail);

	/* 마이페이지 - 내가 쓴 커뮤니티 글*/
	public List<CommunityVO> findCommunityList(String userEmail);
	
	/* 마이페이지 - 내가 쓴 댓글 */
	public List<CommentVO> findCommentList(String userEmail);
	
	/* 마이페이지 - 내가 쓴 리뷰 */
	public List<ReviewVO> findByReviewList(String userEmail);
	
	/* 마이페이지 - 내가 좋아요한 글 */
	public List<CommunityVO> findCommunityByLike(String userEmail);

	/* 등록한 반려견 불러오기 2 */
	public List<PetVO> findmMyPet(String userEmail);
	public List<PetVO> findmMyPetImg(String userEmail);
	
//	/* 회원탈퇴용으로 쓰는 중*/
//	public void delete(UserVO vo);
}
