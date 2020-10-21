package site.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import site.itwill.dto.Schedule;
import site.itwill.service.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;
	
	//Ķ���� �� �����ִ� �޼ҵ�
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar() {
		return "schedule/schedule";
	}
	
	//����
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	@ResponseBody
	public Schedule Schedule(@RequestParam  int _id) {
		return scheduleService.getSchedule(_id);
	}

	//���� ���
	@RequestMapping(value = "/scheduleList", method = RequestMethod.GET)
	@ResponseBody
	public List<Schedule> ScheduleList() {
		return scheduleService.getScheduleList();
	}
	
	//���� �߰� �޼ҵ�
	@RequestMapping(value = "/scheduleInsert", method = RequestMethod.POST)
	@ResponseBody
	//@RequestBody ������̼��� �̿��Ͽ� JSON������ �Է°��� Java��ü�� ��ȯ�޾� ���� 
	// => �ڹٽ�Ʈ��Ʈ ��ü ��ü�� ����
	public String scheduleInsert(Schedule schedule) {
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getTitle()));
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
		scheduleService.addSchedule(schedule);
		return "success";
	}
	
	//���� ����
	//��û����� �������� method�Ӽ����� {}�ȿ� �����Ͽ� ����
	// => �ٵ� patch(�κк���)�� �ᵵ�� �� - ����� ������ put(��ü����)
	//@RequestMapping(value = "/scheduleUpdate", method = RequestMethod.PATCH)
	@RequestMapping(value = "/scheduleUpdate", method = RequestMethod.PUT)
	@ResponseBody
	//public String scheduleUpdate(@RequestBody Schedule schedule) {
	public String scheduleUpdate(Schedule schedule) {
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getTitle()));
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
		scheduleService.modifySchedule(schedule);
		return "success"; 
	}
	
	/*
	//���� ����
	//��û����� �������� method�Ӽ����� {}�ȿ� ���� => patch(�κк���) / put(��ü����)
	@RequestMapping(value = "/scheduleUpdate", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String scheduleUpdate(Schedule schedule) {
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getTitle()));
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
		scheduleService.modifySchedule(schedule);
		return "success"; 
	}
	*/
	
	//���� ����
	@RequestMapping(value = "/scheduleRemove/{_id}", method = RequestMethod.DELETE)
	@ResponseBody
	public String scheduleRemove(@PathVariable int _id) {
		scheduleService.removeSchedule(_id);
		return"success";
	}
	
	/* ���ް��� �������� �Ǹ� map����� �� - �Ⱦ��Ÿ� ����� >> �Ƹ� �ʿ������^^7
	@RequestMapping(value = "/calendar")
	public String schedule(@RequestParam Map<String, Object> map, Model model) throws Exception {
		model.addAttribute("schedule" , scheduleService.getScheduleList(map));
		return "schedule/schedule";
	}
	*/
}
