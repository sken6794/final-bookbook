package site.itwill.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		session.setAttribute("loginMember", atdnService.getMember(member.getMno()));
		return "redirect:/";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
}
