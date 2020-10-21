package site.itwill.service;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;

public interface AtdnService {
	List<AttendanceMember> getAtdnList();
	List<Attendance> getAtdnListinout();
	AttendanceMember getAtdnNum(int mno);
	int modifyAtdn(AttendanceMember atdnmember);
	int addAtdn(Member member);
}
