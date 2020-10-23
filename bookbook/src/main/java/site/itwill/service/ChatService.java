package site.itwill.service;

import java.util.List;

import site.itwill.dto.Chat;
import site.itwill.dto.ChatPerson;
import site.itwill.dto.Member;


public interface ChatService {
	public List<Chat> getAllChatList();
	public List<ChatPerson> getChatMemnerList(String cno);
	public List<Chat> searchRoom(String rname);
	public Chat insertChat(Chat chat, Member member);
}
