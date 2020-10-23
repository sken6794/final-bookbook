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
import site.itwill.exception.UserinfoNotFoundException;
import site.itwill.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	//���� ��� ���
	@RequestMapping(value="/noticeList", method=RequestMethod.GET)
	public String notice(Model model) {
		model.addAttribute("noticeList", noticeService.getNoticeList());
		return "notice/notice_list";
	}
	
	//���� ���� ��� - ���� ��½� ��ȸ�� �߰��ϱ�
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(@RequestParam int nno, Model model) {
		model.addAttribute("notice", noticeService.getNotice(nno));
		noticeService.readCount(nno);
		return "notice/notice_detail";
	}
	
	//�ۼ��ϱ�� �̵�
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {
		return "notice/notice_write";		
	}
	
	//�ۼ��ϱ�
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public String noticeInsert(Notice notice) {
		noticeService.addNotice(notice);
		return "redirect:noticeList";
	}
	
	//�����ϱ�� �̵�
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String modify(@RequestParam int nno, Model model) {
		model.addAttribute("notice", noticeService.getNotice(nno));
		return "notice/notice_modify";
	}
	
	//�����ϱ�
	@RequestMapping(value="/noticeUpdate", method = RequestMethod.POST)
	public String noticeUpdate(Notice notice) {
		noticeService.modifyNotice(notice);
		return "redirect:noticeList";
	}
	
	//���� ����
	@RequestMapping(value="/noticeRemove", method=RequestMethod.GET)
	public String noticeDelete(@RequestParam int nno) {
		noticeService.removeNotice(nno);
		return "redirect:/noticeList";
	}
	
}
