package site.itwill.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import site.itwill.dao.ChatDAO;
import site.itwill.dto.Chat;
import site.itwill.dto.ChatPerson;
import site.itwill.dto.Member;
import site.itwill.socket.ChatRoomRepository;

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	ChatDAO chatDAO;
	
	private ChatRoomRepository chatRoomRepository;
	
	
	@Override
	public List<Chat> getAllChatList() {
		// TODO Auto-generated method stub
		return  chatDAO.getAllChatList();
	}
	
	@Override
	public List<ChatPerson> getChatMemnerList(String cno){
		// TODO Auto-generated method stub
		return chatDAO.getChatMemnerList(cno);
	}

	@Override
	public List<Chat> searchRoom(String rname) {
		// TODO Auto-generated method stub
		return chatDAO.searchRoom(rname);
	}

	@Override
	public Chat insertChat(Chat chat, Member member) {

		String croomno = System.currentTimeMillis()+"";
		SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
		Date today = new Date();
		String cdate = sdf.format(today);
	
		// 방 비밀번호 없을 시
		if(!chat.getCpw().isEmpty()) {
			chat.setCsecret(1);
		}else {
			chat.setCsecret(0);
		}
		// 방 고유값 추가
		chat.setCroomno(croomno);
		// 오늘날짜 추가
		chat.setCdate(cdate);
		//로그인 한 member의 mno
		chat.setCcreator(member.getMno());
		
		// 채팅 방 정보 넣기
		chatDAO.insertChat(chat);
		
		//System.out.println("cno : " + chat.getCno());
		//System.out.println("creator : " + chat.getCcreator());

		//Map<String, String> map = new HashMap<String, String>();
		//map.put("cno",chat.getCno()+"");
		//map.put("ccreator", chat.getCcreator()+"");
		// 채팅 관련 인원 넣기
		//chatDAO.insertChatPerson(map);
		//insertChatPerson(chat.getCno()+"", member);
		
		return chat;
	}

	@Override
	public void insertChatPerson(String cno, Member member) {
		// TODO Auto-generated method stub

		Map<String, String> map = new HashMap<String, String>();
		map.put("cno",cno);
		map.put("ccreator", member.getMno()+"");
		chatDAO.insertChatPerson(map);
		
	}

	@Override
	public void deleteChatPerson(Map<String, String> map) {
		// TODO Auto-generated method stub
		
		chatDAO.deleteChatPerson(map);
	}

	
}
