package site.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	//캘린더 뷰 보여주는 메소드
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar() {
		return "schedule/schedule";
	}
	
	//일정
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	@ResponseBody
	public Schedule Schedule(@RequestParam  int id) {
		return scheduleService.getSchedule(id);
	}

	//일정 목록
	@RequestMapping(value = "/scheduleList", method = RequestMethod.GET)
	@ResponseBody
	public List<Schedule> ScheduleList() {
		return scheduleService.getScheduleList();
	}
	
	//일정 추가 메소드
	@RequestMapping(value = "/scheduleInsert", method = RequestMethod.POST)
	@ResponseBody
	//@RequestBody 어노테이션을 이용하여 JSON형태의 입력값을 Java객체로 변환받아 저장 
	// => 자바스트립트 객체 자체로 전달
	public String scheduleInsert(Schedule schedule) {
		schedule.setTitle(HtmlUtils.htmlEscape(schedule.getTitle()));
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
		scheduleService.addSchedule(schedule);
		return "success";
	}
	
	//일정 변경
	//요청방식이 여러개면 method속성값을 {}안에 나열하여 선언
	// => 근데 patch(부분변경)만 써도될 듯 - 비슷한 유형은 put(전체변경)
	//@RequestMapping(value = "/scheduleUpdate", method = RequestMethod.PATCH)
	@RequestMapping(value = "/scheduleUpdate", method = RequestMethod.POST)
	@ResponseBody
	//public String scheduleUpdate(@RequestBody Schedule schedule) {
	public String scheduleUpdate(Schedule schedule) {
		schedule.setTitle(HtmlUtils.htmlEscape(schedule.getTitle()));
		schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
		scheduleService.modifySchedule(schedule);
		return "success"; 
	}

	//일정 삭제
	//@RequestMapping(value = "/scheduleRemove", method = RequestMethod.DELETE)
	@RequestMapping(value = "/scheduleRemove")
	@ResponseBody
	public String scheduleRemove(@RequestParam int id) {
		System.out.println(id);
		scheduleService.removeSchedule(id);
		return "schedule/schedule";
	}
}
