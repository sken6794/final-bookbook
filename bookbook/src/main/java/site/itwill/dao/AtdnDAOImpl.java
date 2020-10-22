package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;
import site.itwill.mapper.AtdnMapper;
@Repository
public class AtdnDAOImpl implements AtdnDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<AttendanceMember> selectAtdn() {
		
		return sqlSession.getMapper(AtdnMapper.class).selectAtdn();
	}

	@Override
	public AttendanceMember selectAtdnNum(int mno) {
		return sqlSession.getMapper(AtdnMapper.class).selectAtdnNum(mno);
	}

	@Override
	public int updateAtdn(AttendanceMember atdnmember) {
		
		return sqlSession.getMapper(AtdnMapper.class).updateAleaveStatus(atdnmember);
	}

	@Override
	public int insertAtdn(Attendance attendance) {
		
		return sqlSession.getMapper(AtdnMapper.class).insertAtdn(attendance);
	}

	@Override
	public List<Attendance> selectAtdninout() {
		
		return sqlSession.getMapper(AtdnMapper.class).selectAtdninout();
	}

	@Override
	public Member selectMemberOne(int mno) {
		
		return sqlSession.getMapper(AtdnMapper.class).selectMemberOne(mno);
	}

	@Override
	public int logoutAtdn(Attendance attendance) {
		
		return sqlSession.getMapper(AtdnMapper.class).logoutAtdn(attendance);
	}

}
