package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import site.itwill.service.AtdnService;

@Controller
public class AtdnController {
	@Autowired
	private AtdnService atdnService;
	
	@RequestMapping("/atdn_member")
	public String atdnMember(Model model) {
		model.addAttribute("atdn", atdnService.getAtdnList());
		return "atdn/atdn_member";
	}
	
	@RequestMapping("atdn_update/{mno}")
	public String atdnUpdate(@PathVariable int mno, Model model) {
		return "redirect:/atdn_member";
	}
	
	@RequestMapping("/overtime/{num}")
	public String overtime(@PathVariable int num) {
		
		
		return "atdn/overtime_add";
	}
	
	@RequestMapping("/atdn")
	public String atdn() {
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
