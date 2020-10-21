package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Document;

public interface DocumentMapper {
	int insertDocument(Document document);
	public List<Document> selectDocumentList();
	Document selectDocument(int docno);
}
