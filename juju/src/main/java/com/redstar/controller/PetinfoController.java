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
import com.redstar.service.PetinfoService;
import com.redstar.util.Util;

@Controller
public class PetinfoController {
	
	@Resource(name = "petinfoService")
	private PetinfoService petinfoService;
	
	@Autowired
	private ServletContext servletContext;
	
	@GetMapping("petinfo.do")
	public ModelAndView petinfo(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo");
		
		if (!map.containsKey("cate")) {
			map.put("cate", 1);
		}
		System.out.println(map.get("cate"));
		
		List<Map<String, Object>> p_no = petinfoService.pet_boardList(map.getMap());
		mv.addObject("p_no", p_no);
		mv.addObject("cate", map.get("cate"));
		return mv;
	}
	
	@GetMapping("/petwrite.do")
	public String petwrite() {
		return "petwrite";	
	}

	@PostMapping("/petwrite.do")
	public String petwrite(CommandMap map, HttpSession session, MultipartFile file) throws IOException {
			
			if (map.get("title") != null && map.get("content") != null && map.get("cate") != null) {
				map.put("id", session.getAttribute("id"));
				
				System.out.println(map.getMap());
				
				if(!file.isEmpty()) {
					String realPath = servletContext.getRealPath("resources/upload");
					String fileName = Util.save(realPath, file);
					map.put("file", fileName);
				}
				
				int result = petinfoService.pet_write(map.getMap());
				
				return "redirect:/petinfo.do?result=" + map.get("cate") + result;
			} else {
				return "redirect:/petwrite.do?error=1250";
			}
		} 
	
	
	@GetMapping("petinfo_detail.do")
	public ModelAndView petInfo_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo_detail");
		
		Map<String, Object> petdetail = petinfoService.petinfo_detail(map.getMap());
		mv.addObject("petdetail", petdetail);
		return mv;
	}
	
	@GetMapping("/petupdate.do")
	public ModelAndView update(HttpSession session, CommandMap map) {
		ModelAndView mv = new ModelAndView("redirect:/error.do?error=error");
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			if (map.containsKey("bno")) {
				Map<String, Object> pet_update = petinfoService.pet_detail(map.getMap());
				if (pet_update != null) {
					mv.addObject("pet_update", pet_update);
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

				int result = petinfoService.pet_update(map.getMap());

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
			petinfoService.pet_postDel(map.getMap());

			return "redirect:/petinfo.do";
		} else {
			return "redirect:/error.do";
		}

	}
	
	
}
