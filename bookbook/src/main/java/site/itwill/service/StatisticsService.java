package site.itwill.service;

import java.util.List;

import site.itwill.dto.Member;
import site.itwill.dto.PayManage;

public interface StatisticsService {
	Member countMember();
	Member countDnoMember(int dno);
	List<PayManage> getDepPayNoBonus();
	List<PayManage> getDepPayYesBonus();
}
