package site.itwill.dto;
/*
 이름      널?       유형           
------- -------- ------------ 
ATNO    NOT NULL NUMBER       
MNO     NOT NULL NUMBER       
ALOGIN           VARCHAR2(30) 
ALOGOUT          VARCHAR2(30)
ATIME			 NUMBER
 */
public class Attendance {
	private int atno;
	private int mno;
	private String alogin;
	private String alogout;
	private long atime;
	private Member member;
	
	public Attendance() {
		// TODO Auto-generated constructor stub
	}

	public int getAtno() {
		return atno;
	}

	public void setAtno(int atno) {
		this.atno = atno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getAlogin() {
		return alogin;
	}

	public void setAlogin(String alogin) {
		this.alogin = alogin;
	}

	public String getAlogout() {
		return alogout;
	}

	public void setAlogout(String alogout) {
		this.alogout = alogout;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public long getAtime() {
		return atime;
	}

	public void setAtime(long atime) {
		this.atime = atime;
	}

	
	
	
	
	
	
}
