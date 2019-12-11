package com.sft.mdk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.WriteDAO;
import com.sft.mdk.dto.RepleDTO;
import com.sft.mdk.dto.WriteDTO;

@Service
public class WriteServiceImpl implements WriteService {
	@Inject
	WriteDAO dao;

	@Override
	public void write_insert(WriteDTO dto) {
		dao.write_insert(dto);

	}

	@Override
	public int write_count() {
		return dao.write_count();
	}

	@Override
	public List<WriteDTO> write_view(int member_no) {
		return dao.write_view(member_no);
	}

	@Override
	public WriteDTO board_view(int no) {
		return dao.board_view(no);
	}

	@Override
	public void reple_insert(RepleDTO dto) {
		dao.reple_insert(dto);
		
	}

	@Override
	public int reple_count() {
		return dao.reple_count();
	}

	@Override
	public List<RepleDTO> reple_view(int no) {
		return dao.reple_view(no);
	}

	@Override
	public void board_delete(int no) {
		dao.board_delete(no);
		
	}

	@Override
	public void board_update(int no) {
		dao.board_update(no);
		
	}

	@Override
	public void board_reple_delete(int no) {
		dao.board_reple_delete(no);
		
	}

	@Override
	public void board_reple_update(int no) {
		dao.board_reple_update(no);
		
	}

	@Override
	public void reple_update(int no) {
		dao.reple_update(no);
		
	}

	@Override
	public WriteDTO modify_view(int no) {
		return dao.modify_view(no);
	}

	@Override
	public void modify_update(WriteDTO dto) {
		dao.modify_update(dto);
		
	}

	@Override
	public void reple_delete(int no) {
		dao.reple_delete(no);
	}

	@Override
	public List<WriteDTO> admin_view() {
		return dao.admin_view();
	}
	

	

}
