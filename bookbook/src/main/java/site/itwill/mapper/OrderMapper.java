package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderMapper {
	int insertOrder(Order order);
	List<Order> selectOrderList();
}
