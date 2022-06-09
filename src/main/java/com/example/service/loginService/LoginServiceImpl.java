package com.example.service.loginService;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.community.CommunityRepository;
import com.example.community.CommunityVO;
import com.example.dao.CommentRepository;
import com.example.dao.ImgRepository;
import com.example.dao.LikeItRepository;
import com.example.dao.PetRepository;
import com.example.dao.ReviewRepository;
import com.example.dao.UserRepository;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
import com.example.domain.LikeItVO;
import com.example.domain.PetVO;
import com.example.domain.ReviewVO;
import com.example.domain.UserVO;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	private UserRepository user;
	
	@Autowired
	private ImgRepository Img;
	
	@Autowired
	private PetRepository pet;

	@Autowired
	private CommunityRepository cmR;
	
	@Autowired
	private CommentRepository cr;
	
	@Autowired
	private ReviewRepository rv;
	
	@Autowired
	private LikeItRepository li;
	
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
		result.setRealImgName("img/userImg/"+ivo.getRealImgName());
		Img.save(result);
	}

	public UserVO checkPass(UserVO vo) {
		return user.checkPass(vo.getUserEmail(),vo.getUserPass());
	}

	/* 반려견 등록 */
	@Override
	public void insertPet(String userEmail, PetVO pvo) {
		pvo.setUser(user.findById(userEmail).get());
		pet.save(pvo);
	}

	/* 반려견 이미지 등록 */
	@Override
	public void insertImgVO(ImgVO ivo) {
		Img.save(ivo);
		
	}

	/* 반려견 상세보기 */
	@Override
	public PetVO getPetDetail(PetVO pvo) {
		PetVO pevo = pet.findById(pvo.getPetNum()).get();
		return pevo;
	}

	/* 반려견리스트 누를 때 이미지 불러오기 */
//	@Override
//	public ImgVO getPetImg(ImgVO ivo) {
//		return Img.findByPet(ivo.getPet()).get(0);
//	}


	@Override
	public PetVO petAdd(PetVO pvo) {
		return null;
	}

	/* 내가 작성한 글*/
	@Override
	public List<CommunityVO> findCommunityList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return cmR.findByUser(u);
	}

	/* 내가 작성한 댓글*/
	@Override
	public List<CommentVO> findCommentList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return cr.findByUser(u);
	}

	/* 내가 작성한 리뷰 */
	@Override
	public List<ReviewVO> findByReviewList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return rv.findByUser(u);
	}

	/* 내가 좋아요한 글 */
	@Override
	public List<CommunityVO> findCommunityByLike(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		List<LikeItVO> likeList = li.findByUser(u);

		List<CommunityVO> resultList = new ArrayList<CommunityVO>();
		
		for (LikeItVO like : likeList){
			CommunityVO vo = like.getCommunity();
			resultList.add(vo);
		}
		return resultList;
	}


	/* 반려견 이미지 등록에 써먹는 중*/
	@Override
	public PetVO getPetOwnerByUser(String userEmail) {
		UserVO uvo = new UserVO();
		uvo.setUserEmail(userEmail);
		List<PetVO> list = pet.getPetOwnerByUser(uvo);
		PetVO v = new PetVO();
		if(list.size() > 0) {
			v = list.get(0);
		}
		return v;
	}


//	/* 회원탈퇴용으로 쓰는 중*/
//	@Override
//	public void delete(UserVO vo) {
//		user.deleteById(vo.getUserEmail());
//	}
}
