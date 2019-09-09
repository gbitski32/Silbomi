package com.team.silbomi.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.silbomi.VO.MemberVO;
import com.team.silbomi.VO.TestBoardVO;
import com.team.silbomi.service.MyPageService;
import com.team.silbomi.service.TestBoardService;
import com.team.silbomi.util.domain;

@Controller
@RequestMapping("/myPage/*")
public class MypageController {
	
	//MyPage 주입 
	@Inject 
	MyPageService service;
	
	//test용 주입
	@Inject
	TestBoardService testService;
	
	//logger 선언
	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
	
	//내 정보 페이지
	@RequestMapping(value="myInfo", method=RequestMethod.GET)
	public void getModify(HttpSession session, Model model) throws Exception {

		logger.info("myInfo 진입!");
		
		if(session.getAttribute("member") != null) {
			MemberVO memberVO = (MemberVO) session.getAttribute("member");
			String userId = memberVO.getUser_id();
			System.out.println("userSessionID : " + userId);
			
			memberVO = service.viewOne(userId);
			
//			memberVO.setGender(memberVO.getGender().replace("	", ""));
//			memberVO.setSmsAgree(memberVO.getSmsAgree().replace("	", ""));
//			memberVO.setEmailAgree(memberVO.getEmailAgree().replace("	", ""));
			
			model.addAttribute("myInfo", memberVO);
			System.out.println("myInfo gender : " + memberVO.getGender());
		}
			
	}
	
	//정보 수정
	@RequestMapping(value="modify", method = RequestMethod.POST)
	public String myInfo(MemberVO member) throws Exception {
		
		return "redirect:/myInfo";
		
	}

	//신청 내역
	@RequestMapping("applyList")
	public void applyList(Model model) throws Exception {
		
		List<TestBoardVO> list = testService.all();
		model.addAttribute("list", list);
	}
	
	//구매 및 나눔 내역
	@RequestMapping("buyShareList")
	public void buyShareList(Model model) throws Exception{

		List<TestBoardVO> list = testService.all();
		model.addAttribute("list", list);
	}
	
	//실버 정보
	@RequestMapping("silverInfo")
	public void silverInfo(Model model) throws Exception{
		
		List<TestBoardVO> list = testService.all();
		model.addAttribute("list", list);
	}
}
