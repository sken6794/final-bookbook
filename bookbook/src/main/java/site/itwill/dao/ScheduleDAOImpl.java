package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Schedule;
import site.itwill.mapper.ScheduleMapper;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Schedule> selectScheduleList() {
		return sqlSession.getMapper(ScheduleMapper.class).selectScheduleList();
	}

}