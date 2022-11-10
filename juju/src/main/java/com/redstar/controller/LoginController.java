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
			
			return "redirect:/admin_login.do?error=2580";
			
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
	
	@GetMapping("/appo_detail.do")
	public String appo_detail() {		
		return "appo_detail";
	}
	
	@PostMapping("/appo_detail.do")
	public String appo_detail(CommandMap map) {
		//사용자가 입력한 데이터를 데이터베이스에 저장하고 페이지 이동하는 메소드
		System.out.println(map.getMap());
		//{name=po1, pw2=01234657, id=poseidon1, pw1=01234567, email=email@email.co.kr}
		
		Map<String, Object> appo_count = loginService.appo_count(map.getMap());
		System.out.println(appo_count);
		if(Integer.parseInt(String.valueOf(appo_count.get("count"))) > 2) {
			int result = 0;			
			return "redirect:/index.do?result=" + result;				
		}else {		
			int result = loginService.appo_detail(map.getMap());
			//System.out.println("결과는 : " + result);
			return "redirect:/index.do?result=" + result;
		}
			
	}
	
	
	
}
