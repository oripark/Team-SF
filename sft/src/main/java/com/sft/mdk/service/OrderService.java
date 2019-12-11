package com.sft.mdk.service;

import java.util.List;

import com.sft.mdk.dto.OrderDTO;

public interface OrderService {
	public void order_insert(OrderDTO dto);
	
	public int order_count();
	
	public void cart_delete(int login_no);
	
	public void cart_delete_no(int del_no);
	
	public List<OrderDTO> order_view(int login_no);
	
	public List<OrderDTO> admin_order_view();
	
	public void order_update(OrderDTO dto);
}
