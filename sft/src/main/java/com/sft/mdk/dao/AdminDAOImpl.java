package com.sft.mdk.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.MemberDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<MemberDTO> admin_view() {
		return sqlSession.selectList("admin.admin_view");
	}

	@Override
	public List<MemberDTO> admin_search_view(String search) {
		return sqlSession.selectList("admin.admin_search_view",search);
	}

}
