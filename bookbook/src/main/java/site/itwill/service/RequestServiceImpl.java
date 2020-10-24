package site.itwill.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.BookInDAO;
import site.itwill.dao.RequestDAO;
import site.itwill.dto.BookIn;
import site.itwill.dto.BookOut;
import site.itwill.dto.Request;
@Service
public class RequestServiceImpl implements RequestService {
	@Autowired
	private RequestDAO requestDAO;
	
	@Autowired
	private BookInDAO bookinDAO; 
	
	@Transactional
	@Override
	public void addRequest(Request request) {
		requestDAO.insertRequest(request);
	}
	
	@Transactional
	@Override
	public void modifyRequest(Request request) {
		requestDAO.updateRequest(request);
		
		SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd HH:mm");
		String indate = format.format(System.currentTimeMillis());
		
		if(request.getRstate()==3) {
			BookIn in = new BookIn();
			in.setBcode(request.getBcode());
			in.setInqty(request.getRqty());
			in.setIndate(indate);
			bookinDAO.insertBookin(in);
			
			
		}
	}
	
	@Transactional
	@Override
	public void removeRequest(int rno) {
		requestDAO.deleteRequest(rno);
	}

	@Override
	public List<Request> getRequestList() {
		return requestDAO.selectRequestList();
	}

	@Override
	public Request getRestRequest(int rno) {
		return requestDAO.selectRestRequest(rno);
	}

	@Override
	public List<Request> getRequest(Request request) {
		return requestDAO.selectRequest(request);
	}


}
