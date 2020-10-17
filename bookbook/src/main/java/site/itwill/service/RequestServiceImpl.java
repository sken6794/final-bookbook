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
	public List<Request> getRequestList() {
		return requestDAO.selectRequestList();
	}

}
