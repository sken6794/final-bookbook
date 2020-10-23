package site.itwill.socket.handler;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;


import site.itwill.socket.ChatMessage;
import site.itwill.socket.ChatRoom;
import site.itwill.socket.ChatRoomRepository;

import java.util.ArrayList;
import java.util.List;




@Component
public class WebSocketHandler extends TextWebSocketHandler {
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();

	private  ObjectMapper objectMapper;
	
	/*
	@Autowired
	ChatDAO chatDAO;
	*/
	
	@Autowired
	private  ChatRoomRepository chatRoomRepository;
	
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

    	objectMapper=new ObjectMapper();

        String msg = message.getPayload();

        System.out.println("session : "  + session);
        System.out.println(session.getId());
        System.out.println("msg : "  + msg);
      
        ChatMessage chatMessage = objectMapper.readValue(msg,ChatMessage.class);
        
        ChatRoom chatRoom = chatRoomRepository.findRoomById(chatMessage.getChatRoomId());
        
 
        if(chatRoom!=null) {
        	 System.out.println("»ý¼ºµÈ cno = " + chatRoom.getRoomId());
             
        }else {
        	System.out.println("null");
        }
        
        
        //ChatRoom chatRoom= new ChatRoom();
       
        chatRoom.handleMessage(session,chatMessage,objectMapper);

    }

}
