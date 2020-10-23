package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.PayManage;

public interface PayManageMapper {
	int insertPay(PayManage pay);
	int deletePay(int pmno);
	int updatePay(PayManage pay);
	PayManage selectRestPay(int pmno);
	List<PayManage> selectPay(PayManage pay);
	List<PayManage> selectPayList();
}
