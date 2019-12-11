package com.sft.mdk.dao;

import java.util.List;

import com.sft.mdk.dto.CardDTO;

public interface CardDAO {
	public List<CardDTO> card_list(CardDTO dto);
	
	public int count();
	
	public CardDTO card_detail(CardDTO dto);
}
