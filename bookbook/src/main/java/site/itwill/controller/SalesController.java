package site.itwill.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SalesController {

	@RequestMapping(value="/sales", method=RequestMethod.GET)
	public String document() {
		return "sales/sales_chart";
	}

	@RequestMapping(value="/salesList", method=RequestMethod.GET)
	public String documentList() {
		return "sales/sales_list";
	}

}
