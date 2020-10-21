package site.itwill.controller;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import site.itwill.dto.Book;
import site.itwill.service.BookService;



@Controller
public class BookController {

	//WebApplicationContext ��ü(Spring Container)�� �ʵ忡 ������ ó���Ͽ� ����
	@Autowired
	private WebApplicationContext context;
	
	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/book", method=RequestMethod.GET)
	public String book(Model model) {
		model.addAttribute("bookList", bookService.getAllBookList());
		return "book/book";
	}
	

	@RequestMapping("/allBookList")
	@ResponseBody
	public List<Book> selectAllBookList() {
			return bookService.getAllBookList();
	}
	
	@RequestMapping(value="/bookUpdateLoc")
	@ResponseBody
	public String updateBookLoc(@RequestParam String jsonData) {

		JSONArray array = JSONArray.fromObject(jsonData);
		Map<String, String> paramMap=new HashMap<String, String>();
		 for(int i=0; i<array.size(); i++){
		        //JSONArray ������ ���� ������ JSONObject �� Ǯ���ش�.    
		        JSONObject obj = (JSONObject)array.get(i);
		        paramMap.put("bloc",(String)obj.get("bloc"));
		        paramMap.put("bcode",(String)obj.get("bcode"));
		        bookService.updateBookLoc( paramMap);
		        //System.out.println((String)obj.get("bloc")+" : "+(String)obj.get("bcode"));
		        
		    }
		 return "success";
	}
	
	@RequestMapping("/selectBook")
	@ResponseBody
	public Book selectBook(@RequestParam String bookCode) {
			System.out.println(bookCode);
			return bookService.selectBook(bookCode);
	}
	
	
	@RequestMapping(value="/bookInsert", method = RequestMethod.GET)
	public String bookInsert() {
		return "book/bookInsert";
	}
	
	@RequestMapping(value="/bookInsert", method = RequestMethod.POST)
	@ResponseBody
	public String bookInsert(@ModelAttribute Book book) throws IllegalStateException, IOException {
		System.out.println(book.getBname());
		if(book.getFile().isEmpty()) {
			return "upload_fail";
		}
		
		String uploadDir=context.getServletContext().getRealPath("/resources/upload");

		MultipartFile uploadFile = book.getFile();
		
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDir, originalFilename);
	
		String uploadFilename=originalFilename;
		
		//������ �Է������� �̸��� ���� �̸��� ������ ������ ��� ���������� �̸� ����
				int i=0;
				while(file.exists()) {//������ ������ ������ ��� �ݺ� ó��
					i++;
					int index=originalFilename.lastIndexOf(".");
					//�Է������� �̸� �ڿ� "_����"�� �߰��ϸ� �������ϸ����� ���
					uploadFilename=originalFilename.substring(0, index)
							+"_"+i+originalFilename.substring(index);
					file=new File(uploadDir, uploadFilename);
				}

		// ���� ���ε� 
		uploadFile.transferTo(file);
		
		book.setBimage(uploadFilename);
		
		bookService.insertBook(book);
		
		return "success";
	}
	
	
	@RequestMapping(value="/bookSelect", method = RequestMethod.GET)
	public String slectAllBookList(Model model) {
		model.addAttribute("bookList", bookService.selectBookList());
		return "book/bookSelect";
	}
	
	@RequestMapping(value="/selectDynamicBookList", method = RequestMethod.POST)
	public String selectDynamicBookList(@ModelAttribute Book book, Model model) {
	
		model.addAttribute("bookList", bookService.selectDynamicBookList(book));
		return "book/bookSelect";
	}
	
	@RequestMapping(value="/deleteBook/{num}", method = RequestMethod.GET)
	@ResponseBody
	public int deleteBook(@PathVariable int num) {
		int idx = bookService.deleteBook(num);
		return idx;
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
