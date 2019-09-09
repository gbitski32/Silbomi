package com.team.silbomi.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.silbomi.VO.TestVO;
import com.team.silbomi.service.TestService;


@Controller
@RequestMapping("/test/*")
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	 
	@Inject
	TestService service;

	@RequestMapping("main")
	public void main(Model model) throws Exception {
		logger.info("test의 main 실행");
		
		List<TestVO> list = service.all();
		
		model.addAttribute("list",list);
	}
	
}
