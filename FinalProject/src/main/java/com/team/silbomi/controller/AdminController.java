package com.team.silbomi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping({"/admin/*"})
public class AdminController {
	
	
	@RequestMapping({"notify/notify_write"})
	public void notify_write() {
	} 


}