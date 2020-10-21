package site.itwill.mapper;

import java.util.List;
import java.util.Map;

import site.itwill.dto.Schedule;

public interface ScheduleMapper {
	int insertSchedule(Schedule schedule);
	int updateSchedule(Schedule schedule);
	int deleteSchedule(int _id);
	Schedule selectSchedule(int _id);
	List<Schedule> selectScheduleList();
	//List<Schedule> selectScheduleList(Map<String, Object> map);
	//map����ؾ��ϳ���....??? (�� 2�� �̻� ���޵� ��...�ϱ� �Ƚᵵ�����ʳ�...?)
}
