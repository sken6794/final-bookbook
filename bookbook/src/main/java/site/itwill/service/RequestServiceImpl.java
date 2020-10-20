package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.RequestDAO;
import site.itwill.dto.Request;
@Service
public class RequestServiceImpl implements RequestService {
	@Autowired
	private RequestDAO requestDAO;
	
	@Override
	public void addRequest(Request request) {
		requestDAO.insertRequest(request);
	}
	
	@Override
	public void removeRequest(int rno) {
		requestDAO.deleteRequest(rno);
	}
	
	@Override
	public List<Request> getRequestList() {
		return requestDAO.selectRequestList();
	}

	@Override
	public Request getRequest(Request request) {
		return requestDAO.selectRequest(request);
	}


}
