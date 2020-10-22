package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Chat;
import site.itwill.mapper.ChatMapper;

@Repository
public class ChatDAOImpl implements ChatDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<Chat> getAllChatList() {
		return sqlSession.getMapper(ChatMapper.class).getAllChatList();
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
	public int insertChatPerson(Chat chat) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ChatMapper.class).insertChatPerson(chat);
	}


}
