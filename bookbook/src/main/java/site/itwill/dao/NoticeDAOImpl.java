package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Notice;
import site.itwill.mapper.NoticeMapper;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}

	@Override
	public int updateNotice(Notice notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}
	
	@Override
	public int countUp(int nno) {
		return sqlSession.getMapper(NoticeMapper.class).countUp(nno);
	}
	
	@Override
	public int deleteNotice(int nno) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(nno);

	}

	@Override
	public Notice selectNotice(int nno) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(nno);
	}

	@Override
	public List<Notice> selectNoticeList() {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList();
	}

	

}
