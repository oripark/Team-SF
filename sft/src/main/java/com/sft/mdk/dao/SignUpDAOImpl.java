package com.sft.mdk.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.MemberDTO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public void signUp(MemberDTO dto) {
		sqlSession.insert("signUp.signUp", dto);
	}

	@Override
	public int count() {
		int cnt = sqlSession.selectOne("signUp.count");
		return cnt;
	}

	@Override
	public String idCheck(MemberDTO dto) {
		String name = sqlSession.selectOne("signUp.idCheck", dto);
		
		return name;
	}

}
