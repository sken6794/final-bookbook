package site.itwill.dao;

import java.util.List;

import site.itwill.dto.PayManage;

public interface PayManageDAO {
	List<PayManage> selectPayList();
}
