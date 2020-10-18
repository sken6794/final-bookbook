package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Member;
import site.itwill.mapper.MemberMapper;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();
	}
	
	


}
