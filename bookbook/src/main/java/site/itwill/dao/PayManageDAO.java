package site.itwill.dao;

import java.util.List;

import site.itwill.dto.PayManage;

public interface PayManageDAO {
	int insertPay(PayManage pay);
	int deletePay(int pmno);
	int updatePay(PayManage pay);
	PayManage selectRestPay(int pmno);
	List<PayManage> selectPayList();

}
