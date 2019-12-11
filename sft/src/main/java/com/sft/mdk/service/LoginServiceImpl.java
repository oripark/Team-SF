package com.sft.mdk.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Service;

import com.sft.mdk.dao.LoginDAO;
import com.sft.mdk.dto.MemberDTO;

@Service
public class LoginServiceImpl implements LoginService {
	@Inject
	LoginDAO dao;

	@Override
	public boolean login(MemberDTO dto, HttpSession session) {
		boolean result = dao.login(dto);
		if(result) {
			MemberDTO dto2 = loginView(dto);
			session.setAttribute("member_name", dto2.getMember_name());
			session.setAttribute("member_no", dto2.getNo());
		}
		
		return result;
	}
	@Override
	public MemberDTO loginView(MemberDTO dto) {
		return dao.loginView(dto);
	}
	@Override
	public int pwCheck(MemberDTO dto) {
		String pwCheck = dao.pwCheck(dto);
		int result = 0;
		if(pwCheck != null) {
			result = 1;
		}
		return result;
	}
	@Override
	public void info_update(MemberDTO dto) {
		dao.info_update(dto);
		
	}
}
