package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;
import site.itwill.exception.UserinfoNotFoundException;
import site.itwill.service.AtdnService;

@Controller
public class AtdnController {
	@Autowired
	private AtdnService atdnService;
	
	//�ٹ� ��û ��ȸ
	@RequestMapping(value = "/atdn_member",method = RequestMethod.GET)

	public String atdnMember(Model model) {
		model.addAttribute("atdn", atdnService.getAtdnList());
		return "atdn/atdn_member";
	}
	
	
	
	
	
	
	//�ް� �����ϴ� �޼ҵ�
	@RequestMapping(value = "atdn_update/{mno}",method = RequestMethod.PUT)
	@ResponseBody
	public String atdnUpdate(@PathVariable int mno) throws UserinfoNotFoundException {
		AttendanceMember atdn= atdnService.getAtdnNum(mno);
		atdn.setAleavestatus(1);
		atdnService.modifyAtdn(atdn);
		
		return "success";
	}
	
	//���� �����ϴ� �޼ҵ�
	@RequestMapping(value = "atdn_update2/{mno}",method = RequestMethod.PUT)
	@ResponseBody
	public String atdnUpdate2(@PathVariable int mno) throws UserinfoNotFoundException {
		AttendanceMember atdn= atdnService.getAtdnNum(mno);
		atdn.setAovertimestatus(1);
		atdnService.modifyAtdn(atdn);
		
		return "success";
	}
	
	//����
	@RequestMapping(value = "atdndelete/{mno}",method = RequestMethod.PUT)
	@ResponseBody
	public String deleteAtdn(@PathVariable int mno) {
		
		atdnService.removeAttendance(mno);
		
		return "success";
	}
	
	//��û ��ư ������ ������ �̵�
	@RequestMapping("/overtime")
	public String overtime() {
		
		
		return "atdn/overtime_add";
	}
	//���� ���� ��
	@RequestMapping(value = "/addOvertime",method = RequestMethod.POST)
	public String addOvertime(@ModelAttribute AttendanceMember atdnmember, HttpSession session) throws UserinfoNotFoundException {
		AttendanceMember atdn = new AttendanceMember();
		Member member = (Member)session.getAttribute("loginMember");
		atdn.setMno(member.getMno());
		atdn.setAovertime(atdnmember.getAovertime());
		atdn.setAovertimetext(atdnmember.getAovertimetext());
		if(atdnmember.getAstartdate()==null || atdnmember.getAstartdate()=="") {
			atdn.setAstartdate("");
		} else {
			atdn.setAstartdate(atdnmember.getAstartdate());
		}
		
		if(atdnmember.getAenddate()==null || atdnmember.getAenddate()=="") {
			atdn.setAenddate("");
		} else {
			atdn.setAenddate(atdnmember.getAenddate());
		}
		
		if(atdnmember.getAstarttime()==null || atdnmember.getAstarttime()=="") {
			atdn.setAstarttime("");
		} else {
			atdn.setAstarttime(atdnmember.getAstarttime());
		}
		
		if(atdnmember.getAendtime()==null || atdnmember.getAendtime()=="") {
			atdn.setAendtime("");
		} else {
			atdn.setAendtime(atdnmember.getAendtime());
		}
				atdnService.addAttendance(atdn);
		
		return "redirect:/atdn_member";
	}
	
	//����� ��ȸ ������
	@RequestMapping("/atdn")
	public String atdn(Model model) {
		
		model.addAttribute("atdninout", atdnService.getAtdnListinout());
		return "atdn/atdn_display";
	}
	
	
	
	
	
	
	
}
