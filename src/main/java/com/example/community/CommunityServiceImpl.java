package com.example.community;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.example.dao.ReportRepository;
import com.example.domain.ReportVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.dao.CommentRepository;
import com.example.dao.ImgRepository;
import com.example.dao.LikeItRepository;
import com.example.dao.UserRepository;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
import com.example.domain.LikeItVO;
import com.example.domain.UserVO;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityRepository communityRepo;

	@Autowired
	private UserRepository userRepo;

	@Autowired
	private ReportRepository reportRepo;

	@Autowired
	private CommentRepository commentRepo;

	@Autowired
	private ImgRepository imgRepo;
	
	@Autowired
	private LikeItRepository likeItRepo;


	/*
	 * public List<ImgFileVO> saveDaily(String p_imgname, String p_rimgname) {
	 * return communityRepo.findByP_imgnum(p_rimgname, p_rimgname); }
	 */

	// 일상공유 페이지 게시글 등록
	public void insertDaily(String userEmail, String communityTitle, String communityContent, MultipartFile[] file) {
		CommunityVO cvo = new CommunityVO();
		Date date = new Date();
		cvo.setUser(userRepo.findById(userEmail).get());
		cvo.setCommunityTitle(communityTitle);
		cvo.setCommunityContent(communityContent);
		cvo.setCommunityInsertdate(date);

		communityRepo.save(cvo);
	}

	// 일상공유 페이지 상세보기
	public List<ImgVO> getCommunity(CommunityVO vo) {
		List<ImgVO> imgList = imgRepo.findByCommunity(vo);
		//CommunityVO cvo = communityRepo.findById(vo.getCommunityNum()).get();
		return imgList;
	}

	// *******************************************************************
	// 일상공유 페이지 페이징 처리
	@Override
	public List<HashMap<String, Object>> getCommunityPaging(Pageable paging) {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		for(CommunityVO communityVo:communityRepo.findAll(paging)) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("communityNum", communityVo.getCommunityNum());
			hm.put("communityInsertdate", communityVo.getCommunityInsertdate());
			hm.put("communityTitle", communityVo.getCommunityTitle());
			
			hm.put("userNickname", communityVo.getUser().getUserNickname());
			
			
			
			CommunityVO communityVo2 = new CommunityVO();
			communityVo2.setCommunityNum(communityVo.getCommunityNum());
			List<ImgVO> imgList = imgRepo.findByCommunity(communityVo2);
			if(imgList.size() > 0 ) {
				hm.put("communityImg", imgRepo.findByCommunity(communityVo2).get(0).getRealImgName());
				
			}
			
			
			list.add(hm);
		}
		return list;
	}

	@Override
	public int countCommunityRecord() {
		return communityRepo.countCommunityRecord();
	}



	//*******************************************************************
	
	//일상공유 게시글 수정
	public void updateCommunity(CommunityVO vo) {
		/* communityRepo.updateCommunity(); */
	}

	// *******************************************************************

	// 일상공유 게시글 수정
	public void updateCommunity(Integer communityNum, String communityTitle, String communityContent) {
		CommunityVO cvo = communityRepo.findById(communityNum).get();
		Date date = new Date();

		cvo.setCommunityTitle(communityTitle);
		cvo.setCommunityContent(communityContent);
		cvo.setCommunityUpdatedate(date);

		communityRepo.save(cvo);
	}

	// 일상공유 게시글 삭제
	public void deleteCommunity(Integer communityNum) {

		communityRepo.deleteById(communityNum);
	}

	// 일상공유 댓글 작성
	public void writeCommunitycomment(Integer communityNum, String userEmail, String commentContent) {
		CommentVO commentVo = new CommentVO();
		Date date = new Date();

		commentVo.setUser(userRepo.findById(userEmail).get());
		commentVo.setCommunity(communityRepo.findById(communityNum).get());
		commentVo.setCommentContent(commentContent);
		commentVo.setCommentInsertdate(date);

		commentRepo.save(commentVo);

	}

	// 일상공유 댓글 리스트
	public List<CommentVO> commentList(Integer communityNum) {
		
		return commentRepo.findByCommunity(communityRepo.findById(communityNum).get());
	}

	
	//일상공유 이미지 등록
	public void insertImgVo(ImgVO imgvo) {
		imgRepo.save(imgvo);
	}

	//일상공유 이미지 등록에 이용
	public CommunityVO getCommunityByUser(String userEmail) {
		List<CommunityVO> list = communityRepo.getCommunityByUser(userEmail);
		CommunityVO v = new CommunityVO();
		if(list.size() > 0) {
			v = list.get(0);
		}
		
		return v;

	}

	//일상공유 게시글 신고
	@Override
	public void reportCommunity(Integer communityNum, String user, String rReason) {
		ReportVO vo = new ReportVO();
		Date date = new Date();
		
		System.out.println("서비스 임플");
		vo.setCommunity(communityRepo.findById(communityNum).get()); // forigen key
		vo.setUser(userRepo.findById(user).get()); // forigen key
		vo.setRReason(rReason);
		vo.setRDate(date);

		reportRepo.save(vo);
	}
	
	//이미지 리스트 출력
	public List<ImgVO> imgList(Integer communityNum) {
		System.out.println("이미지 커뮤니티 번호 확인"+communityNum);
		return imgRepo.findByCommunity(communityRepo.findById(communityNum).get());
	}
	
	//게시글 좋아요
	public void likeIt(Integer communityNum, String userEmail) {
		CommunityVO cvo = new CommunityVO();
		UserVO uvo = new UserVO();
		
							//select
		cvo = communityRepo.findById(communityNum).get();
		uvo = userRepo.findById(userEmail).get();
		LikeItVO likeItVo = likeItRepo.findByCommunityAndUser(cvo, uvo);
		
		/* 1select를 해서 담긴 변수 필요(a) 3if a가 데이터가 있으면 좋아요가 눌렸다는 뜻으로 상태변경 해줘야 함
		 * 									2데이터가 없으면 좋아요가 안 눌렸다는 뜻으로 상태변경 해줘야 함
		 * 4좋아요를 취소했다가 다시 좋아요를 눌렀을 때 변경된 데이터가 존재하므로 다시 update해줘야 함 */
		
		if(likeItVo == null) {
			LikeItVO lvo = new LikeItVO();
			lvo.setCommunity(cvo);
			lvo.setUser(uvo);
			lvo.setLikeState(1);  //기본값
			likeItRepo.save(lvo);
		} else {
			if (likeItVo.getLikeState()==1) {
				likeItVo.setLikeState(0);
				likeItRepo.save(likeItVo);
			} else {
				likeItVo.setLikeState(1);
				likeItRepo.save(likeItVo);
			}
		}
	
	}

	
	//게시글 좋아요 상태 검색
	public Integer likeItList(Integer communityNum, String userEmail) {
		LikeItVO likeItVo = likeItRepo.findByCommunityAndUser(communityRepo.findById(communityNum).get(), userRepo.findById(userEmail).get());
		if(likeItVo == null) {
			return 0;
		} else {
			return likeItVo.getLikeState();
		}
	}
	
	//게시글 썸네일 띄우기
	public List<HashMap<String, Object>> getThumbnail(CommunityVO communityVo) {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		for(Object[] object : imgRepo.findByCommunityAndUserOrderByAsc(communityVo.getCommunityNum())) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			
			hm.put("rImgName", object[0]);
			hm.put("title", object[1]);
			hm.put("insertdate", object[2]);
			hm.put("userNickname", object[3]);
			hm.put("communityNum", object[4]);
			
			list.add(hm);		
		
			
		}
		return list;
	}
}