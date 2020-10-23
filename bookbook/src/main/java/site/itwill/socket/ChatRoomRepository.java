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
		   System.out.println("bookbook ChatRoom init()�޼ҵ� ����");
	        chatRoomMap = new LinkedHashMap<String, ChatRoom>();
		 }
		 */
	    
	    
	    public ChatRoomRepository() {
	    	System.out.println("bookbook ChatRoom init()�޼ҵ� ����");
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
	    	//System.out.println("�� �ȵ����İ�");
	    	// ChatRoom ��ȯ
	    	//  ChatRoom chatRoom = ChatRoom.create(crname, crno, cno);
	    	//System.out.println("chatRoomMap.size()"+chatRoomMap.size());
	    	//System.out.println("�Ű����� ä�ù� ��ȣ : "+id);
	    	//System.out.println("�ʿ��� ���� ä�ù� ��ȣ : "+chatRoomMap.get(id));
	    
	    	
	        return chatRoomMap.get(id);
	    }

	    public ChatRoom createChatRoom(String cno){
	        ChatRoom chatRoom = ChatRoom.create(cno);
	        chatRoomMap.put(chatRoom.getRoomId(), chatRoom);
	        //System.out.println("������ ä�ù� cno = "+chatRoom.getRoomId());
	        return chatRoom;
	    }
}
