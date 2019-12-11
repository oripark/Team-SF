package com.sft.mdk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.CartDAO;
import com.sft.mdk.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService {
	@Inject
	CartDAO dao;
	
	@Override
	public void cart_insert(CartDTO dto) {
		dao.cart_insert(dto);
	}
	@Override
	public int cart_count() {
		return dao.cart_count();
	}
	@Override
	public List<CartDTO> cart_view(CartDTO dto) {
		return dao.cart_view(dto);
	}
	@Override
	public void cart_delete(CartDTO dto) {
		dao.cart_delete(dto);
	}
	@Override
	public void cart_update(CartDTO dto) {
		dao.cart_update(dto);	
	}
	@Override
	public int cart_view_count(int login_no) {
		return dao.cart_view_count(login_no);
	}

}
