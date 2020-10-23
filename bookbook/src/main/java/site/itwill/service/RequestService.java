package site.itwill.service;

import java.util.List;

import site.itwill.dto.Request;

public interface RequestService {
	void addRequest(Request request);
	void removeRequest(int rno);
	void modifyRequest(Request request);
	Request getRestRequest(int rno);
	public List<Request> getRequest(Request request);
	public List<Request> getRequestList();
}
