package com.sft.mdk.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.SignUpDAO;
import com.sft.mdk.dto.MemberDTO;

@Service
public class SignUpServiceImpl implements SignUpService {
	@Inject
	SignUpDAO dao;
	
	@Override
	public void signUp(MemberDTO dto) {
		dao.signUp(dto);
	}


	@Override
	public int idCheck(MemberDTO dto) {
		String idCheck = dao.idCheck(dto);
		int result = 0;
		if(idCheck != null) {
			result = 1;
		}
		return result;
	}

	@Override
	public int count() {
		int cnt = dao.count();
		return cnt;
	}
}
