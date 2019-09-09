package com.team.silbomi.DAO;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.silbomi.VO.TestVO;

@Repository
public class TestDAOImpl implements TestDAO{
	
	@Inject
	private SqlSession sql;
	
	//매퍼
	private static String namespace = "silbomi.mappers.testMapper";
	

	@Override
	public List<TestVO> all() throws Exception {

		return sql.selectList(namespace + ".all");
	}

	
}
