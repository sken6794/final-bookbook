package site.itwill.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import site.itwill.dto.Book;
import site.itwill.service.BookService;



@Controller
public class BookController {

	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/book", method=RequestMethod.GET)
	public String book(Model model) {
		model.addAttribute("bookList", bookService.getAllBookList());
		return "book/book";
	}
	
	//회원목록을 JSON 텍스트 데이타로 응답하는 요청 처리 메소드
	@RequestMapping("/allBookList")
	@ResponseBody
	public List<Book> restMemberJSONList() {
			return bookService.getAllBookList();
	}
	
	@RequestMapping(value="/bookUpdateLoc", method = RequestMethod.GET)
	@ResponseBody
	public String updateBookLoc(@RequestParam String jsonData) {

		JSONArray array = JSONArray.fromObject(jsonData);
		Map<String, String> paramMap=new HashMap<String, String>();
		 for(int i=0; i<array.size(); i++){
		        //JSONArray 형태의 값을 가져와 JSONObject 로 풀어준다.    
		        JSONObject obj = (JSONObject)array.get(i);
		        paramMap.put("bloc",(String)obj.get("bloc"));
		        paramMap.put("bcode",(String)obj.get("bcode"));
		        bookService.updateBookLoc( paramMap);
		        //System.out.println((String)obj.get("bloc")+" : "+(String)obj.get("bcode"));
		        
		    }
		 return "success";
	}
	
	
	@RequestMapping(value="/bookInsert", method = RequestMethod.GET)
	public String bookInsert() {
		return "book/bookInsert";
	}
	
	@RequestMapping(value="/bookSelect", method = RequestMethod.GET)
	public String bookSelect() {
		return "book/bookSelect";
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/chat", method = RequestMethod.GET)
	public String chat() {
		return "chat/chat";
	}
	
	@RequestMapping(value="/chatRoom", method = RequestMethod.GET)
	public String chatRoom() {
		return "chat/chatRoom";
	}
}
