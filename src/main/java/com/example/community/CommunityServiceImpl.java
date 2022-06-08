package com.example.community;

import java.util.Date;
import java.util.List;

import com.example.dao.ReportRepository;
import com.example.domain.ReportVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.dao.CommentRepository;
import com.example.dao.ImgRepository;
import com.example.dao.UserRepository;
import com.example.domain.CommentVO;
import com.example.domain.ImgVO;
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
	public CommunityVO getCommunity(CommunityVO vo) {
		CommunityVO cvo = communityRepo.findById(vo.getCommunityNum()).get();
		return communityRepo.save(cvo);
	}

	// *******************************************************************
	// 일상공유 페이지 페이징 처리
	@Override
	public List<CommunityVO> getCommunityPaging(Pageable paging) {
		return communityRepo.findAll(paging);
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
		vo.setCommunity(communityRepo.findById(communityNum).get()); // forigen key
		vo.setUser(userRepo.findById(user).get()); // forigen key
		vo.setRReason(rReason);
		vo.setRDate(date);

		reportRepo.save(vo);
	}
	//이미지 리스트 출력
	public List<ImgVO> imgList(Integer communityNum) {
		return imgRepo.findByCommunity(communityRepo.findById(communityNum).get());
	}
}