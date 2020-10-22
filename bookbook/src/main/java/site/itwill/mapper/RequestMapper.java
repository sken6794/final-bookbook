package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Request;

public interface RequestMapper {
	int insertRequest(Request request);
	int deleteRequest(int rno);
	int updateRequest(Request request);
	Request selectRestRequest(int rno);
	List<Request> selectRequest(Request request);
	List<Request> selectRequestList();
}
