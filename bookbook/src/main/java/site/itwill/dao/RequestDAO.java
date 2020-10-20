package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Request;

public interface RequestDAO {
	int insertRequest(Request request);
	int deleteRequest(int rno);
	Request selectRequest(Request request);
	List<Request> selectRequestList();
}
