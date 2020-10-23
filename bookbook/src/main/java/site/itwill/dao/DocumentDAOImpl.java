package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Document;
import site.itwill.mapper.DocumentMapper;

@Repository
public class DocumentDAOImpl implements DocumentDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Document> selectDocumentList() {
		return sqlSession.getMapper(DocumentMapper.class).selectDocumentList();
	}

	@Override
	public int insertDocument(Document document) {
		return sqlSession.getMapper(DocumentMapper.class).insertDocument(document);
	}

	@Override
	public Document selectDocument(int docno) {
		return sqlSession.getMapper(DocumentMapper.class).selectDocument(docno);
	}

	@Override
	public int updateDocument(Document document) {
		return sqlSession.getMapper(DocumentMapper.class).updateDocument(document);
	}
	
	
}
