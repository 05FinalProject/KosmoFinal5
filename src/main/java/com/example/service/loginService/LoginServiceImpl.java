package com.example.service.loginService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.community.CommunityRepository;
import com.example.community.CommunityVO;
import com.example.dao.AgencyRepository;
import com.example.dao.CommentRepository;
import com.example.dao.ImgRepository;
import com.example.dao.LikeItRepository;
import com.example.dao.PetRepository;
import com.example.dao.ReviewRepository;
import com.example.dao.UserRepository;
import com.example.domain.AgencyVO;
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
	private ImgRepository img;
	
	@Autowired
	private PetRepository pet;

	@Autowired
	private CommunityRepository communityR;
	
	@Autowired
	private CommentRepository commentR;
	
	@Autowired
	private ReviewRepository reviewR;
	
	@Autowired
	private LikeItRepository likeItR;
	
	
	@Override
	public UserVO findByUserEmail(String userEmail) {
		return user.findByUserEmail(userEmail);
	}

	
	/* DB에 회원의 사진이 있으면 가져오기 */
	@Override
	public ImgVO findBypRimgname(String pRimgname) {
		return img.findByUserEmail(pRimgname).get(0);
	}

	/* DB에 회원의 반려견 리스트 가져오기 */
	@Override
	public List<PetVO> findByPetNum(String petNum) {
		return (List<PetVO>) pet.findAll();
	}
	
	/* 마이프로필 - 프로필사진 변경 */
	@Override
	public void userImgUpdate(ImgVO ivo) {
		ImgVO result = img.findByUserEmail(ivo.getUser().getUserEmail()).get(0);
		result.setPImgname(ivo.getPImgname());
		result.setRealImgName("img/userImg/"+ivo.getRealImgName());
		img.save(result);
	}

	/* 로그인 시 DB 이메일/비밀번호 체크*/
	@Override
	public UserVO checkPass(UserVO vo) {
		return user.checkPass(vo.getUserEmail(),vo.getUserPass());
	}

	@Override
	public UserVO passCheck(UserVO vo) {
		List<UserVO> passCheck = (List<UserVO>) user.findAll();
		
		for(UserVO check: passCheck) {
			if(check.getUserEmail().equals(vo.getUserEmail()) && check.getUserPass().equals(vo.getUserPass())) {
				return check;
			}
		}
		return null;
	}
	
	
	
	
	
	@Override
	public void saveUserEmail(UserVO result) {
		user.save(result);
		
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
		img.save(ivo);
		
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

	/* 마이페이지 - 반려견 리스트 */
	@Override
	public List<HashMap<String, Object>> getPetListPaging(Pageable paging){
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		for(PetVO pvo:pet.findAll(paging)) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("petNum", pvo.getPetNum());
			hm.put("petName",pvo.getPetName());
			hm.put("petAge", pvo.getPetAge());
			hm.put("petGender", pvo.getPetGender());
			hm.put("petVariety", pvo.getPetVariety());
			hm.put("petNeutering", pvo.getPetNeutering());
			
			PetVO pvo2 = new PetVO();
			pvo2.setPetNum(pvo.getPetNum());
			System.out.println(pvo2);
			List<ImgVO> imgList = img.findByPet(pvo2);
			if(imgList.size() > 0 ) {
				hm.put("petImg", imgList.get(imgList.size()-1).getRealImgName());
			}
			
			list.add(hm);
		}
		return list;
	}
	
	/* 마이페이지 반려견 리스트 페이징 */
	@Override
	public int countPetRecord() {
		return pet.countPetRecord();
	}
	
	/* 반려견 상세보기 */
	@Override
	public PetVO getPetDetail(PetVO pvo) {
		PetVO pevo = pet.findById(pvo.getPetNum()).get();
		return pevo;
	}

	/* ? */
	@Override
	public PetVO petAdd(PetVO pvo) {
		return null;
	}



	/* 내가 작성한 글*/
	@Override
	public List<CommunityVO> findCommunityList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return communityR.findByUser(u);
	}

	/* 내가 작성한 댓글*/
	@Override
	public List<CommentVO> findCommentList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return commentR.findByUser(u);
	}

	/* 내가 작성한 리뷰 */
	@Override
	public List<ReviewVO> findByReviewList(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		return reviewR.findByUser(u);
	}

	/* 내가 좋아요한 글 */
	@Override
	public List<CommunityVO> findCommunityByLike(String userEmail) {
		UserVO u = user.findById(userEmail).get();
		List<LikeItVO> likeList = likeItR.findByUser(u);

		List<CommunityVO> resultList = new ArrayList<CommunityVO>();
		
		for (LikeItVO like : likeList){
			CommunityVO vo = like.getCommunity();
			resultList.add(vo);
		}
		return resultList;
	}


	@Override
	public List<PetVO> findmMyPet(String userEmail) {
		return null;
	}


	@Override
	public List<PetVO> findmMyPetImg(String userEmail) {
		return null;
	}
	
	
	

//	/* 회원탈퇴용으로 쓰는 중*/
//	@Override
//	public void delete(UserVO vo) {
//		user.deleteById(vo.getUserEmail());
//	}
}
