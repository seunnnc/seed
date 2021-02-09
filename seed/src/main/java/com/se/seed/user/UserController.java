package com.se.seed.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.se.seed.Const;
import com.se.seed.ViewRef;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@RequestMapping("/join")
	public String join(Model model) {
		model.addAttribute(Const.TITLE, "SEED - 회원가입");
		model.addAttribute(Const.VIEW,"user/join");
		
		return ViewRef.TEMP_DEFAULT;
	}
	
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute(Const.TITLE, "SEED - 로그인");
		model.addAttribute(Const.VIEW,"user/login");
		
		return ViewRef.TEMP_DEFAULT;
	}
	
	/*
	@RequestMapping("/profile")
	public String profile(Model model) {
		model.addAttribute(Const.TITLE, "SEED - 개인정보 변경");
		model.addAttribute(Const.VIEW, "/user/profile");
		
		return ViewRef.TEMP_DEFAULT;
	}
	*/
	
}
