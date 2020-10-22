package site.itwill.service;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;

public interface AtdnService {
	List<AttendanceMember> getAtdnList();
	List<Attendance> getAtdnListinout();
	AttendanceMember getAtdnNum(int mno);
	void modifyAtdn(AttendanceMember atdnmember);
	void addAtdn(Member member);
	
	//Member
	void loginAuth(Member member) throws LoginAuthFailException;
	Member getMember(int mno);
}
