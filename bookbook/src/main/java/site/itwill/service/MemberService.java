package site.itwill.service;

import java.util.List;

import site.itwill.dto.Member;
import site.itwill.exception.LoginAuthFailException;

public interface MemberService {
	void addMember(Member member);
	void removeMember(int mno);
	void modifyMember(Member member);
	Member getRestMember(int mno);
	public List<Member> getMember(Member member);
	public List<Member> getMemberList();
	/* void loginAuth(Member member) throws LoginAuthFailException; */
}
