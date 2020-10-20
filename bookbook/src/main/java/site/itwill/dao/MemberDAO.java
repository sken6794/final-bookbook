package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Member;

public interface MemberDAO {
	//int insertMember(Member member);
	int deleteMember(int mno);
	//Member selectMember(int mno, string dname, string pname)
	List<Member> selectMemberList();
}
