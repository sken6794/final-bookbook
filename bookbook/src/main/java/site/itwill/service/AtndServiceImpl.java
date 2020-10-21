package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.AtdnDAO;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;

@Service
public class AtndServiceImpl implements AtdnService{
	@Autowired
	private AtdnDAO atdnDAO;
	
	@Override
	public List<AttendanceMember> getAtdnList() {
		
		return atdnDAO.selectAtdn();
	}

	@Override
	public AttendanceMember getAtdnNum(int mno) {
		return atdnDAO.selectAtdnNum(mno);
	}

	@Override
	public int modifyAtdn(AttendanceMember atdnmember) {
		
		return atdnDAO.updateAtdn(atdnmember);
	}

	@Override
	public int addAtdn(Member member) {
		
		return atdnDAO.insertAtdn(member);
	}

	@Override
	public List<Attendance> getAtdnListinout() {
		
		return atdnDAO.selectAtdninout();
	}
	
}
