package site.itwill.dto;
/*
 	이름          	널?       유형            
----------- -------- ------------- 
MNO         NOT NULL NUMBER        
MNAME       NOT NULL VARCHAR2(20)  
MPW         NOT NULL VARCHAR2(20)  
MBIRTH               VARCHAR2(20)  
MPHONE               VARCHAR2(20)  
MEMAIL               VARCHAR2(30)  
MADDRESS             VARCHAR2(60)  
MJOINDATE            DATE          
MQUITDATE            DATE          
MQUITREASON          VARCHAR2(20)  
MIMAGE               VARCHAR2(200) 
MSTATE               NUMBER        
MDAYOFF              NUMBER        
DNO                  NUMBER        
PNO                  NUMBER  
*/
public class Member {
	private int mno;
	private String mname;
	private String mpw;
	private String mbirth;
	private String mphone;
	private String memail;
	private String maddress;
	private String mjoindate;
	private String mquitdate;
	private String mquitreason;
	private String mimage;
	private String mstate;
	private String mdayoff;
	private Department department;
	private Position position;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMpw() {
		return mpw;
	}

	public void setMpw(String mpw) {
		this.mpw = mpw;
	}

	public String getMbirth() {
		return mbirth;
	}

	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMaddress() {
		return maddress;
	}

	public void setMaddress(String maddress) {
		this.maddress = maddress;
	}

	public String getMjoindate() {
		return mjoindate;
	}

	public void setMjoindate(String mjoindate) {
		this.mjoindate = mjoindate;
	}

	public String getMquitdate() {
		return mquitdate;
	}

	public void setMquitdate(String mquitdate) {
		this.mquitdate = mquitdate;
	}

	public String getMquitreason() {
		return mquitreason;
	}

	public void setMquitreason(String mquitreason) {
		this.mquitreason = mquitreason;
	}

	public String getMimage() {
		return mimage;
	}

	public void setMimage(String mimage) {
		this.mimage = mimage;
	}

	public String getMstate() {
		return mstate;
	}

	public void setMstate(String mstate) {
		this.mstate = mstate;
	}

	public String getMdayoff() {
		return mdayoff;
	}

	public void setMdayoff(String mdayoff) {
		this.mdayoff = mdayoff;
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
