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
import com.redstar.service.IndexService;
import com.redstar.util.Util;

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
	
	@GetMapping("petinfo.do")
	public ModelAndView petinfo(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo");
		
		List<Map<String, Object>> p_no = indexService.pet_boardList(map.getMap());
		mv.addObject("p_no", p_no);
		
		return mv;
	}
	
	@GetMapping("/petwrite.do")
	public String petwrite() {
		return "petwrite";	
	}

	@PostMapping("/petwrite.do")
	public String petwrite(CommandMap map, HttpSession session, MultipartFile file) throws IOException {
			
			if (map.get("title") != null && map.get("content") != null) {
				map.put("id", session.getAttribute("id"));
				
				if(!file.isEmpty()) {
					String realPath = servletContext.getRealPath("resources/upload");
					String fileName = Util.save(realPath, file);
					map.put("file", fileName);
				}
				
				int result = indexService.pet_write(map.getMap());

				return "redirect:/petinfo.do?result=" + result;
			} else {
				return "redirect:/petwrite.do?error=1250";
			}
		} 
	
	
	@GetMapping("petinfo_detail.do")
	public ModelAndView petInfo_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo_detail");
		
		Map<String, Object> petdetail = indexService.petinfo_detail(map.getMap());
		mv.addObject("petdetail", petdetail);
		
		return mv;
	}
	
	@GetMapping("/petupdate.do")
	public ModelAndView update(HttpSession session, CommandMap map) {
		ModelAndView mv = new ModelAndView("redirect:/error.do?error=error");
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			if (map.containsKey("bno")) {
				Map<String, Object> petdetail = indexService.pet_detail(map.getMap());
				if (petdetail != null) {
					mv.addObject("petdetail", petdetail);
					mv.setViewName("petupdate");
				}
			}
		}
		return mv;
	}

	@PostMapping("/petupdate.do")
	public String update(CommandMap map, HttpSession session) {
		if (session.getAttribute("id") != null) {
			if (map.containsKey("title") && map.containsKey("content") && map.containsKey("board_no")) {
				map.put("id", session.getAttribute("id"));

				int result = indexService.pet_update(map.getMap());

				return "redirect:/petinfo_detail.do?bno=" + map.get("board_no") + "&result=" + result;
			} else {
				return "redirect:/error.do";
			}
		} else {
			return "redirect:/error.do";
		}
	}
	
	@GetMapping("/petpostDel.do")
	public String postDel(CommandMap map, HttpSession session) {
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			indexService.pet_postDel(map.getMap());

			return "redirect:/petinfo.do";
		} else {
			return "redirect:/error.do";
		}

	}
	
}
