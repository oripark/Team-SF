package com.sft.mdk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sft.mdk.dao.AdminDAO;
import com.sft.mdk.dto.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService {
	@Inject
	AdminDAO dao;
	
	@Override
	public List<MemberDTO> admin_view() {
		return dao.admin_view();
	}

	@Override
	public List<MemberDTO> admin_search_view(String search) {
		return dao.admin_search_view(search);
	}

}
