package site.itwill.dao;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Schedule;

public interface ScheduleDAO {
	int insertSchedule(Schedule schedule);
	int updateSchedule(Schedule schedule);
	int deleteSchedule(int id);
	Schedule selectSchedule(int id);
	List<Schedule> selectScheduleList();
}
