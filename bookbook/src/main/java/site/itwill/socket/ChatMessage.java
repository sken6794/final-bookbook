package site.itwill.socket;


public class ChatMessage {
	 	private String chatRoomId;
	    private String writer;
	    private String message;
	    private String member;
	    private MessageType type;
	    
	    public ChatMessage() {
			// TODO Auto-generated constructor stub
		}

	    
	    
		public String getMember() {
			return member;
		}



		public void setMember(String member) {
			this.member = member;
		}



		public String getChatRoomId() {
			return chatRoomId;
		}

		public void setChatRoomId(String chatRoomId) {
			this.chatRoomId = chatRoomId;
		}

		public String getWriter() {
			return writer;
		}

		public void setWriter(String writer) {
			this.writer = writer;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

		public MessageType getType() {
			return type;
		}

		public void setType(MessageType type) {
			this.type = type;
		}
	    
	    
}
