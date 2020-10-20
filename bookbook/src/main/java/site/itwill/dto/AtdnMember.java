package site.itwill.dto;

public class AtdnMember {
	private AttendanceMember atdnmem;
	private Member member;
	private Department department;
	private Position position;
	
	public AtdnMember() {
		// TODO Auto-generated constructor stub
	}

	

	public AttendanceMember getAtdnmem() {
		return atdnmem;
	}



	public void setAtdnmem(AttendanceMember atdnmem) {
		this.atdnmem = atdnmem;
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
