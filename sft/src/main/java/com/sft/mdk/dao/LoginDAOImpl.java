package com.sft.mdk.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.MemberDTO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public boolean login(MemberDTO dto) {
		String name = sqlSession.selectOne("login.login", dto);
		return (name == null) ? false : true;
	}
	
	@Override
	public MemberDTO loginView(MemberDTO dto) {
		return sqlSession.selectOne("login.LoginView", dto);
	}

	@Override
	public String pwCheck(MemberDTO dto) {
		return sqlSession.selectOne("login.pwCheck", dto);
	}

	@Override
	public void info_update(MemberDTO dto) {
		sqlSession.update("login.info_update", dto);
		
	}

}
