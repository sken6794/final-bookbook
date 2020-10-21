package site.itwill.service;

import java.util.List;

import site.itwill.dto.Schedule;

public interface ScheduleService {
	void addSchedule(Schedule schedule);
	void modifySchedule(Schedule schedule);
	void removeSchedule(int _id);
	Schedule getSchedule(int _id);
	List<Schedule> getScheduleList();
}
