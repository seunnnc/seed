package com.se.seed.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.se.seed.Const;
import com.se.seed.ViewRef;
import com.se.seed.user.model.UserPARAM;
import com.se.seed.user.model.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService service;
	
	// 회원가입
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(Model model, @RequestParam(required=false, defaultValue="0")int err) {
		System.out.println("err=" + err);
		
		if(err > 0) {
			model.addAttribute("msg", "에러가 발생했습니다");
		}
		
		model.addAttribute(Const.TITLE, "SEED - 회원가입");
		model.addAttribute(Const.VIEW,"user/join");
		
		return ViewRef.TEMP_DEFAULT;
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(UserVO param, RedirectAttributes ra) {
		int result = service.join(param);
		
		System.out.println("result : " + result);
		
		if(result == 1) {
			return "redirect:/user/login";
		}
		
		System.out.println("회원가입 성공!");
		
		ra.addAttribute("err", result);
		return "redirect:/user/join?err=" + result;
	}
	
	// 로그인
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		model.addAttribute(Const.TITLE, "SEED - 로그인");
		model.addAttribute(Const.VIEW,"user/login");
		
		return ViewRef.TEMP_DEFAULT;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(UserPARAM param, HttpSession hs, RedirectAttributes ra) {
		int result = service.login(param);
		
		if(result == Const.SUCCESS) {
			hs.setAttribute(Const.LOGIN_USER, param);
			return "redirect:/record/main";
		}
		
		String msg = null;
		if(result == Const.NO_EMAIL) {
			msg = "이메일을 확인해주세요";
		} else if(result == Const.NO_PW) {
			msg = "비밀번호를 확인해주세요";
		}
		
		param.setMsg(msg);
		ra.addFlashAttribute("data", param);
		return "redirect:/user/login";
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
