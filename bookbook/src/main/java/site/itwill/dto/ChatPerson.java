package site.itwill.dto;

/*
 	CPNO NUMBER CONSTRAINT CHAT_PERSON_CPNO_PK PRIMARY KEY,
    MNO NUMBER CONSTRAINT CHAT_PERSON_MNO_FK REFERENCES MEMBER(MNO),
    CNO NUMBER CONSTRAINT CHAT_PERSON_CNO_FK REFERENCES CHAT(CNO)
 */
public class ChatPerson {
	private int cpno;
	private Chat chat;
	private Member member;
	
	
	
	 public ChatPerson() {
		// TODO Auto-generated constructor stub
	}

	public int getCpno() {
		return cpno;
	}

	public void setCpno(int cpno) {
		this.cpno = cpno;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Chat getChat() {
		return chat;
	}

	public void setChat(Chat chat) {
		this.chat = chat;
	}

}
