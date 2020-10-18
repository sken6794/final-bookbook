package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Schedule;

public interface ScheduleDAO {
	List<Schedule> selectScheduleList();
}
