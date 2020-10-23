package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.RequestDAO;
import site.itwill.dto.Request;
@Service
public class RequestServiceImpl implements RequestService {
	@Autowired
	private RequestDAO requestDAO;
	
	@Transactional
	@Override
	public void addRequest(Request request) {
		requestDAO.insertRequest(request);
	}
	
	@Transactional
	@Override
	public void modifyRequest(Request request) {
		requestDAO.updateRequest(request);
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
