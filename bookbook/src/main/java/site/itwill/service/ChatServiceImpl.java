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

@Service
public class ChatServiceImpl implements ChatService{

	@Autowired
	ChatDAO chatDAO;
	
	@Override
	public List<Chat> getAllChatList() {
		// TODO Auto-generated method stub
		return chatDAO.getAllChatList();
	}

	@Override
	public List<Chat> searchRoom(String rname) {
		// TODO Auto-generated method stub
		return chatDAO.searchRoom(rname);
	}

	@Override
	public int insertChat(Chat chat) {
			
		
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
		
		// 임시로 로그인 한 member의 mno
		chat.setCcreator(39);
		
		chatDAO.insertChat(chat);
		//System.out.println("cno : " + chat.getCno());
		
		//Map<String, Integer> map = new HashMap<String, Integer>();
		//map.put("cno", chat.getCno());
		//map.put("cno", chat.getCno());
		
		chatDAO.insertChatPerson(chat);
		return 0;
	}
}
