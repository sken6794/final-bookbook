package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.AtdnMember;
import site.itwill.dto.AttendanceMember;

public interface AtdnMapper {
	public List<AttendanceMember> selectAtdn();
	public int updateAtdntrip();
	public int updateAtdnover();
}
