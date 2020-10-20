package site.itwill.dao;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.AttendanceMember;

public interface AtdnDAO {
	public List<AttendanceMember> selectAtdn();
}
