package site.itwill.socket;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;


import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.fasterxml.jackson.databind.ObjectMapper;

public class ChatRoom {
	  	private String roomId;
	    private String name;
	    private Set<WebSocketSession> sessions = new HashSet<WebSocketSession>();

	    public String getRoomId() {
			return roomId;
		}

		public void setRoomId(String roomId) {
			this.roomId = roomId;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}
	

		public Set<WebSocketSession> getSessions() {
			return sessions;
		}

		public void setSessions(Set<WebSocketSession> sessions) {
			this.sessions = sessions;
		}

		public static ChatRoom create(String cno){
	        ChatRoom chatRoom = new ChatRoom();

	        chatRoom.roomId = cno;
	        
	        return chatRoom;
	    }

	    public void handleMessage(WebSocketSession session, ChatMessage chatMessage,
	                              ObjectMapper objectMapper) throws IOException {
	    	System.out.println("∂‰?");
	        if(chatMessage.getType() == MessageType.ENTER){
	            sessions.add(session);
	            chatMessage.setMessage(chatMessage.getWriter() + "¥‘¿Ã ¿‘¿Â«œºÃΩ¿¥œ¥Ÿ.");
	        }
	        else if(chatMessage.getType() == MessageType.LEAVE){
	            sessions.remove(session);
	            chatMessage.setMessage(chatMessage.getWriter() + "¥‘¿Ã ≈¿Â«œºÃΩ¿¥œ¥Ÿ.");
	        }
	        else{
	            chatMessage.setMessage(chatMessage.getWriter() + " : " + chatMessage.getMessage());
	            //chatMessage.setMessage(chatMessage.getWriter() + " : " + chatMessage.getMessage());
	        }
	        send(chatMessage,objectMapper);
	    }

	    private void send(ChatMessage chatMessage, ObjectMapper objectMapper) throws IOException {
	        TextMessage textMessage = new TextMessage(objectMapper.
	                                    writeValueAsString(chatMessage.getMessage()));
	        for(WebSocketSession sess : sessions){
	            sess.sendMessage(textMessage);
	        }
	    }
}
