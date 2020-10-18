package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.ScheduleDAO;
import site.itwill.dto.Schedule;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Autowired
	private ScheduleDAO scheduleDAO;

	@Override
	public List<Schedule> getScheduleList() {
		return scheduleDAO.selectScheduleList();
	}
}
