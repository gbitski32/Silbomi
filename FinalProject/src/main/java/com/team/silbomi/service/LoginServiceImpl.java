package com.team.silbomi.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.team.silbomi.DAO.LoginDAO;
import com.team.silbomi.VO.MemberVO;
import com.team.silbomi.controller.LoginController;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Inject
	private LoginDAO dao;
	
	@Inject 
	LoginService service;
	
	//logger 선언
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	//로그인
	@Override
	public MemberVO login(String user_id) throws Exception {
		
		return dao.login(user_id);
	}
	
	//회원가입
	@Override
	public void registeMember(MemberVO memberVO) throws Exception {
		
		dao.registeMember(memberVO);
	}
	
	//아이디 찾기
	@Override
	public String findId(HashMap map) throws Exception {
		
		logger.info("아이디 찾기 service 진입!");
		
		return dao.findId(map);
		
	}
	
	//이메일 발송
	@Override
	public void send_email(MemberVO memberVO, String content) {

		//메일 서버
		String charSet = "UTF-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPId = "82xuyin@naver.com";
		String hostSMTPPw = "rpsh9793";
		
		//보내는 사람 EMAIL, 제목, 내용
		String fromEmail = "82xuyin@naver.com";
		String fromName = "실보미";
		String subject = "";
		String msg = "";

		if(content.equals("findPw")) {
			subject = "실보미 회원 임시 비밀번호 입니다.";
			msg += "<div>";
			msg += "	<h3>"+ memberVO.getUser_id() +"님의 임시 비밀번호 입니다.</h3>";
			msg += "		<br/>임시 비밀번호로 로그인 하신 후, 새로운 비밀번호로 변경해주세요.";
			msg += "	<p>임시 비밀번호 : "+ memberVO.getUser_pw() + "</p>";
			msg += "</div>";
		}
		// 받는 사람 E-Mail 주소
		String email = memberVO.getEmail_id()+"@"+memberVO.getEmail_domain();
		try {
			//HtmlEmail mail = new HtmlEmail();
//			mail.setDebug(true);
//			mail.setCharset(charSet);
//			mail.setSSL(true);
//			mail.setHostName(hostSMTP);
//			mail.setSmtpPort(587);
//
//			mail.setAuthentication(hostSMTPId, hostSMTPPw);
//			mail.setTLS(true);
//			mail.addTo(email, charSet);
//			mail.setFrom(fromEmail, fromName, charSet);
//			mail.setSubject(subject);
//			mail.setHtmlMsg(msg);
//			mail.send();
		} 
		catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
	
	//비밀번호 찾기
	@Override
	public String findPw(HashMap map) throws Exception {
		
		logger.info("비밀번호 찾기 service 진입!");
		
		return dao.findPw(map);
		
//		String email = memberVO.getEmail_id()+"@"+memberVO.getEmail_domain();
//		
//		resp.setContentType("tesx/html;charset=UTF-8");
//		PrintWriter out = resp.getWriter();
//		
//		//아이디 X
//		if(memberVO.getUser_id()==null) {
//			out.println("아이디가 존재하지 않습니다.");
//			out.close();
//		}
//		else if(!email.equals(service.login(memberVO.getUser_id()).getEmail_id())){//아이디는 있는데 이메일이 다름
//			
//			out.println("잘못된 이메일 입니다. 다시 확인해주세요.");
//			out.close();
//		}
//		else { 
//			//임시 비밀번호 생성
//			String pw = "";
//			for (int i = 0; i < 12; i++) {
//				pw += (char) ((Math.random() * 26) + 97);
//			}
//			memberVO.setUser_pw(pw);
//			// 비밀번호 변경
//			dao.updatePw(memberVO);
//			// 비밀번호 변경 메일 발송
//			//send_email(memberVO);;
//			
//			out.println("이메일로 임시 비밀번호를 발송하였습니다.");
//			out.close();
//		}
	}
}
