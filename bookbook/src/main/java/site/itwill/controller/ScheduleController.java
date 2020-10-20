package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.ScheduleService;

@Controller
public class ScheduleController {
	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendar() {
		return "schedule/schedule";
	}
	
	/*
	@RequestMapping(value = "/schedule", method = RequestMethod.GET)
	public String scheduleList(Model model) {
		model.addAttribute("scheduleList", scheduleService.getScheduleList());
		return "schedule/schedule";
	}
	*/
}
