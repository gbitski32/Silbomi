package com.team.silbomi.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.silbomi.DAO.TestDAO;
import com.team.silbomi.VO.TestVO;

@Service
public class TestServiceImpl implements TestService{
	
	@Inject
	private TestDAO dao;

	@Override
	public List<TestVO> all() throws Exception {

		return dao.all();
	}

	
}
