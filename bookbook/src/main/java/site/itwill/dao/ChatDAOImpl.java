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

}
