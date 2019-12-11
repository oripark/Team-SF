package com.sft.mdk.service;

import java.util.List;

import com.sft.mdk.dto.CardDTO;

public interface CardService {
	public List<CardDTO> card_list(CardDTO dto);
	
	public int count();
	
	public CardDTO card_detail(CardDTO dto);
}
