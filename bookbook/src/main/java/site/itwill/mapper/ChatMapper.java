package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Chat;
import site.itwill.dto.ChatPerson;


public interface ChatMapper {
	public List<Chat> getAllChatList();
	public List<ChatPerson> getChatMemnerList(String cno);
	public List<Chat> searchRoom(String rname);
	public int insertChat(Chat chat);
	public int insertChatPerson(Map<String,String> map);
	public Chat selectChatRoom(Chat chat);
	//public void updateChatSession(ChatPerson chatPerson);
	public void deleteChatPerson(Map<String,String> map);
}
