package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Request;

public interface RequestDAO {
	int insertRequest(Request request);
	int deleteRequest(int rno);
	int updateRequest(Request request);
	Request selectRestRequest(int rno);
	List<Request> selectRequestList();
}
