package com.sft.mdk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.OrderDAO;
import com.sft.mdk.dto.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {
	@Inject
	OrderDAO dao;
	
	@Override
	public void order_insert(OrderDTO dto) {
		dao.order_insert(dto);
	}

	@Override
	public int order_count() {
		return dao.order_count();
	}

	@Override
	public void cart_delete(int login_no) {
		dao.cart_delete(login_no);
	}

	@Override
	public void cart_delete_no(int del_no) {
		dao.cart_delete_no(del_no);
		
	}

	@Override
	public List<OrderDTO> order_view(int login_no) {
		return dao.order_view(login_no);
	}

	@Override
	public List<OrderDTO> admin_order_view() {
		return dao.admin_order_view();
	}

	@Override
	public void order_update(OrderDTO dto) {
		dao.order_update(dto);
		
	}

}
