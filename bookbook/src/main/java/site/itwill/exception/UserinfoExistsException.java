package site.itwill.exception;

import site.itwill.dto.Member;

//회원등록 시 사용자가 입력한 아이디가 이미 존재할 경우 발생되는 예외클래스
public class UserinfoExistsException extends Exception{
	private static final long serialVersionUID = 1L;
	
	
	private Member member;
	
	public UserinfoExistsException() {
		// TODO Auto-generated constructor stub
	}

	public UserinfoExistsException(Member member, String message) {
		super(message);
		this.member = member;
	}

	

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
