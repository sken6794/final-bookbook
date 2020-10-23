package site.itwill.dto;
/*
CREATE TABLE NOTICE (
    NNO NUMBER CONSTRAINT NOTICE_NNO_PK PRIMARY KEY,
    NTITLE VARCHAR2(90) NOT NULL,
    NCONTENT VARCHAR2(3000) NOT NULL,
    NDATE DATE DEFAULT SYSDATE,
    NCOUNT NUMBER,
    NORIGIN VARCHAR2(1500),
    NUPLOAD VARCHAR2(1500),
    NCATEGORY VARCHAR2(30) DEFAULT '湲고��',
    NWRITER VARCHAR2(30) NOT NULL,
    NSTATE NUMBER(1) DEFAULT 1,
    MNO NUMBER CONSTRAINT NOTICE_MNO_FK REFERENCES MEMBER(MNO)
);
*/
public class Notice {
	private int nno;
	private String ntitle;
	private String ncontent;
	private String ndate;
	private int ncount;
	private String norigin;
	private String nupload;
	private String ncategory;
	private String nwriter;
	private int nstate;
	private int mno;
	
	private Member member;
	
	public Notice() {
		// TODO Auto-generated constructor stub
	}
	
	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	public String getNdate() {
		return ndate;
	}

	public void setNdate(String ndate) {
		this.ndate = ndate;
	}

	public int getNcount() {
		return ncount;
	}

	public void setNcount(int ncount) {
		this.ncount = ncount;
	}

	public String getNorigin() {
		return norigin;
	}

	public void setNorigin(String norigin) {
		this.norigin = norigin;
	}

	public String getNupload() {
		return nupload;
	}

	public void setNupload(String nupload) {
		this.nupload = nupload;
	}

	public String getNcategory() {
		return ncategory;
	}

	public void setNcategory(String ncategory) {
		this.ncategory = ncategory;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public int getNstate() {
		return nstate;
	}

	public void setNstate(int nstate) {
		this.nstate = nstate;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
}
