package site.itwill.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import site.itwill.dto.Chat;
import site.itwill.dto.ChatPerson;
import site.itwill.dto.Member;
import site.itwill.service.ChatService;
import site.itwill.socket.ChatRoomRepository;

@Controller
public class ChatController {

	
	@Autowired
	private ChatService chatService;
	
	@Autowired
	private ChatRoomRepository chatRoomRepository;
	
	
	/*
	@PostConstruct
	private void init() {
		//System.out.println("실행되는거지??");
		//chatRoomRepository.getRepository().init();
	}
	*/
	
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
	public Chat insertChat(@ModelAttribute Chat chat, HttpSession session) {
		
	
		Member loginMember =  (Member) session.getAttribute("loginMember");
		chat = chatService.insertChat(chat, loginMember);
		String cno =chat.getCno()+"";
		
		chatRoomRepository.createChatRoom(cno);
		return chat;
	}
	
	
	
	@RequestMapping(value="/enterRoom", method = RequestMethod.GET)
    public String enterRoom(@RequestParam String cno, Model model, HttpSession session){
		
		Member loginMember =  (Member) session.getAttribute("loginMember");
		chatService.insertChatPerson(cno, loginMember);
		List<ChatPerson> list = chatService.getChatMemnerList(cno);
		
		System.out.println( "List Size = "+list.size());
		
		model.addAttribute("mno", loginMember.getMno());
		model.addAttribute("mname", loginMember.getMname());
		//model.addAttribute("list",list);
    	model.addAttribute("cno",cno);
    	
    	
       
        JSONArray mapResult = JSONArray.fromObject(list);
        model.addAttribute("mapResult", mapResult);
  
  
        return "chat/chatRoom";
    }
	
	// 방인원 나감
	@RequestMapping(value="/outRoom", method = RequestMethod.GET)
	public String outRoom(@RequestParam String cno, @RequestParam String mno) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("cno", cno);
		map.put("mno", mno);
		chatService.deleteChatPerson(map);
		return "redirect:/chat";
	}
	
	
	@RequestMapping(value="/chatRoom", method = RequestMethod.GET)
	public String chatRoom() {
		
		
		
		return "chat/chatRoom";
	}
	
}
