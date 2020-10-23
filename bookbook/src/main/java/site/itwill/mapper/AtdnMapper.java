package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;

public interface AtdnMapper {
	List<Attendance> selectAtdninout();
	int insertAtdn(Attendance attendance);
	int logoutAtdn(Attendance attendance);
	Attendance selectAtdnOne(int mno);
	
	
	List<AttendanceMember> selectAtdn();
	
	AttendanceMember selectAtdnNum(int mno);
	int updateAtdntrip();
	int updateAtdnover();
	int updateAleaveStatus(AttendanceMember atdnmember);
	
	int insertAttendance(AttendanceMember atdnmember);
	int deleteAttendance(int mno);
	
	
	//Member
	Member selectMemberOne(int mno);
}
