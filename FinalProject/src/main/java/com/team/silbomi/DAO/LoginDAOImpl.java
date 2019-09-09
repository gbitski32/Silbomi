package com.team.silbomi.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.team.silbomi.VO.MemberVO;
import com.team.silbomi.controller.LoginController;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Inject
	private SqlSession sql;
	
	//logger 선언
	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);
	
	//매퍼
	private static String namespace = "com.team.mappers.loginMapper";
	
	//로그인
	@Override
	public MemberVO login(String user_id) throws Exception {
		
		return sql.selectOne(namespace+".login", user_id);
	}
	
	//회원가입
	@Override
	public void registeMember(MemberVO memberVO) throws Exception {
		sql.insert(namespace + ".registMember", memberVO);
	}
	
	//아이디 찾기
	@Override
	public String findId(HashMap map) throws Exception {
		
		logger.info("아이디 찾기 dao 진입!");
		
//		memberVO = new MemberVO();
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("findId", memberVO.getUser_name());
//		map.put("findId", memberVO.getEmail_id());
//		map.put("findId", memberVO.getEmail_domain());
		
		return sql.selectOne(namespace+".findId", map);
	}
	
	//비밀번호 찾기
	@Override
	public String findPw(HashMap map) throws Exception {

		return sql.selectOne(namespace+".findPw", map);
	}
	
	//비밀번호 변경
	public int updatePw(MemberVO membervo) throws Exception {
		return sql.update(namespace+".updatePw", membervo);
	}
}