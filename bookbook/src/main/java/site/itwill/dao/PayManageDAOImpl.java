package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.PayManage;
import site.itwill.mapper.PayManageMapper;
@Repository
public class PayManageDAOImpl implements PayManageDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PayManage> selectPayList() {
		return sqlSession.getMapper(PayManageMapper.class).selectPayList();
	}

}
