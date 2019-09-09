package com.team.silbomi.controller;

<<<<<<< HEAD
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.silbomi.service.LoginService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

private SqlSession sqlSession;
	
	//@Inject
	//adminService
	
	//logger 선언
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping("notify")
	public String notifyWriter() {
		return "admin/notify/notify_write";
	}
	
}
=======
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/admin/*"})
public class AdminController {
	
	
	@RequestMapping({"notify/notify_write"})
	public void notify_write() {
	} 


}
>>>>>>> refs/remotes/origin/master
