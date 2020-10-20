package site.itwill.service;

import java.util.List;

import site.itwill.dto.Member;

public interface MemberService {
	void addMember(Member member);
	void removeMember(int mno);
	public List<Member> getMemberList();
}
