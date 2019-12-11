package com.sft.mdk.dao;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.OrderDTO;
import org.apache.ibatis.session.SqlSession;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void order_insert(OrderDTO dto) {
		sqlSession.insert("order.order_insert",dto);
	}

	@Override
	public int order_count() {
		return sqlSession.selectOne("order.order_count");
	}

	@Override
	public void cart_delete(int login_no) {
		sqlSession.delete("order.cart_delete", login_no);
	}

	@Override
	public void cart_delete_no(int del_no) {
		sqlSession.delete("order.cart_delete_no", del_no);
		
	}

	@Override
	public List<OrderDTO> order_view(int login_no) {
		return sqlSession.selectList("order.order_view", login_no);
		
	}

	@Override
	public List<OrderDTO> admin_order_view() {
		return sqlSession.selectList("order.admin_order_view");
	}

	@Override
	public void order_update(OrderDTO dto) {
		sqlSession.update("order.order_update",dto);
		
	}

}
