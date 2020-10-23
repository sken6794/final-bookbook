package site.itwill.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.dto.Attendance;
import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.service.AtdnService;

@Controller
public class LoginController {
	@Autowired
	private AtdnService atdnService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute Member member,HttpSession session) throws LoginAuthFailException {
		atdnService.loginAuth(member);
		
		//시간
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd HH:mm");
		String loginTime = format.format(System.currentTimeMillis());
		//System.out.println("현재 시간 = "+loginTime);
		
		Attendance attendance = new Attendance();
		attendance.setMno(member.getMno());
		attendance.setAlogin(loginTime);
		atdnService.addAtdn(attendance);
		session.setAttribute("loginMember", atdnService.getMember(member.getMno()));
		return "redirect:/";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws ParseException {
		Member member = (Member)session.getAttribute("loginMember");
		
		//시간
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd HH:mm");
		String logoutTime = format.format(System.currentTimeMillis());
		
		String loginTime = atdnService.getAtdnOne(member.getMno()).getAlogin();
		
		Date outT= format.parse(logoutTime);
		Date inT= format.parse(loginTime);
		
		long calTime = outT.getTime()-inT.getTime();
		long calTimes = calTime/(60*60*1000);
		calTimes = Math.abs(calTimes);
		System.out.println("계산 시간 = "+calTimes);
		
		Attendance attendance = new Attendance();
		attendance.setMno(member.getMno());
		attendance.setAlogout(logoutTime);
		attendance.setAtime(calTimes);
		atdnService.logoutAtdn(attendance);
		session.invalidate();
		return "redirect:/login";
	}
}
