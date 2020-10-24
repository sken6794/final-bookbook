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
   
   //���� ��� ���
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
   
   //���� ���� ��� - ���� ��½� ��ȸ�� �߰��ϱ�
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
   
   //�ۼ��ϱ�� �̵�
   @RequestMapping(value = "/write", method = RequestMethod.GET)
   public String write(HttpSession session) throws Exception {
      Member loginMember=(Member)session.getAttribute("loginMember");
      if(loginMember==null || loginMember.getPno()<=3) {
         return "login";
      } else {
         return "notice/notice_write";      
      }
   }
   
   //�ۼ��ϱ�
   @RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
   public String noticeInsert(Notice notice) throws Exception {
      noticeService.addNotice(notice);
      return "redirect:noticeList";
   }
   
   //�����ϱ�� �̵�
   @RequestMapping(value="/modify", method = RequestMethod.GET)
   public String modify(@RequestParam int nno, Model model) throws Exception {
      model.addAttribute("notice", noticeService.getNotice(nno));
      return "notice/notice_modify";
   }
   
   //�����ϱ�
   @RequestMapping(value="/noticeUpdate", method = RequestMethod.POST)
   public String noticeUpdate(Notice notice) throws Exception {
      noticeService.modifyNotice(notice);
      return "redirect:noticeList";
   }
   
   //���� ����
   @RequestMapping(value="/noticeRemove", method=RequestMethod.GET)
   public String noticeDelete(@RequestParam int nno) throws Exception {
      noticeService.removeNotice(nno);
      return "redirect:/noticeList";
   }
   
}