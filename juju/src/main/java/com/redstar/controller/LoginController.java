package com.redstar.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.LoginService;

@Controller
public class LoginController {

	@Resource(name = "loginService")
	private LoginService loginService;

	@GetMapping("/admin_login.do")
	public String login() {
		return "./admin/admin_login";
	}

	@PostMapping("/admin_login.do")
	public String login(CommandMap map, HttpSession session) {
		System.out.println(map.getMap());// {pw=01234567, id=jumjin}
		//서비스에게 일 시키기
		Map<String, Object> login = loginService.login(map.getMap());
		
		
		if(String.valueOf(login.get("count")).equals("0")) {
			System.out.println("일치하지 않습니다.");
			
			return "redirect:/login.do?error=2580";
			
		} else {			
				//세션도 만들어주세요.
				session.setAttribute("name", login.get("b_name"));
				session.setAttribute("id", map.get("id"));
				System.out.println("로그인" + map.getMap());
				return "redirect:/index.do";
		}
	}
	
	@GetMapping("/logout.do")
	public String logout(HttpSession session) {
		//세션 종료
		//session.invalidate();//전체 종료
		if(session.getAttribute("id") != null) {			
			session.removeAttribute("id");
		}
		if(session.getAttribute("name") != null) {
			session.removeAttribute("name");
		}
		
		System.out.println("로그아웃");
		
		return "redirect:/index.do";
	}
	
	
}
