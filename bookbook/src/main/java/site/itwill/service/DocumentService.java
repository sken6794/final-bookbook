package site.itwill.service;

import java.util.List;

import site.itwill.dto.Document;

public interface DocumentService {
	void addDocument(Document document);
	Document getDocument(int docno);
	public List<Document> getDocumentList();
}
