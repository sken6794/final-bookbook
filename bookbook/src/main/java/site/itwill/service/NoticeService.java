package site.itwill.service;

import java.util.List;

import site.itwill.dto.Notice;

public interface NoticeService {	
	void addNotice(Notice notice);
	void modifyNotice(Notice notice);
	void readCount(int nno);
	void removeNotice(int nno);
	Notice getNotice(int nno);
	public List<Notice> getNoticeList();
}
