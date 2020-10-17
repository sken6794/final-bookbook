package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import site.itwill.dao.PayManageDAO;
import site.itwill.dto.PayManage;
@Service
public class PayManageServiceImpl implements PayManageService {
	@Autowired
	private PayManageDAO payManageDAO;
	
	@Override
	public List<PayManage> getPayList() {
		return payManageDAO.selectPayList();
	}

}
