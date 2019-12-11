package com.sft.mdk.dao;

import java.util.List;

import com.sft.mdk.dto.CartDTO;

public interface CartDAO {
	public void cart_insert(CartDTO dto);
	
	public List<CartDTO> cart_view(CartDTO dto);
	
	public int cart_count();
	
	public void cart_delete(CartDTO dto);
	
	public void cart_update(CartDTO dto);
	
	public int cart_view_count(int login_no);
}
