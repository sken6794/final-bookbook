package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Document;

public interface DocumentDAO {
	public List<Document> selectDocumentList();
}
