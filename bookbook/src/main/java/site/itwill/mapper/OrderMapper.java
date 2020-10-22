package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderMapper {
	int insertOrder(Order order);
	int deleteOrder(int ono);
	int updateOrder(Order order);
	Order selectRestOrder(int ono);
	List<Order> selectOrderList();
}
