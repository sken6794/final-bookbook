package site.itwill.mapper;

import java.util.List;

import site.itwill.dto.Order;

public interface OrderMapper {
	List<Order> selectOrderList();
}
