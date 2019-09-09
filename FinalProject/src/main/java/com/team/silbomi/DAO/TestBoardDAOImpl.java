package com.team.silbomi.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.silbomi.VO.TestBoardVO;

@Repository
public class TestBoardDAOImpl implements TestBoardDAO {
	
	@Inject
	private SqlSession sql;
	
	//매퍼
	private static String namespace = "com.team.mappers.testBoardMapper";
	
	@Override
	public List<TestBoardVO> all() throws Exception {

		return sql.selectList(namespace + ".all");
	}

}
