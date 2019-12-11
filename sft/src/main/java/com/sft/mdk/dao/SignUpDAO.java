package com.sft.mdk.dao;

import com.sft.mdk.dto.MemberDTO;

public interface SignUpDAO {
	public void signUp(MemberDTO dto);
	
	public int count();
	
	public String idCheck(MemberDTO dto);
	
}
