package site.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.service.AtdnService;
import site.itwill.service.AtdnServiceImpl;

@Controller
public class AtdnController {
	@Autowired
	private AtdnService atdnService;
	
	/*
	@RequestMapping(value = "/atdn_member",method = RequestMethod.GET)
	@ResponseBody
	public String atdnMember(Model model) {
		model.addAttribute("atdn", atdnService.getAtdnList());
		return "atdn/atdn_member";
	}
	*/
	@RequestMapping("/atdnList")
	public String atdnList() {
		return "atdn/atdn_member";
	}
	
	@RequestMapping(value = "/atdn_member",method = RequestMethod.GET)
	@ResponseBody
	public List<AttendanceMember> atdnMember() {
		List<AttendanceMember> atdnList = atdnService.getAtdnList();
		return atdnList;
	}
	
	//휴가 승인하는 메소드
	@RequestMapping(value = "atdn_update/{mno}",method = RequestMethod.PUT)
	@ResponseBody
	public String atdnUpdate(@PathVariable int mno) {
		AttendanceMember atdn= atdnService.getAtdnNum(mno);
		atdn.setAleavestatus(1);
		atdnService.modifyAtdn(atdn);
		
		return "success";
	}
	
	//연장 승인하는 메소드
	@RequestMapping(value = "atdn_update2/{mno}",method = RequestMethod.PUT)
	@ResponseBody
	public String atdnUpdate2(@PathVariable int mno) {
		AttendanceMember atdn= atdnService.getAtdnNum(mno);
		atdn.setAovertimestatus(1);
		atdnService.modifyAtdn(atdn);
		
		return "success";
	}
	
	@RequestMapping("/overtime/{num}")
	public String overtime(@PathVariable int num) {
		
		
		return "atdn/overtime_add";
	}
	
	//출퇴근 조회 페이지
	@RequestMapping("/atdn")
	public String atdn(Model model) {
		
		model.addAttribute("atdninout", atdnService.getAtdnListinout());
		return "atdn/atdn_display";
	}
	
	
	
	@RequestMapping(value = "/overtime/*", method = RequestMethod.POST)
	public String overtimeadd(@RequestParam String aovertime) {
		String a= aovertime;
		/*수정중
		String b= atdnmember.getAstarttime();
		String c= atdnmember.getAendtime();
		String d= atdnmember.getAovertimetext();
		*/
		System.out.println("실행됨");
		System.out.println("a = "+a);
		
		
		return "atdn/overtime_add";
	}
	
	
	
}
