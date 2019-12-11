package com.sft.mdk.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.CartDTO;

@Repository
public class CartDAOImpl implements CartDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void cart_insert(CartDTO dto) {
		sqlSession.insert("cart.cart_insert", dto);
	}

	@Override
	public int cart_count() {
		return sqlSession.selectOne("cart.cart_count");
	}

	@Override
	public List<CartDTO> cart_view(CartDTO dto) {		
		return sqlSession.selectList("cart.cart_view",dto);
	}

	@Override
	public void cart_delete(CartDTO dto) {
		sqlSession.delete("cart.cart_delete", dto);
	}

	@Override
	public void cart_update(CartDTO dto) {
		sqlSession.update("cart.cart_update", dto);
	}

	@Override
	public int cart_view_count(int login_no) {
		return sqlSession.selectOne("cart.cart_view_count",login_no);
	}

}
