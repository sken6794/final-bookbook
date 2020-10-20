package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.NoticeDAO;
import site.itwill.dto.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Transactional
	@Override
	public void addNotice(Notice notice) {
		noticeDAO.insertNotice(notice);
	}

	@Override
	public void modifyNotice(int nno) {
		noticeDAO.updateNotice(nno);
	}

	@Override
	public void removeNotice(int nno) {
		noticeDAO.deleteNotice(nno);
	}

	@Override
	public Notice getNotice(int nno) {
		return noticeDAO.selectNotice(nno);
	}

	@Override
	public List<Notice> getNoticeList() {
		return noticeDAO.selectNoticeList();
	}

}
