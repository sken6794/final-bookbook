package site.itwill.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Chat;
import site.itwill.dto.ChatPerson;
import site.itwill.mapper.ChatMapper;

@Repository
public class ChatDAOImpl implements ChatDAO{

	@Autowired
	SqlSession sqlSession;
	

	@Override
	public List<Chat> getAllChatList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).getAllChatList();
	}

	@Override
	public List<ChatPerson> getChatMemnerList(String cno){
		return sqlSession.getMapper(ChatMapper.class).getChatMemnerList(cno);
	}

	@Override
	public List<Chat> searchRoom(String rname) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).searchRoom(rname);
	}

	@Override
	public int insertChat(Chat chat) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).insertChat(chat);
	}
	
	@Override
	public int insertChatPerson(Map<String,String> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).insertChatPerson(map);
	}

	@Override
	public Chat selectChatRoom(Chat chat) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).selectChatRoom(chat);
	}


	/*
	@Override
	public void updateChatSession(ChatPerson chatPerson) {
		// TODO Auto-generated method stub
		sqlSession.getMapper(ChatMapper.class).updateChatSession(chatPerson);
	}
	*/
	
	


}
