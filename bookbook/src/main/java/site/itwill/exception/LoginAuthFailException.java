package site.itwill.exception;

//ȸ�� �α��� �� ���� ���� �� �߻��Ǵ� ���� Ŭ����
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private int mno;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(int mno, String message) {
		super(message);
		this.mno = mno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
	
	
}
