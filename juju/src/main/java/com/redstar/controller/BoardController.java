package com.redstar.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.BoardService;
import com.redstar.util.Util;

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
	
	@GetMapping("/write.do")
	public String write() {
		return "write";	
	}

	@PostMapping("/write.do")
	public String write(CommandMap map, HttpSession session, MultipartFile file) throws IOException {
			
			if (map.get("title") != null && map.get("content") != null) {
				map.put("id", session.getAttribute("id"));

					String realPath = servletContext.getRealPath("resources/upload");
					String fileName = Util.save(realPath, file);
					map.put("file", fileName);
				
				int result = boardService.write(map.getMap());
				System.out.println(result);

				return "redirect:/notice.do?result=" + result;
			} else {
				return "redirect:/write.do?error=1250";
			}
		} 
	
	
	
	@GetMapping("notice_detail.do")
	public ModelAndView notice_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("notice_detail");
		
		Map<String, Object> notice_detail = boardService.notice_detail(map.getMap());
		mv.addObject("notice_detail", notice_detail);
		return mv;
	}
	
	@GetMapping("/update.do")
	public ModelAndView update(HttpSession session, CommandMap map) {
		ModelAndView mv = new ModelAndView("redirect:/error.do?error=error");
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			if (map.containsKey("bno")) {
				Map<String, Object> detail = boardService.detail(map.getMap());
				if (detail != null) {
					mv.addObject("detail", detail);
					mv.setViewName("update");
				}
			}
		}
		return mv;
	}

	@PostMapping("/update.do")
	public String update(CommandMap map, HttpSession session) {
		if (session.getAttribute("id") != null) {
			if (map.containsKey("title") && map.containsKey("content") && map.containsKey("board_no")) {
				map.put("id", session.getAttribute("id"));

				int result = boardService.update(map.getMap());

				return "redirect:/notice_detail.do?bno=" + map.get("board_no") + "&result=" + result;
			} else {
				return "redirect:/error.do";
			}
		} else {
			return "redirect:/error.do";
		}
	}
	
	@GetMapping("/postDel.do")
	public String postDel(CommandMap map, HttpSession session) {
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			boardService.postDel(map.getMap());
		

			return "redirect:/notice.do";
		} else {
			return "redirect:/error.do";
		}

	}

}
