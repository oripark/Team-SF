package com.sft.mdk.dao;

import java.util.List;

import com.sft.mdk.dto.MemberDTO;

public interface AdminDAO {
	public List<MemberDTO> admin_view();
	
	public List<MemberDTO> admin_search_view(String search);
}
