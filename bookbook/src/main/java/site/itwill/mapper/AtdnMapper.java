package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;

public interface AtdnMapper {
	List<AttendanceMember> selectAtdn();
	List<Attendance> selectAtdninout();
	AttendanceMember selectAtdnNum(int mno);
	int insertAtdn(Attendance attendance);
	int updateAtdntrip();
	int updateAtdnover();
	int updateAleaveStatus(AttendanceMember atdnmember);
	int logoutAtdn(Attendance attendance);
	
	//Member
	Member selectMemberOne(int mno);
}
