package com.sft.mdk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.CardDAO;
import com.sft.mdk.dto.CardDTO;


@Service
public class CardServiceImpl implements CardService {
	@Inject
	CardDAO dao;
	
	@Override
	public List<CardDTO> card_list(CardDTO dto) {
		return dao.card_list(dto);
	}

	@Override
	public int count() {
		return dao.count();
	}

	@Override
	public CardDTO card_detail(CardDTO dto) {
		return dao.card_detail(dto);
	}
}
