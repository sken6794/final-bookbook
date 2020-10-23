package site.itwill.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import site.itwill.dto.Order;
import site.itwill.mapper.OrderMapper;
@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertOrder(Order order) {
		return sqlSession.getMapper(OrderMapper.class).insertOrder(order);
	}

	@Override
	public int updateOrder(Order order) {
		return sqlSession.getMapper(OrderMapper.class).updateOrder(order);
	}
	
	@Override
	public int deleteOrder(int ono) {
		return sqlSession.getMapper(OrderMapper.class).deleteOrder(ono);
	}
	
	@Override
	public List<Order> selectOrderList() {
		return sqlSession.getMapper(OrderMapper.class).selectOrderList();
	}

	@Override
	public Order selectRestOrder(int ono) {
		return sqlSession.getMapper(OrderMapper.class).selectRestOrder(ono);
	}

	@Override
	public List<Order> selectOrder(Order order) {
		return sqlSession.getMapper(OrderMapper.class).selectOrder(order);
	}

}
