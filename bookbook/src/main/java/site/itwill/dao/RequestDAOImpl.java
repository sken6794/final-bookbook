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
	public int insertRequest(Request request) {
		return sqlSession.getMapper(RequestMapper.class).insertRequest(request);
	}
	
	@Override
	public int updateRequest(Request request) {
		return sqlSession.getMapper(RequestMapper.class).updateRequest(request);
	}
	
	@Override
	public int deleteRequest(int rno) {
		return sqlSession.getMapper(RequestMapper.class).deleteRequest(rno);
	}
	
	@Override
	public List<Request> selectRequestList() {
		return sqlSession.getMapper(RequestMapper.class).selectRequestList();
	}


	@Override
	public Request selectRestRequest(int rno) {
		return sqlSession.getMapper(RequestMapper.class).selectRestRequest(rno);

	}

	@Override
	public List<Request> selectRequest(Request request) {
		return sqlSession.getMapper(RequestMapper.class).selectRequest(request);
	}



}
