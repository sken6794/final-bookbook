package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Document;

public interface DocumentDAO {
	int insertDocument(Document document);
	List<Document> selectDocumentList();
	Document selectDocument(int docno);
}
