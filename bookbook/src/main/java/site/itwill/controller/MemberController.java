package site.itwill.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dao.MemberDAO;
import site.itwill.dto.Book;
import site.itwill.dto.Member;
import site.itwill.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member(Model model) {
		model.addAttribute("memberList", memberService.getMemberList());
		return "member/member";
	}
	
	@RequestMapping("/member_list")
	@ResponseBody
	public List<Member> restMemberJSONList() {
			return memberService.getMemberList();
	}
	
	@RequestMapping(value = "/member_delete/{mno}")
	public String memberDelete(@PathVariable int mno) {
		memberService.removeMember(mno);
		return "redirect:/member";
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
