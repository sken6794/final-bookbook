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
	
}
