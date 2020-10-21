package site.itwill.service;

import java.util.List;

import site.itwill.dto.PayManage;

public interface PayManageService {
	void addPay(PayManage pay);
	void removePay(int pmno);
	void modifyRestPay(PayManage pay);
	PayManage getRestPay(int pmno);
	public List<PayManage> getPayList();
}
