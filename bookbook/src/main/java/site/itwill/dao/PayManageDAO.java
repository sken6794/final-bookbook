package site.itwill.dao;

import java.util.List;

import site.itwill.dto.PayManage;

public interface PayManageDAO {
	int insertPay(PayManage pay);
	int deletePay(int pmno);
	List<PayManage> selectPayList();

}
