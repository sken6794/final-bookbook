package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.AtdnDAO;
import site.itwill.dto.AtdnMember;
import site.itwill.dto.Attendance;
import site.itwill.dto.AttendanceMember;
import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;
import site.itwill.exception.UserinfoNotFoundException;

@Service
public class AtdnServiceImpl implements AtdnService{
	@Autowired
	private AtdnDAO atdnDAO;
	
	
	@Override
	public List<AttendanceMember> getAtdnList() {
		
		return atdnDAO.selectAtdn();
	}
	
	
	@Override
	public AttendanceMember getAtdnNum(int mno) throws UserinfoNotFoundException {
		AttendanceMember attendancemember = atdnDAO.selectAtdnNum(mno);
		if(attendancemember==null) {
			throw new UserinfoNotFoundException("�ش� �����ȣ�� �������� �ʽ��ϴ�.");
		}
	
		return attendancemember;
	}
	
	@Transactional
	@Override
	public void modifyAtdn(AttendanceMember atdnmember) throws UserinfoNotFoundException {
		AttendanceMember attendancemember = atdnDAO.selectAtdnNum(atdnmember.getMno());
		if(attendancemember==null) {
			throw new UserinfoNotFoundException("�ش� �����ȣ�� �������� �ʽ��ϴ�.");
		}
		
		 atdnDAO.updateAtdn(atdnmember);
	}
	
	@Transactional
	@Override
	public void addAtdn(Attendance attendance) { 
		
		 atdnDAO.insertAtdn(attendance);
	}

	@Override
	public List<Attendance> getAtdnListinout() {
		
		return atdnDAO.selectAtdninout();
	}

	@Override
	public void loginAuth(Member member) throws LoginAuthFailException {
		Member authMember = atdnDAO.selectMemberOne(member.getMno());
		if(authMember==null) {
			throw new LoginAuthFailException(member.getMno(),"�����ȣ�� ����� �������� �ʽ��ϴ�.");
		}
		
		if(!authMember.getMpw().equals(member.getMpw())){
			throw new LoginAuthFailException(member.getMno(), "�����ȣ�� ���ų� ��й�ȣ�� ���� �ʽ��ϴ�.");
		}
	}

	@Override
	public Member getMember(int mno) {
		
		return atdnDAO.selectMemberOne(mno);
	}

	@Override
	public void logoutAtdn(Attendance attendance) {
		atdnDAO.logoutAtdn(attendance);
		
	}

	@Override
	public Attendance getAtdnOne(int mno) {
		
		return atdnDAO.selectAtdnOne(mno);
	}

	@Transactional
	@Override
	public void addAttendance(AttendanceMember atdnmember) {
		
		atdnDAO.insertAttendance(atdnmember);
		
	}

	@Transactional
	@Override
	public void removeAttendance(int mno) throws UserinfoNotFoundException {
		AttendanceMember attendancemember = atdnDAO.selectAtdnNum(mno);
		if(attendancemember==null) {
			throw new UserinfoNotFoundException("�ش� �����ȣ�� �������� �ʽ��ϴ�.");
		}
		atdnDAO.deleteAttendance(mno);
		
	}
	
}
