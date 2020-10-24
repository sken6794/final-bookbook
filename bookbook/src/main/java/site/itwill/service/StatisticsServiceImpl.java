package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dto.Member;
import site.itwill.dto.PayManage;

@Service
public class StatisticsServiceImpl implements StatisticsService {
	@Autowired	
	private StatisticsService statisticsService;

	@Override
	public Member countMember() {
		return statisticsService.countMember();
	}

	@Override
	public Member countDnoMember(int dno) {
		return statisticsService.countDnoMember(dno);
	}

	@Override
	public List<PayManage> getDepPayNoBonus() {
		return statisticsService.getDepPayNoBonus();	
	}

	@Override
	public List<PayManage> getDepPayYesBonus() {
		return statisticsService.getDepPayYesBonus();
	}

}
