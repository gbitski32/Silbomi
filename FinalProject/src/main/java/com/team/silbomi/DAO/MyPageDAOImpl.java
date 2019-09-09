package com.team.silbomi.DAO;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.team.silbomi.VO.MemberVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject
	private SqlSession sql;
	
	//매퍼
	private static String namespace = "com.team.mappers.myPageMapper";
	
	//회원정보
	@Override
	public MemberVO viewOne(String user_id) throws Exception {
		
		return sql.selectOne(namespace + ".myInfo", user_id);
	}
	
	//비밀번호 체크
	@Override
	public boolean checkPw(String user_id, String user_pw) throws Exception {
		boolean result = false;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id", user_id);
		map.put("user_pw", user_pw);
		
		int count = sql.selectOne(namespace+".checkPw", map);
		
		if(count == 1) result = true;
		
		return result;
	}
}
