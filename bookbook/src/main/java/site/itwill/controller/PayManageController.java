package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.PayManageService;
@Controller
public class PayManageController {
	@Autowired
	private PayManageService payManageService;
	
	@RequestMapping(value = "/payManage", method = RequestMethod.GET)
	public String payManage(Model model) {
		model.addAttribute("payList", payManageService.getPayList());
		return "paymanage/payManage";
	}
	
}
