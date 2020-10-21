package site.itwill.service;

import java.util.List;

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

}
