package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Request;

public interface RequestDAO {
	List<Request> selectRequestList();
}
