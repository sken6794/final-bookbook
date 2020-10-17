package site.itwill.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class DocumentController {

	@RequestMapping(value="/document", method=RequestMethod.GET)
	public String document() {
		return "document/doc_approval";
	}

	
}
