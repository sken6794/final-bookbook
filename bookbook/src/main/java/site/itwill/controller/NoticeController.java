package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.itwill.dto.Member;
import site.itwill.dto.Notice;
import site.itwill.service.NoticeService;

@Controller
public class NoticeController {
   @Autowired
   private NoticeService noticeService;
   
   //공지 목록 출력
   @RequestMapping(value="/noticeList", method=RequestMethod.GET)
   public String notice(Model model, HttpSession session) throws Exception {
      model.addAttribute("noticeList", noticeService.getNoticeList());
      Member loginMember=(Member)session.getAttribute("loginMember");
      if(loginMember==null) {
         return "login";
      } else {         
         return "notice/notice_list";
      }
   }
   
   //공지 내용 출력 - 내용 출력시 조회수 추가하기
   @RequestMapping(value="/notice", method=RequestMethod.GET)
   public String notice(@RequestParam int nno, Model model, HttpSession session) throws Exception {
      model.addAttribute("notice", noticeService.getNotice(nno));
      noticeService.readCount(nno);
      Member loginMember=(Member)session.getAttribute("loginMember");
      if(loginMember==null) {
         return "login";
      } else {
         return "notice/notice_detail";
      }
   }
   
   //작성하기로 이동
   @RequestMapping(value = "/write", method = RequestMethod.GET)
   public String write(HttpSession session) throws Exception {
      Member loginMember=(Member)session.getAttribute("loginMember");
      if(loginMember==null || loginMember.getPno()<=3) {
         return "login";
      } else {
         return "notice/notice_write";      
      }
   }
   
   //작성하기
   @RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
   public String noticeInsert(Notice notice) throws Exception {
      noticeService.addNotice(notice);
      return "redirect:noticeList";
   }
   
   //수정하기로 이동
   @RequestMapping(value="/modify", method = RequestMethod.GET)
   public String modify(@RequestParam int nno, Model model) throws Exception {
      model.addAttribute("notice", noticeService.getNotice(nno));
      return "notice/notice_modify";
   }
   
   //수정하기
   @RequestMapping(value="/noticeUpdate", method = RequestMethod.POST)
   public String noticeUpdate(Notice notice) throws Exception {
      noticeService.modifyNotice(notice);
      return "redirect:noticeList";
   }
   
   //공지 삭제
   @RequestMapping(value="/noticeRemove", method=RequestMethod.GET)
   public String noticeDelete(@RequestParam int nno) throws Exception {
      noticeService.removeNotice(nno);
      return "redirect:/noticeList";
   }
   
}