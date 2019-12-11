package com.sft.mdk.service;

import java.util.List;

import com.sft.mdk.dto.MemberDTO;

public interface AdminService {
	public List<MemberDTO> admin_view();
	
	public List<MemberDTO> admin_search_view(String search);
}
