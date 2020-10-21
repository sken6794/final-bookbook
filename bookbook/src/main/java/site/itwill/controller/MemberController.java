package site.itwill.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Member;
import site.itwill.dto.PayManage;
import site.itwill.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	/*
	 * @RequestMapping(value = "/member", method = RequestMethod.GET) public String
	 * member() { return "member/member"; }
	 */
	
	
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member(Model model) {
		model.addAttribute("memberList", memberService.getMemberList());
		return "member/member";
	}
	
	@RequestMapping(value = "/member_insert", method = RequestMethod.POST)
	@ResponseBody
	public String memberInsert(@RequestBody Member member) {
		memberService.addMember(member);
		return "success";
	}
	
	  @RequestMapping("/member_list") 
	  @ResponseBody 
	  public List<Member> restMemberJSONList() { 
		  return memberService.getMemberList(); 
	  }
	
	
	/*
	 * @RequestMapping("/member_list") public ResponseEntity<List<Member>>
	 * restRequestList() { ResponseEntity<List<Member>> entity=null; try {
	 * //ResponseEntity ��ü ���� �� ��û�� ���� �������� �����ڵ� ���� entity=new
	 * ResponseEntity<List<Member>> (memberService.getMemberList(),HttpStatus.OK); }
	 * catch (Exception e) { //ResponseEntity ��ü ���� �� ��û�� ���� �����ڵ�(�����ڵ�) ����
	 * entity=new ResponseEntity<List<Member>>(HttpStatus.BAD_REQUEST); } return
	 * entity;
	 * 
	 * }
	 */
		
	
	@RequestMapping(value = "/member_delete/{mno}")
	public String memberDelete(@PathVariable int mno) {
		memberService.removeMember(mno);
		return "redirect:/member";
	}
	
	//�����ȣ �ޱ�
	@RequestMapping(value = "/member_view/{mno}", method = RequestMethod.GET)
	@ResponseBody
	public Member restBoardView(@PathVariable int mno) {
		return memberService.getRestMember(mno);
	}
	
	//������� ����
	@RequestMapping(value = "/member_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String restMemberModify(@RequestBody Member member) {
		memberService.modifyMember(member);
		return "success";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
