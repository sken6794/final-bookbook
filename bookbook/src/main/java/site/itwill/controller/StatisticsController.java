package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.dto.Member;
import site.itwill.service.StatisticsService;

@Controller
public class StatisticsController {
   @Autowired
   StatisticsService statisticsService;
   
   //통계 페이지 출력
   @RequestMapping(value = "/stats", method = RequestMethod.GET)
   public String stats(Model model, HttpSession session) throws Exception {
      Member loginMember=(Member)session.getAttribute("loginMember");
      if(loginMember==null) {
         return "login";
      } else {         
         return "stats/statistics";
      }
   }   
}