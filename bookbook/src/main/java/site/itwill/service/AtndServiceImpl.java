package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.AtdnDAO;
import site.itwill.dto.AtdnMember;
import site.itwill.dto.AttendanceMember;

@Service
public class AtndServiceImpl implements AtdnService{
	@Autowired
	private AtdnDAO atdnDAO;
	
	@Override
	public List<AttendanceMember> getAtdnList() {
		
		return atdnDAO.selectAtdn();
	}
	
}
