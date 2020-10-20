package site.itwill.dto;
/*
 이름              널?       유형            
--------------- -------- ------------- 
MNO             NOT NULL NUMBER        
ALEAVESTATUS             NUMBER(1)     
AOVERTIMESTATUS          NUMBER(1)     
ALEAVE                   NUMBER(1)     
ABTRIP                   NUMBER(1)     
AOVERTIME                VARCHAR2(255) 
AOVERTIMETEXT            VARCHAR2(255) 
ASTARTTIME               VARCHAR2(20)  
AENDTIME                 VARCHAR2(20)  
 */
public class AttendanceMember {
	private int mno;
	private int aleavestatus;
	private int aovertimestatus; 
	private int aleave;
	private int abtrip;
	private String aovertime; 
	private String aovertimetext;
	private String astarttime;
	private String aendtime;
	private Member member;
	private Department department;
	private Position position;
	
	public AttendanceMember() {
		// TODO Auto-generated constructor stub
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getAleavestatus() {
		return aleavestatus;
	}

	public void setAleavestatus(int aleavestatus) {
		this.aleavestatus = aleavestatus;
	}

	public int getAovertimestatus() {
		return aovertimestatus;
	}

	public void setAovertimestatus(int aovertimestatus) {
		this.aovertimestatus = aovertimestatus;
	}

	public int getAleave() {
		return aleave;
	}

	public void setAleave(int aleave) {
		this.aleave = aleave;
	}

	public int getAbtrip() {
		return abtrip;
	}

	public void setAbtrip(int abtrip) {
		this.abtrip = abtrip;
	}

	public String getAovertime() {
		return aovertime;
	}

	public void setAovertime(String aovertime) {
		this.aovertime = aovertime;
	}

	public String getAovertimetext() {
		return aovertimetext;
	}

	public void setAovertimetext(String aovertimetext) {
		this.aovertimetext = aovertimetext;
	}

	public String getAstarttime() {
		return astarttime;
	}

	public void setAstarttime(String astarttime) {
		this.astarttime = astarttime;
	}

	public String getAendtime() {
		return aendtime;
	}

	public void setAendtime(String aendtime) {
		this.aendtime = aendtime;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Position getPosition() {
		return position;
	}

	public void setPosition(Position position) {
		this.position = position;
	}
	
	
	
	
}
