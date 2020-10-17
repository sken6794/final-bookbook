package site.itwill.dto;
/*
이름        널?       유형           
--------- -------- ------------ 
PMNO      NOT NULL NUMBER       
PDATE              DATE         
PBASIC             VARCHAR2(20) 
PMEAL              VARCHAR2(20) 
POVERTIME          VARCHAR2(20) 
PHOLIDAY           VARCHAR2(20) 
PBONUS             VARCHAR2(20) 
PETC               VARCHAR2(20) 
MNO                NUMBER(10)   
DNO                NUMBER       
PNO                NUMBER 
*/
public class PayManage {
	private int pmno;
	private String pdate;
	private String pbasic;
	private String pmeal;
	private String povertime;
	private String pholiday;
	private String pbonus;
	private String petc;
	private Member member;
	private Department department;
	private Position position;
	
	public PayManage() {
		// TODO Auto-generated constructor stub
	}

	public int getPmno() {
		return pmno;
	}

	public void setPmno(int pmno) {
		this.pmno = pmno;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public String getPbasic() {
		return pbasic;
	}

	public void setPbasic(String pbasic) {
		this.pbasic = pbasic;
	}

	public String getPmeal() {
		return pmeal;
	}

	public void setPmeal(String pmeal) {
		this.pmeal = pmeal;
	}

	public String getPovertime() {
		return povertime;
	}

	public void setPovertime(String povertime) {
		this.povertime = povertime;
	}

	public String getPholiday() {
		return pholiday;
	}

	public void setPholiday(String pholiday) {
		this.pholiday = pholiday;
	}

	public String getPbonus() {
		return pbonus;
	}

	public void setPbonus(String pbonus) {
		this.pbonus = pbonus;
	}

	public String getPetc() {
		return petc;
	}

	public void setPetc(String petc) {
		this.petc = petc;
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
