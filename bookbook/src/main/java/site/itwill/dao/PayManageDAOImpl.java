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
	public int insertPay(PayManage pay) {
		return sqlSession.getMapper(PayManageMapper.class).insertPay(pay);
	}
	
	@Override
	public int updatePay(PayManage pay) {
		return sqlSession.getMapper(PayManageMapper.class).updatePay(pay);
		
	}

	@Override
	public int deletePay(int pmno) {
		return sqlSession.getMapper(PayManageMapper.class).deletePay(pmno);
	}
	
	@Override
	public List<PayManage> selectPayList() {
		return sqlSession.getMapper(PayManageMapper.class).selectPayList();
	}

	@Override
	public PayManage selectRestPay(int pmno) {
		return sqlSession.getMapper(PayManageMapper.class).selectRestPay(pmno);

	}

	@Override
	public List<PayManage> selectPay(PayManage pay) {
		return sqlSession.getMapper(PayManageMapper.class).selectPay(pay);
	}

}
