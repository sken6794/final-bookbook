package site.itwill.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	/*
	@RequestMapping(value="/chat", method = RequestMethod.POST)
	public String chat() {
		return "chat/chat";
	}
	*/
	
	
	
	@RequestMapping(value="/chatRoom", method = RequestMethod.GET)
	public String chatRoom() {
		return "chat/chatRoom";
	}
	
}
