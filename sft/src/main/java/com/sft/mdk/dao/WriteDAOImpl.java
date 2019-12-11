package com.sft.mdk.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sft.mdk.dto.RepleDTO;
import com.sft.mdk.dto.WriteDTO;
@Repository
public class WriteDAOImpl implements WriteDAO {
	@Inject
	SqlSession sqlSession;
	@Override
	
	public void write_insert(WriteDTO dto) {
		sqlSession.insert("write.write_insert", dto);

	}

	@Override
	public int write_count() {
		return sqlSession.selectOne("write.write_count");
	}

	@Override
	public List<WriteDTO> write_view(int member_no) {
		return sqlSession.selectList("write.write_view", member_no);
	}

	@Override
	public WriteDTO board_view(int no) {
		return sqlSession.selectOne("write.board_view", no);
	}

	@Override
	public void reple_insert(RepleDTO dto) {
		sqlSession.insert("write.reple_insert", dto);
		
	}

	@Override
	public int reple_count() {
		return sqlSession.selectOne("write.reple_count");
	}

	@Override
	public List<RepleDTO> reple_view(int no) {
		return sqlSession.selectList("write.reple_view", no);
	}

	@Override
	public void board_delete(int no) {
		sqlSession.delete("write.board_delete", no);
		
	}

	@Override
	public void board_update(int no) {
		sqlSession.update("write.board_update", no);
		
	}

	@Override
	public void board_reple_delete(int no) {
		sqlSession.delete("write.board_reple_delete",no);
		
	}

	@Override
	public void board_reple_update(int no) {
		sqlSession.update("write.board_reple_update",no);
		
	}

	@Override
	public void reple_update(int no) {
		sqlSession.update("write.reple_update", no);
		
	}

	@Override
	public WriteDTO modify_view(int no) {
		return sqlSession.selectOne("write.modify_view",no);
	}

	@Override
	public void modify_update(WriteDTO dto) {
		sqlSession.update("write.modify_update", dto);
		
	}

	@Override
	public void reple_delete(int no) {
		sqlSession.delete("write.reple_delete", no);
	}

	@Override
	public List<WriteDTO> admin_view() {
		return sqlSession.selectList("write.admin_view");
	}

}
