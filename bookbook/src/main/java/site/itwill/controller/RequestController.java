package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import site.itwill.service.RequestService;
@Controller
public class RequestController {
	@Autowired
	private RequestService requestService;
	
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public String request(Model model) {
		model.addAttribute("requestList", requestService.getRequestList());
		return "request/request";
	}
	
	@RequestMapping(value="/addRequest", method = RequestMethod.GET)
	public String addRequest() {
		return "request/addRequest";
	}
}
