package com.sft.mdk.service;

import javax.servlet.http.HttpSession;

import com.sft.mdk.dto.MemberDTO;

public interface LoginService {
	public boolean login(MemberDTO dto, HttpSession session);
	
	public MemberDTO loginView(MemberDTO dto);
	
	public int pwCheck(MemberDTO dto);
	
	public void info_update(MemberDTO dto);
	
}
