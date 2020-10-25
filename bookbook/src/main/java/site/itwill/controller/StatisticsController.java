package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.StatisticsService;

@Controller
public class StatisticsController {
   @Autowired
   StatisticsService statisticsService;
   
   //통계 페이지 출력
   @RequestMapping(value = "/stats", method = RequestMethod.GET)
   public String stats(Model model) throws Exception {
         return "stats/statistics";
   }   
}