package site.itwill.service;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.UserinfoNotFoundException;

public interface AtdnService {
	List<AttendanceMember> getAtdnList();
	//List<AtdnMember> getAtdnList();
	List<Attendance> getAtdnListinout();
	AttendanceMember getAtdnNum(int mno) throws UserinfoNotFoundException;
	void modifyAtdn(AttendanceMember atdnmember) throws UserinfoNotFoundException;
	void addAttendance(AttendanceMember atdnmember) throws UserinfoNotFoundException;
	void removeAttendance(int mno);
	
	void addAtdn(Attendance attendance);
	void logoutAtdn(Attendance attendance);
	
	Attendance getAtdnOne(int mno);
	
	//Member
	void loginAuth(Member member) throws LoginAuthFailException;
	Member getMember(int mno);
}
