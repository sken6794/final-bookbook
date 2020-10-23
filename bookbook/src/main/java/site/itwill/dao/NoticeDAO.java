package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Notice;

public interface NoticeDAO {
	int insertNotice(Notice notice);
	int updateNotice(Notice notice);
	int countUp(int nno);
	int deleteNotice(int nno);
	Notice selectNotice(int nno);
	List<Notice> selectNoticeList();
}
