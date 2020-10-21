package site.itwill.service;

import java.util.List;

import site.itwill.dto.Member;

public interface MemberService {
	void addMember(Member member);
	void removeMember(int mno);
	void modifyMember(Member member);
	Member getRestMember(int mno);
	public List<Member> getMemberList();
}
