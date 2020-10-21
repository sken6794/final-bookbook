package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Request;
import site.itwill.mapper.RequestMapper;
@Repository
public class RequestDAOImpl implements RequestDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Request> selectRequestList() {
		return sqlSession.getMapper(RequestMapper.class).selectRequestList();
	}

}