package site.itwill.dao;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;

public interface AtdnDAO {
	public List<AttendanceMember> selectAtdn();
	AttendanceMember selectAtdnNum(int mno);
	int updateAtdn(AttendanceMember atdnmember);
	int insertAtdn(Attendance Attendance);
	List<Attendance> selectAtdninout();
	int logoutAtdn(Attendance Attendance);
	
	//Member
	Member selectMemberOne(int mno);
}
