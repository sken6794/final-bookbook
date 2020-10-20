package site.itwill.dto;

/*
이름     널?       유형     
------ -------- ------ 
STOTAL NOT NULL NUMBER 
SDATE           DATE   
BCODE           NUMBER 
이름       널?       유형             
-------- -------- -------------- 
DOCNO    NOT NULL NUMBER         
DOCNAME  NOT NULL VARCHAR2(50)   
DOCCON   NOT NULL VARCHAR2(4000) 
DOCSTATE NOT NULL NUMBER         
DOCAPRV           NUMBER         
DOCDATE           DATE           
DOCCOMP           DATE           
REJECT            VARCHAR2(1000) 
MNO               NUMBER         
DNO               NUMBER         
 */

public class Document {
	private int docno;
	private String docname;
	private String doccon;
	private int docstate;
	private int docaprv;
	private String docdate;
	private String doccomp;
	private String reject;
	private Member member;
	private Department department;


	public Document() {
		// TODO Auto-generated constructor stub
	}

	public int getDocno() {
		return docno;
	}

	public void setDocno(int docno) {
		this.docno = docno;
	}

	public String getDocname() {
		return docname;
	}

	public void setDocname(String docname) {
		this.docname = docname;
	}

	public String getDoccon() {
		return doccon;
	}

	public void setDoccon(String doccon) {
		this.doccon = doccon;
	}

	public int getDocstate() {
		return docstate;
	}

	public void setDocstate(int docstate) {
		this.docstate = docstate;
	}

	public int getDocaprv() {
		return docaprv;
	}

	public void setDocaprv(int docaprv) {
		this.docaprv = docaprv;
	}

	public String getDocdate() {
		return docdate;
	}

	public void setDocdate(String docdate) {
		this.docdate = docdate;
	}

	public String getDoccomp() {
		return doccomp;
	}

	public void setDoccomp(String doccomp) {
		this.doccomp = doccomp;
	}

	public String getReject() {
		return reject;
	}

	public void setReject(String reject) {
		this.reject = reject;
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

}
