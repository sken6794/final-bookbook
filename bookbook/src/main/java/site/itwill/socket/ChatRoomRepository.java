package site.itwill.socket;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

@Component
public class ChatRoomRepository {
		private Map<String, ChatRoom> chatRoomMap;
	    private static ChatRoomRepository _Repository;
	   	
	    /*
	    @PostConstruct
		 public void init(){
		   System.out.println("bookbook ChatRoom init()메소드 실행");
	        chatRoomMap = new LinkedHashMap<String, ChatRoom>();
		 }
		 */
	    
	    
	    public ChatRoomRepository() {
	    	System.out.println("bookbook ChatRoom init()메소드 실행");
	        chatRoomMap = new HashMap<String, ChatRoom>();
		}
	   /*
	   private ChatRoomRepository() {
		// TODO Auto-generated constructor stub
	   }
	   
		static {
			_Repository =  new ChatRoomRepository();
			
		}
		
		public static ChatRoomRepository getRepository() {
			return _Repository;
		}
		*/
		
		
/*
	    public List<ChatRoom> findAllRoom(){
	    	List chatRooms = new ArrayList<ChatRoom>(chatRoomMap.values());
	        Collections.reverse(chatRooms);
	        return chatRooms;
	
	    }
	    */

	    public ChatRoom findRoomById(String id){
	    	//System.out.println("왜 안들어오냐고");
	    	// ChatRoom 반환
	    	//  ChatRoom chatRoom = ChatRoom.create(crname, crno, cno);
	    	//System.out.println("chatRoomMap.size()"+chatRoomMap.size());
	    	//System.out.println("매개변수 채팅방 번호 : "+id);
	    	//System.out.println("맵에서 뽑은 채팅방 번호 : "+chatRoomMap.get(id));
	    
	    	
	        return chatRoomMap.get(id);
	    }

	    public ChatRoom createChatRoom(String cno){
	        ChatRoom chatRoom = ChatRoom.create(cno);
	        chatRoomMap.put(chatRoom.getRoomId(), chatRoom);
	        //System.out.println("생성된 채팅방 cno = "+chatRoom.getRoomId());
	        return chatRoom;
	    }
}
