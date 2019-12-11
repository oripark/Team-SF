package com.sft.mdk.dao;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.CardDTO;

@Repository
public class CardDAOImpl implements CardDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<CardDTO> card_list(CardDTO dto){
		return sqlSession.selectList("card.card_list",dto);
	}

	@Override
	public int count() {
		return sqlSession.selectOne("card.count");
	}

	@Override
	public CardDTO card_detail(CardDTO dto) {
		return sqlSession.selectOne("card.card_detail",dto);
	}

}
