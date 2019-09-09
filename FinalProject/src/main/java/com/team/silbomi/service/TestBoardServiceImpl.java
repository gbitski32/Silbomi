package com.team.silbomi.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.silbomi.DAO.TestBoardDAO;
import com.team.silbomi.VO.TestBoardVO;

@Service
public class TestBoardServiceImpl implements TestBoardService {
	
	@Inject
	private TestBoardDAO dao;
	
	@Override
	public List<TestBoardVO> all() throws Exception {
		
		return dao.all();
	}
}
