package com.team.silbomi.DAO;

import com.team.silbomi.VO.MemberVO;

public interface MyPageDAO {
	
	//내 정보
	public MemberVO viewOne(String user_id) throws Exception;
	
	//비밀번호 체크
	public boolean checkPw(String user_id, String user_pw) throws Exception;
}
