package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.MemberDAO;
import site.itwill.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) {
		memberDAO.insertMember(member);
	}
	
	@Transactional
	@Override
	public void removeMember(int mno) {
		memberDAO.deleteMember(mno);
	}
	
	@Transactional
	@Override
	public void modifyMember(Member member) {
		memberDAO.updateMember(member);
	}
	
	@Override
	public Member getRestMember(int mno) {
		return memberDAO.selectRestMember(mno);
	}
	
	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}

	@Override
	public List<Member> getMember(Member member) {
		return memberDAO.selectMember(member);
	}



}
