package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Chat;

public interface ChatMapper {
	public List<Chat> getAllChatList();
	public List<Chat> searchRoom(String rname);
	public int insertChat(Chat chat);
	public int insertChatPerson(Chat chat);
}
