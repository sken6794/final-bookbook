package site.itwill.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Order;
import site.itwill.dto.Request;
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
	
	@RequestMapping("/request_list")
	public ResponseEntity<List<Request>> restRequestList() {
		ResponseEntity<List<Request>> entity=null;
		try {
			//ResponseEntity 객체 생성 시 요청에 대한 응답결과와 응답코드 저장
			entity=new ResponseEntity<List<Request>>
			(requestService.getRequestList(),HttpStatus.OK);
		} catch (Exception e) {
			//ResponseEntity 객체 생성 시 요청에 대한 응답코드(에러코드) 저장
			entity=new ResponseEntity<List<Request>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/add_request", method = RequestMethod.GET)
	public String addRequest() {
		return "request/add_request";
	}
	
	@RequestMapping(value="/add_request", method = RequestMethod.POST)
	public String addRequest(@ModelAttribute("request") Request request) {
		
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy/MM/dd");
		String rdate=sdf.format(date);
		request.setRdate(rdate);
		
		System.out.println("rno ="+request.getRno());
		System.out.println("rdate ="+request.getRdate());
		System.out.println("rstaff ="+request.getRstaff());
		System.out.println("rqty ="+request.getRqty());
		System.out.println("rprice ="+request.getRprice());
		System.out.println("rstate ="+request.getRstate());
		System.out.println("bcode ="+request.getBcode());

		requestService.addRequest(request);
		
		return "redirect:/add_request";		
	}
	
	@RequestMapping(value = "/request_delete/{rno}")
	public String requestDelete(@PathVariable int rno) {
		requestService.removeRequest(rno);
		return "redirect:/request";
	}
}
