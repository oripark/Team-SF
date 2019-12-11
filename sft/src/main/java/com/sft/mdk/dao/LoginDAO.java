package com.sft.mdk.dao;

import com.sft.mdk.dto.MemberDTO;

public interface LoginDAO {
	public boolean login(MemberDTO dto);
	
	public MemberDTO loginView(MemberDTO dto);
	
	public String pwCheck(MemberDTO dto);
	
	public void info_update(MemberDTO dto);
}
