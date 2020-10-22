package site.itwill.service;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderService {
	void addOrder(Order order);
	void removeOrder(int ono);
	void modifyOrder(Order order);
	Order getRestOrder(int ono);
	List<Order> getOrderList();
}
