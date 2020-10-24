package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.PayManage;

public interface StatisticsMapper {
	int selectMemberCount();
	int selectDnoMemberCount(int dno);
	List<PayManage> selectDepPayNoBonus();
	List<PayManage> selectDepPayYesBonus();
}
