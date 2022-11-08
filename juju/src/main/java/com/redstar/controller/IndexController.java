package com.redstar.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.BoardService;
import com.redstar.service.IndexService;

/*get은 오픈 post은 히든*/

@Controller
public class IndexController {
	
	@Resource(name = "indexService")
	private IndexService indexService;


	
	@SuppressWarnings("unused")
	@Autowired
	private ServletContext servletContext;
		
	@GetMapping("index.do")
	public ModelAndView index(CommandMap map) {
		ModelAndView mv = new ModelAndView("index");
		
		List<Map<String, Object>> in_no = indexService.boardList(map.getMap());
		mv.addObject("in_no", in_no);
		
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
	
}
