package site.itwill.service;

import java.util.List;

import site.itwill.dto.Schedule;

public interface ScheduleService {
	void addSchedule(Schedule schedule);
	void modifySchedule(Schedule schedule);
	void removeSchedule(int id);
	Schedule getSchedule(int id);
	List<Schedule> getScheduleList();
}
