package site.itwill.dao;

import java.util.List;
import java.util.Map;

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
	public int insertSchedule(Schedule schedule) {
		return sqlSession.getMapper(ScheduleMapper.class).insertSchedule(schedule);
	}

	@Override
	public int updateSchedule(Schedule schedule) {
		return sqlSession.getMapper(ScheduleMapper.class).updateSchedule(schedule);
	}
	
	@Override
	public int deleteSchedule(int id) {
		return sqlSession.getMapper(ScheduleMapper.class).deleteSchedule(id);
	}

	@Override
	public Schedule selectSchedule(int id) {
		return sqlSession.getMapper(ScheduleMapper.class).selectSchedule(id);
	}

	@Override
	public List<Schedule> selectScheduleList() {
		return sqlSession.getMapper(ScheduleMapper.class).selectScheduleList();
	}
}
