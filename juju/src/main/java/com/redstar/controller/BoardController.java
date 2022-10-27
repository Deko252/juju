package com.redstar.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.BoardService;

@Controller
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;

	@Autowired
	private ServletContext servletContext;

	
	@GetMapping("notice.do")
	public ModelAndView notice(CommandMap map) {
		ModelAndView mv = new ModelAndView("notice");
		
		List<Map<String, Object>> list = boardService.boardList(map.getMap());
		mv.addObject("list", list);
		
		return mv;
	}
	
	@GetMapping("notice_detail.do")
	public ModelAndView notice_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("notice_detail");
		
		Map<String, Object> notice_detail = boardService.notice_detail(map.getMap());
		mv.addObject("notice_detail", notice_detail);
		return mv;
	}
	

}
