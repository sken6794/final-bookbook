package site.itwill.dao;

import java.util.List;

import site.itwill.dto.PayManage;

public interface StatisticsDAO {
	int selectMemberCount();
	int selectDnoMemberCount(int dno);
	List<PayManage> selectDepPayNoBonus();
	List<PayManage> selectDepPayYesBonus();
}
