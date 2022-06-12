package com.example.service.chatingService;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;import org.apache.jasper.TrimSpacesOption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.community.CommunityRepository;
import com.example.community.CommunityVO;
import com.example.dao.ChatingRoomRepository;
import com.example.dao.FriendChatingRepository;
import com.example.dao.FriendRepository;
import com.example.dao.ImgRepository;
import com.example.dao.LikeItRepository;
import com.example.dao.PetRepository;
import com.example.dao.UserRepository;
import com.example.domain.ChatingRoomVO;
import com.example.domain.FriendChatingVO;
import com.example.domain.FriendVO;
import com.example.domain.ImgVO;
import com.example.domain.LikeItVO;
import com.example.domain.PetVO;
import com.example.domain.UserVO;

@Service
public class ChatingServiceImpl implements ChatingService {

	@Autowired
	private ChatingRoomRepository ch;
	
	@Autowired
	private UserRepository usr;
	
	@Autowired
	private ImgRepository img;
	
	@Autowired
	private FriendRepository fri;
	
	@Autowired
	private FriendChatingRepository fcr;
	
	@Autowired
	private PetRepository pr;
	
	@Autowired
	private LikeItRepository like;
	
	@Autowired
	private CommunityRepository comm;
	
	//채팅방멤버삭제
	public void deleteByRoomMember(ChatingRoomVO vo) {
		ch.deleteByRoomMember(vo.getRoomMember());
	}
	
	//채팅방인원추가
	public void insertRoomMember(ChatingRoomVO vo) {
		ch.save(vo);
	}
	
	//채팅방인원수검색
	public List<ChatingRoomVO> findByRoomNumber(ChatingRoomVO vo){
		return ch.findByRoomNumber(vo.getRoomNumber());
	}
	
	//채팅방수 얻어오기
	public int getRoomCnt() {
		return Integer.parseInt(ch.getRoomCnt().get(0)[0].toString());
	}
	
	//채팅방리스트
	public List<ChatingRoomVO> getAllRooms(UserVO user){
		int page = 1;
		if(user.getPage() != 0) {
			page = user.getPage();
		}
		List<ChatingRoomVO> rList = new ArrayList<ChatingRoomVO>();
		List<Object[]> list = ch.getAllRooms(6*page-6);
		
		for( Object[] o:list) {
			ChatingRoomVO vo = new ChatingRoomVO();
			vo.setRoomName((String)o[0]);
			vo.setRoomNumber((int)o[1]);
			rList.add(vo);
		}
		
		
		return rList;
	}
	
	public List<ChatingRoomVO> getLastRoomNumber(){
		return ch.getLastRoomNumber();
	}
	
	//채팅방번호가 비밀번호랑 일치하면 yes,아니면 no
	public String checkRoomPass(ChatingRoomVO vo){
		String boo = "no";
		if(ch.checkRoomPass(vo.getRoomNumber(),vo.getRoomPass()).size()>0) {
			boo = "yes";
		}
		return boo;
	}
	
	//user 이메일통해 이메지,닉네임 찾기
	public HashMap<String,Object> getChatingRoomUserInfo(UserVO vo) {
		HashMap<String,Object> hm = new HashMap<String,Object>();
		hm.put("niName",usr.findById(vo.getUserEmail()).get().getUserNickname() );
		hm.put("img",img.findByUserEmail(vo.getUserEmail()).get(0).getRealImgName() );
		hm.put("email",vo.getUserEmail());
		return hm;
	}
	
	//채팅방들어온 user 사진,닉네임, email은 HashMap에 담기
	public List<HashMap<String,Object>> getChatingRoomMemberInfo(ChatingRoomVO vo) {
		List<ChatingRoomVO> list = ch.findByRoomNumber(vo.getRoomNumber());
		ArrayList<HashMap<String,Object>> rlist = new ArrayList<HashMap<String,Object>>();
		HashMap<String,Object> hm = new HashMap<String,Object>();
		for(ChatingRoomVO v : list) {
			hm = new HashMap<String,Object>();
			List<ImgVO> l = img.findByUserEmail(v.getRoomMember());
			if (l.size()>0) {
				hm.put("img", l.get(0).getPImgname()); //img
				hm.put("nickName",usr.findById(v.getRoomMember()).get().getUserNickname());//niname
				hm.put("email", v.getRoomMember());
				rlist.add(hm);
			}
			
		}
		return rlist;
	}
	
	public List<ImgVO> getUserImg(String email) {
		return img.findByUserEmail(email);
	}
	
	//user의 id가 비밀번호랑 일치하면 yes,아니면 no
	public String checkLogin(UserVO vo) {
		
		String boo = "no";
		UserVO vv = usr.findById(vo.getUserEmail()).get();
		if(vo.getUserPass().equals(vv.getUserPass())) {
			boo = "yes";
		}
	
		return boo;
	}
	
	public UserVO getUserInfo(String roomMember) {
		return usr.findById(roomMember).get();
	}
	
	public List<ChatingRoomVO> findByRoomNumber(int roomNumber){
		return ch.findByRoomNumber(roomNumber );
	}
	
	public long getRoomMemCnt(int roomNumber) {
		return ch.getRoomMemCnt(roomNumber);
	}
	
	//roomList 페이지에 검색기능
	public List<ChatingRoomVO> roomSearch(ChatingRoomVO vo){
		ArrayList<ChatingRoomVO> list = new ArrayList<ChatingRoomVO>();
		for(Object[] o : ch.roomSearch(vo.getRoomNumber())) {
			ChatingRoomVO v = new ChatingRoomVO();
			v.setRoomName((String)o[2]);
			v.setRoomNumber((int)o[3]);
			list.add(v);
		}
		
		return list;
	}
	
	//친구List 얻어오기
	public List<HashMap<String,Object>> friendList(String email){
		List<FriendVO> list = fri.friendList(email);
		Set<String> emails = new HashSet<String>(); 
		ArrayList<HashMap<String,Object>> rlist = new ArrayList<HashMap<String,Object>>() ;
		HashMap<String,Object> hm ;
		for(FriendVO f : list) {
			emails.add(f.getUser1().getUserEmail());
			emails.add(f.getUser2().getUserEmail());
		}
		emails.remove(email);
		for(String e : emails) {
			UserVO u = new UserVO();
			u.setUserEmail(e);
			List<PetVO> plist = pr.findByUser(u);
			hm = new HashMap<String,Object>();
			hm.put("img", img.findByUserEmail(e).get(0).getRealImgName()); //img
			hm.put("nickName",usr.findById(e).get().getUserNickname());//niname
			hm.put("email", e);
			hm.put("friendNo", fri.getFriendNo(e,email));
			
			if (plist.size()>0) {
				hm.put("petCnt", plist.size());
			}else {
				hm.put("petCnt", 0);
			}
			
			rlist.add(hm);
		}
		return rlist;
	}
	
	//메세지를 db에 저장
	public void insertMessage(HashMap<String,Object> hm) {
		FriendChatingVO vo = new FriendChatingVO();
		vo.setChatingMessage((String)hm.get("chatingMessage"));
		FriendVO fv = new FriendVO();
		fv.setFriendNo(Integer.parseInt((String)hm.get("friendNo")));
		vo.setFriend(fv);
		FriendVO f = fri.findById(Integer.parseInt((String)hm.get("friendNo"))).get();
		vo.setChatingSign("2");
		if (f.getUser1().getUserEmail().equals((String)hm.get("userEmail"))) {
			vo.setChatingSign("1");
		}
		vo.setChatingTime(LocalDateTime.now());
		fcr.save(vo);
	}
	
	//화면 뜨자마자 아니면 친구선택할때에 채팅기록 뜨기
	public List<HashMap<String, Object>> messageHistory(int friendNo){
		List<Object[]> obj = fcr.messageHistory(friendNo);
		FriendVO f = fri.findById(friendNo).get();
		
		List<HashMap<String, Object>> rlist = new ArrayList<HashMap<String, Object>>();
		for(Object[] o :obj) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("message", o[1]);
			hm.put("sign", o[2]);
			hm.put("time", o[3]);
			hm.put("img1", img.findByUserEmail(f.getUser1().getUserEmail()).get(0).getRealImgName());
			hm.put("img2", img.findByUserEmail(f.getUser2().getUserEmail()).get(0).getRealImgName());
			hm.put("user1", f.getUser1().getUserNickname());
			hm.put("user2", f.getUser2().getUserNickname());
			rlist.add(hm);
		}
		
		return rlist ;
	}
	
	//친구차단기능
	public void blackList(FriendVO vo) {
		FriendVO f = fri.findById(vo.getFriendNo()).get();
		f.setUserSign("1");
		fri.save(f);
	}
	
	//1:1채팅 친구 검색
	public List<FriendVO> friendSearch(String str,String str2){
		return fri.friendSearch(str ,str2);
		
	}
	
	public void leaveTime(UserVO vo) {
		UserVO u = usr.findById(vo.getUserEmail()).get();
		u.setChatLeave(LocalDateTime.now());
		usr.save(u);
	}
	
	public List<HashMap<String, Object>> UnreadMessage(UserVO vo){
		List<Object[]> obj = fcr.UnreadMessage(vo.getUserEmail());
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		for(Object[] o : obj) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			hm.put("chatingNo", o[0]);
			hm.put("chatingMessage", o[1]);
			hm.put("chatingSign", o[2]);
			hm.put("chatingTime", o[3]);
			hm.put("friendNo", o[4]);
			hm.put("userSign", o[5]);
			hm.put("userEmail", o[6]);
			hm.put("userEmail1", o[7]);
			list.add(hm);
		}
		return list ;
	}
	
	public void friendRequest(String email1 , String email2) {
		
		FriendVO vo = new FriendVO();
		vo.setUser1(usr.findById(email1).get());
		vo.setUser2(usr.findById(email2).get());
		vo.setUserSign("2");
		fri.save(vo);
	}
	
	//친구요청을 가졌오기
	public List<FriendVO> getFriendRequests(UserVO vo){
		return fri.getFriendRequests(vo.getUserEmail());
	}

	@Override
	public void complet(UserVO vo, String email) {
		System.out.println(vo);
		
		UserVO uvo = new UserVO();
		uvo.setUserEmail(email);
		System.out.println(uvo);
		FriendVO v = fri.findByUser1AndUser2(vo,uvo);
		System.out.println("ㄱㄱㄱ");
		if (vo.getMessage().equals("agree")) {
			v.setUserSign("0");
			fri.save(v);
		}else {
			v.setUserSign("3");
			fri.save(v);
		}
		
	}
	
	
	// 좋아요 제일 많은 개시글 5개
	public List<HashMap<String, Object>> getMostLikeIt(){
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		
		for(Object[] o : like.LikeItRepository()) {
			HashMap<String, Object> hm = new HashMap<String, Object>();
			List<ImgVO> imgs = img.findByCommunity(comm.findById((int)o[0]).get());
			if (imgs.size()>0) {
				ImgVO imgvo = imgs.get(0);
				hm.put("img",imgvo.getRealImgName() );
				hm.put("title",imgvo.getCommunity().getCommunityTitle() );
				hm.put("nickName",imgvo.getCommunity().getUser().getUserNickname() );
				UserVO u = new UserVO();
				u.setUserEmail(imgvo.getCommunity().getUser().getUserEmail());
				hm.put("userImg",img.findByUser(u).get(0).getRealImgName());
				
				list.add(hm);
			}else {
				CommunityVO co = comm.findById((int)o[0]).get();
				hm.put("title",co.getCommunityTitle() );
				hm.put("nickName",co.getUser().getUserNickname() );
				hm.put("userImg",img.findByUser(co.getUser()).get(0).getRealImgName());
				list.add(hm);
			}
		}
		return list;
	}
}
