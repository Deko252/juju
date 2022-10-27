package com.redstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
		
	@GetMapping("notice.do")
	public ModelAndView notice() {
		ModelAndView mv = new ModelAndView("notice");
		return mv;
	}
	
	@GetMapping("notice_detail.do")
	public ModelAndView notice_detail() {
		ModelAndView mv = new ModelAndView("notice_detail");
		
		return mv;
	}
	
	@GetMapping("appo_detail.do")
	public ModelAndView appo_detail() {
		ModelAndView mv = new ModelAndView("appo_detail");
		
		return mv;
	}
	
	@GetMapping("petInfo_detail.do")
	public ModelAndView petInfo_detail() {
		ModelAndView mv = new ModelAndView("petInfo_detail");
		
		return mv;
	}
	
	@GetMapping("treat_detail1.do")
	public ModelAndView treat_detail1() {
		ModelAndView mv = new ModelAndView("treat_detail1");
		
		return mv;
	}
	
	@GetMapping("treat_detail2.do")
	public ModelAndView treat_detail2() {
		ModelAndView mv = new ModelAndView("treat_detail2");
		
		return mv;
	}
	
	@GetMapping("treat_detail3.do")
	public ModelAndView treat_detail3() {
		ModelAndView mv = new ModelAndView("treat_detail3");
		
		return mv;
	}
}
