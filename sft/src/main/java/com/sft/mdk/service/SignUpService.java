package com.sft.mdk.service;

import com.sft.mdk.dto.MemberDTO;

public interface SignUpService {
	public void signUp(MemberDTO dto);
	
	public int idCheck(MemberDTO dto);
	
	public int count();
	
}
