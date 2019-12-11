package com.sft.mdk.service;

import java.util.List;

import com.sft.mdk.dto.CartDTO;

public interface CartService {
	public void cart_insert(CartDTO dto);
	
	public int cart_count();
	
	public List<CartDTO> cart_view(CartDTO dto);
	
	public void cart_delete(CartDTO dto);
	
	public void cart_update(CartDTO dto);
	
	public int cart_view_count(int login_no);
}
