package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.PayManageDAO;
import site.itwill.dto.PayManage;
@Service
public class PayManageServiceImpl implements PayManageService {
	@Autowired
	private PayManageDAO payManageDAO;
	
	@Transactional
	@Override
	public void addPay(PayManage pay) {
		payManageDAO.insertPay(pay);
	}
	
	@Transactional
	@Override
	public void removePay(int pmno) {
		payManageDAO.deletePay(pmno);	
	}
	
	@Transactional
	@Override
	public void modifyRestPay(PayManage pay) {
		payManageDAO.updatePay(pay);
	}
	
	@Override
	public List<PayManage> getPayList() {
		return payManageDAO.selectPayList();
	}

	@Override
	public PayManage getRestPay(int pmno) {
		return payManageDAO.selectRestPay(pmno);
	}

	@Override
	public List<PayManage> getPay(PayManage pay) {
		return payManageDAO.selectPay(pay);
	}
}
