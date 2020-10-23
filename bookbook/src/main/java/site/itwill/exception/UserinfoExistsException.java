package site.itwill.exception;

import site.itwill.dto.Member;

//ȸ����� �� ����ڰ� �Է��� ���̵� �̹� ������ ��� �߻��Ǵ� ����Ŭ����
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
