package site.itwill.dao;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderDAO {
	int insertOrder(Order order);
	List<Order> selectOrderList();
}
