package site.itwill.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import site.itwill.dao.OrderDAO;
import site.itwill.dto.Order;
@Service
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Transactional
	@Override
	public void addOrder(Order order) {
		orderDAO.insertOrder(order);
	}
	
	@Transactional
	@Override
	public void modifyOrder(Order order) {
		orderDAO.updateOrder(order);
	}
	
	@Transactional
	@Override
	public void removeOrder(int ono) {
		orderDAO.deleteOrder(ono);
	}
	
	@Override
	public List<Order> getOrderList() {
		return orderDAO.selectOrderList();
	}

	@Override
	public Order getRestOrder(int ono) {
		return orderDAO.selectRestOrder(ono);
	}

	@Override
	public List<Order> getOrder(Order order) {
		return orderDAO.selectOrder(order);
	}




}
