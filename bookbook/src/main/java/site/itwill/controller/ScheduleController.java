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
   public Schedule Schedule(@RequestParam  int id) throws Exception {
      return scheduleService.getSchedule(id);
   }

   //일정 목록
   @RequestMapping(value = "/scheduleList", method = RequestMethod.GET)
   @ResponseBody
   public List<Schedule> ScheduleList() throws Exception {
      return scheduleService.getScheduleList();
   }
   
   //일정 추가 메소드
   @RequestMapping(value = "/scheduleInsert", method = RequestMethod.POST)
   @ResponseBody
   public String scheduleInsert(Schedule schedule) throws Exception {
      schedule.setTitle(HtmlUtils.htmlEscape(schedule.getTitle()));
      schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
      scheduleService.addSchedule(schedule);
      return "success";
   }
   
   //일정 변경
   @RequestMapping(value = "/scheduleUpdate", method = RequestMethod.POST)
   @ResponseBody
   public String scheduleUpdate(Schedule schedule) throws Exception {
      schedule.setTitle(HtmlUtils.htmlEscape(schedule.getTitle()));
      schedule.setDescription(HtmlUtils.htmlEscape(schedule.getDescription()));
      scheduleService.modifySchedule(schedule);
      return "success"; 
   }

   //일정 삭제
   @RequestMapping(value = "/scheduleRemove")
   @ResponseBody
   public String scheduleRemove(@RequestParam int id) throws Exception {
      System.out.println(id);
      scheduleService.removeSchedule(id);
      return "schedule/schedule";
   }
}