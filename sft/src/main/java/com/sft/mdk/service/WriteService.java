package com.sft.mdk.service;

import java.util.List;

import com.sft.mdk.dto.RepleDTO;
import com.sft.mdk.dto.WriteDTO;

public interface WriteService {
	public void write_insert(WriteDTO dto);
	
	public int write_count();
	
	public List<WriteDTO> write_view(int member_no);
	
	public WriteDTO board_view(int no);
	
	public void reple_insert(RepleDTO dto);
	
	public int reple_count();
	
	public List<RepleDTO> reple_view(int no);
	
	public void board_delete(int no);
	
	public void board_update(int no);
	
	public void board_reple_delete(int no);
	
	public void board_reple_update(int no);
	
	public void reple_update(int no);
	
	public WriteDTO modify_view(int no);
	
	public void modify_update(WriteDTO dto);
	
	public void reple_delete(int no);
	
	public List<WriteDTO> admin_view();
}
