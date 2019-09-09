package com.team.silbomi.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.team.silbomi.DAO.LoginDAO;
import com.team.silbomi.DAO.LoginDAOImpl;
import com.team.silbomi.VO.MemberVO;
import com.team.silbomi.service.LoginService;

@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	private SqlSession sqlSession;
	
	@Inject
	LoginService service;
	
	//logger 선언
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
		
	//로그인 페이지
	@RequestMapping("login")
	public String login() {
		return "login/login";
	}
	
	//로그인 처리
	@RequestMapping(value="loginAction", method=RequestMethod.POST)
	public String loginAction(HttpServletRequest req, 
			HttpSession session, Model model) throws Exception {
		
		session = req.getSession();
		String inputUser = req.getParameter("user_id");
		String inputUserPass = req.getParameter("user_pw");
		
		try {
			MemberVO login = service.login(inputUser);

			if(login != null) {
				if(!login.getUser_pw().equals(inputUserPass)) {
					//아이디는 맞지만 비밀번호는 틀린 경우
					System.out.println("login.getUser_pw : " + login.getUser_pw());
					System.out.println("inputUserPass : " + inputUserPass);
					System.out.println("로그인 실패 : 비밀번호 틀림");
					model.addAttribute("flag", 1);
					model.addAttribute("MSG", "비밀번호를 확인해주세요");
					
				}
				else {
					//로그인 성공
					session.setAttribute("member", login);
					System.out.println("로그인 성공!");
					model.addAttribute("flag", 0); 
					model.addAttribute("MSG", "환영합니다!"); 
				}
				
			}
			else {
				//없는 회원
				System.out.println("로그인 실패 : 가입 내역 없음");
				model.addAttribute("flag", 2);
				model.addAttribute("MSG", "회원 정보가 없습니다. 회원 가입을 해주세요.");
				
			}
			
		} 
		catch (Exception e) {}	
		
		return "login/loginSuccess";
		
	}
	
	//로그아웃 처리
	@RequestMapping("logout")
	public String logout(HttpSession session) throws Exception{
		
		//세션 정보 비워주기
		session.setAttribute("member", null);
		
		return "redirect:/main";
	}
	
////////////////////////////////////////////////////////////////////////////	
	
	
	/* 회원가입 */
	//회원 유형
	@RequestMapping("userType")
	public String userType() {
		
		return "/login/userType";
	}
	
	//이용약관 동의
	@RequestMapping("accountAgree")
	public String accountAgree() {
		
		return "/login/accountAgree";
	}
	
	// 회원가입 페이지
	@RequestMapping("account")
	public void account() throws Exception {
		logger.info("회원가입 페이지 진입!");
		
	}
	
	// 회원가입 post
	@RequestMapping(value="accountAction", method=RequestMethod.POST)
	public String accountAction(MemberVO memberVO, HttpServletResponse resp) throws Exception {
		logger.info("회원가입 처리!");
		
		//String inputPass = member.getUserPass();
		//String pass = passEncoder.encode(inputPass);
		//member.setUserPass(pass);
		
//		memberVO.setGender(memberVO.getGender().replace("	", ""));
//		memberVO.setSmsAgree(memberVO.getSmsAgree().replace("	", ""));
//		memberVO.setEmailAgree(memberVO.getEmailAgree().replace("	", ""));
		service.registeMember(memberVO);
		
		resp.setContentType("text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<script>alert('회원가입이 완료되었습니다.'); history.go(-1);</script>");

		
		return "redirect:/main";
	}

	
	//아이디/비밀번호 찾기
	@RequestMapping("findIdPw")
	public String findIdPw() {
		
		return "/login/findIdPw";
	}
	
	//아이디 찾기 처리
	@RequestMapping(value="findId", method = RequestMethod.POST)
	public String findId(HttpServletRequest req, HttpServletResponse resp, 
				Model model) throws Exception {
		
		logger.info("아이디 찾기 처리 진입!");
		
		String user_name = req.getParameter("findId_name");
		String email_id = req.getParameter("findId_email_id");
		String email_domain = req.getParameter("findId_email_domain");
		//String email = req.getParameter("findId_email_id")+"@"+ req.getParameter("findId_email_domain");
		
		
		HashMap map = new HashMap();
		map.put("user_name", user_name);
		map.put("email_id", email_id);
		map.put("email_domain", email_domain);
		
		String findId = service.findId(map);
		
		//찾는 아이디가 존재하는지 확인할 변수
		int flag = 0;
		
		if(findId != null) {
			flag = 1;
		}
		else {
			flag = -1;
		}
		System.out.println("flag : " + flag);
		
		model.addAttribute("user_name", user_name);
		model.addAttribute("flag", flag);
		model.addAttribute("findId", findId);
		
		return "/login/findId";
		
	}
	
	//비밀번호 찾기 처리
	@RequestMapping(value="findPw", method = RequestMethod.POST)
	public String findPw(HttpServletRequest req, HttpServletResponse resp, Model model) throws Exception {
		
		logger.info("비밀번호 찾기 처리 진입!");

		String user_id = req.getParameter("findPw_id");
		String user_name = req.getParameter("findPw_name");
		String email_id = req.getParameter("findPw_email_id");
		String email_domain = req.getParameter("findPw_email_domain");
		
		
		HashMap map = new HashMap();
		map.put("user_id", user_id);
		map.put("user_name", user_name);
		map.put("email_id", email_id);
		map.put("email_domain", email_domain);
		
		String findPw = service.findPw(map);
		
		//회원 정보가 맞는지 확인할 변수
		int flag = 0;
		
		if(findPw != null) {
			flag = 1;
		}
		else {
			flag = -1;
		}
		
		///////메일 발송은 나중에//////////
		
		
		System.out.println("flag : " + flag);
		System.out.println("findPw : " + findPw );
		
		model.addAttribute("findPw_id", user_id);
		model.addAttribute("flag", flag);
		model.addAttribute("findPw", findPw);
		
		return "/login/findPw";
	}

}
