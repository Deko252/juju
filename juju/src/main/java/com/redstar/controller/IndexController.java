package com.redstar.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;

/*get은 오픈 post은 히든*/

@Controller
public class IndexController {
		
	@GetMapping("index.do")
	public String index() {
		return "index";
	}
	
	@GetMapping("appo_detail.do")
	public ModelAndView appo_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("appo_detail");
		
		return mv;
	}
	
	@GetMapping("intro.do")
	public String intro() {
		return "intro";
	}
		
	@GetMapping("treat_detail_1.do")
	public ModelAndView treat_detail_1() {
		ModelAndView mv = new ModelAndView("treat_detail_1");
		
		return mv;
	}
	
	@GetMapping("treat_detail_2.do")
	public ModelAndView treat_detail_2() {
		ModelAndView mv = new ModelAndView("treat_detail_2");
		
		return mv;
	}
	
	@GetMapping("treat_detail_3.do")
	public ModelAndView treat_detail_3() {
		ModelAndView mv = new ModelAndView("treat_detail_3");
		
		return mv;
	}
	
	@GetMapping("info.do")
	public ModelAndView info() {
		ModelAndView mv = new ModelAndView("info");
		return mv;	
	}
	
	@GetMapping("petInfo_detail.do")
	public ModelAndView petInfo_detail() {
		ModelAndView mv = new ModelAndView("petInfo_detail");
		
		return mv;
	}
	
}
