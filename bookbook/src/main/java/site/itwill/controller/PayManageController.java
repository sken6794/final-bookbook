package site.itwill.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
import site.itwill.service.PayManageService;

@Controller
public class PayManageController {
	@Autowired
	private PayManageService payManageService;

	@RequestMapping(value = "/payManage", method = RequestMethod.GET)
	public String payManage(Model model, HttpSession session) {
		model.addAttribute("payList", payManageService.getPayList());
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember==null) {
			return "login";
		} else {
			return "paymanage/payManage";
		}
	}
	
	@RequestMapping("/pay_list")
	@ResponseBody
	public List<PayManage> restMemberJSONList() {
		return payManageService.getPayList();
	}
	
	//삭제
	@RequestMapping(value = "/pay_delete/{pmno}")
	public String payDelete(@PathVariable int pmno) {
		payManageService.removePay(pmno);
		return "redirect:/payManage";
	}
	
	@RequestMapping(value = "/pay_insert", method = RequestMethod.POST)
	@ResponseBody
	public String payInsert(@RequestBody PayManage pay) {
		payManageService.addPay(pay);
		return "success";
	}
	
	//급여번호 받기
	@RequestMapping(value = "/pay_view/{pmno}", method = RequestMethod.GET)
	@ResponseBody
	public PayManage restPayView(@PathVariable int pmno) {
		return payManageService.getRestPay(pmno);
	}
	
	//변경
	@RequestMapping(value = "/pay_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String restPayModify(@RequestBody PayManage pay) {
		payManageService.modifyRestPay(pay);
		return "success";
	}
	
	
	@RequestMapping(value = "/pay_search", method = RequestMethod.POST)
	@ResponseBody
	public List<PayManage> paymanage(@RequestBody PayManage pay) {
		return payManageService.getPay(pay);
	}	
	
}
