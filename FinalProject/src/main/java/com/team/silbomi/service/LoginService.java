package com.team.silbomi.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.team.silbomi.VO.MemberVO;

public interface LoginService {
	
	//로그인
	public MemberVO login(String user_id) throws Exception;
	
	//회원가입
	public void registeMember(MemberVO memberVO) throws Exception;

	//아이디 찾기
	public String findId(HashMap map) throws Exception;
	
	//이메일 발송
	public void send_email(MemberVO memberVO, String content);
	
	//비밀번호 찾기
	public String findPw(HashMap map) throws Exception;
}
