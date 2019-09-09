package com.team.silbomi.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.silbomi.DAO.MyPageDAO;
import com.team.silbomi.VO.MemberVO;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Inject
	private MyPageDAO dao;
	
	@Override
	public MemberVO viewOne(String user_id) throws Exception {

		return dao.viewOne(user_id);
	}
	
	@Override
	public boolean checkPw(String user_id, String user_pw) throws Exception {
		
		return dao.checkPw(user_id, user_pw);
	}
}
