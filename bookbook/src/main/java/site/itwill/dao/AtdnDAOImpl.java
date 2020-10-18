package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.AttendanceMember;
import site.itwill.mapper.AtdnMapper;
@Repository
public class AtdnDAOImpl implements AtdnDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AttendanceMember> selectAtdn() {
		
		return sqlSession.getMapper(AtdnMapper.class).selectAtdn();
	}

}
