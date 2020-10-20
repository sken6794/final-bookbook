package site.itwill.service;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.AttendanceMember;

public interface AtdnService {
	public List<AttendanceMember> getAtdnList();
}
