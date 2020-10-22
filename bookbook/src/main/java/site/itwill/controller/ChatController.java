package site.itwill.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import site.itwill.dto.Chat;
import site.itwill.service.ChatService;

@Controller
public class ChatController {

	
	@Autowired
	private ChatService chatService;
	
	@RequestMapping(value="/chat", method = RequestMethod.GET)
	public String chat(Model model) {
		model.addAttribute("chatList", chatService.getAllChatList());
		return "chat/chat";
	}
	
	
	@RequestMapping(value="/searchRoom")
	@ResponseBody
	public List<Chat> searchRoom(@RequestParam String rname) {
		return chatService.searchRoom(rname);
	}
	
	@RequestMapping(value="/insertChat")
	@ResponseBody
	public int insertChat(@ModelAttribute Chat chat) {
		
		
		
		return chatService.insertChat(chat);
	}
	
	
	@RequestMapping(value="/chatRoom", method = RequestMethod.GET)
	public String chatRoom() {
		return "chat/chatRoom";
	}
	
}
