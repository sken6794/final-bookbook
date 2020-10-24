package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.PayManage;
import site.itwill.mapper.StatisticsMapper;

@Repository
public class StatisticsDAOImpl implements StatisticsDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int selectMemberCount() {
		return sqlSession.getMapper(StatisticsMapper.class).selectMemberCount();
	}

	@Override
	public int selectDnoMemberCount(int dno) {
		return sqlSession.getMapper(StatisticsMapper.class).selectDnoMemberCount(dno);
	
	}

	@Override
	public List<PayManage> selectDepPayNoBonus() {
		return sqlSession.getMapper(StatisticsMapper.class).selectDepPayNoBonus();
	
	}

	@Override
	public List<PayManage> selectDepPayYesBonus() {
		return sqlSession.getMapper(StatisticsMapper.class).selectDepPayYesBonus();
		
	}
}
