package com.team.silbomi.DAO;

import java.util.HashMap;

import com.team.silbomi.VO.MemberVO;

public interface LoginDAO {
	
	//로그인
	public MemberVO login(String user_id) throws Exception;
	
	//회원가입
	public void registeMember(MemberVO memberVO) throws Exception;
	
	//아이디 찾기
	public String findId(HashMap map) throws Exception;
	
	//비밀번호 찾기
	public String findPw(HashMap map) throws Exception;
	
	//비밀번호 변경
	public int updatePw(MemberVO membervo) throws Exception;
}
