package site.itwill.dao;

import java.util.List;


import site.itwill.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int deleteMember(int mno);
	int updateMember(Member member);
	Member selectRestMember(int mno);
	List<Member> selectMember(Member member);
	List<Member> selectMemberList();
}
