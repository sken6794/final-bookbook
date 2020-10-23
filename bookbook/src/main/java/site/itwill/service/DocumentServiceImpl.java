package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.DocumentDAO;
import site.itwill.dto.Document;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
	private DocumentDAO documentDAO;
	
	@Override
	public List<Document> getDocumentList() {
		return documentDAO.selectDocumentList();
	}

	@Override
	public void addDocument(Document document) {
		documentDAO.insertDocument(document);
	}

	@Override
	public Document getDocument(int docno) {
		Document document = documentDAO.selectDocument(docno);
		return document;
	}

	@Override
	public void modifyDocument(Document document) {
		documentDAO.updateDocument(document);
	}
	
	


	
}
