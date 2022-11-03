package com.redstar.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.PetinfoService;
import com.redstar.util.Util;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;

@Controller
public class PetinfoController {
	
	@Resource(name = "petinfoService")
	private PetinfoService petinfoService;
	
	@Autowired
	private ServletContext servletContext;
	
	
	/* 펫인포 메인 */
	@GetMapping("petinfo.do")
	public ModelAndView petinfo(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo");
		
		if (!map.containsKey("cate")) {
			map.put("cate", 1);
		}
		
		int pageNo = 1;
		if (map.containsKey("pageNo")) {
			pageNo = Util.strToInt((String) map.get("pageNo"));
		}

		// totalCount
		int totalCount = petinfoService.totalCount(map.getMap());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(pageNo);
		paginationInfo.setRecordCountPerPage(5);
		paginationInfo.setPageSize(5);
		paginationInfo.setTotalRecordCount(totalCount);

		int startPage = paginationInfo.getFirstRecordIndex();// 0
		int lastPage = paginationInfo.getRecordCountPerPage();// 10

		map.put("startPage", startPage);
		map.put("lastPage", lastPage);
		
		
		List<Map<String, Object>> p_no = petinfoService.pet_boardList(map.getMap());
		mv.addObject("p_no", p_no);
		mv.addObject("cate", map.get("cate"));
		mv.addObject("pageNo", pageNo);
		mv.addObject("paginationInfo", paginationInfo);
		return mv;
	}
	
	/* 펫인포 게시글 보기 */
	@GetMapping("petinfo_detail.do")
	public ModelAndView petInfo_detail(CommandMap map) {
		ModelAndView mv = new ModelAndView("petinfo_detail");
		
		Map<String, Object> petdetail = petinfoService.petinfo_detail(map.getMap());
		mv.addObject("petdetail", petdetail);
		return mv;
	}
	
	
	
	/* 펫인포 글작성 */
	@GetMapping("/petwrite.do")
	public String petwrite() {
		return "petwrite";	
	}

	@PostMapping("/petwrite.do")
	public String petwrite(CommandMap map, HttpSession session, MultipartFile file) throws IOException {
			
			if (map.get("title") != null && map.get("content") != null && map.get("cate") != null) {
				map.put("id", session.getAttribute("id"));
				
				if(!file.isEmpty()) {
					String realPath = servletContext.getRealPath("resources/upload");
					String fileName = Util.save(realPath, file);
					map.put("file", fileName);
				}
				
				int result = petinfoService.pet_write(map.getMap());
				System.out.println(map.getMap());
				
				return "redirect:/petinfo.do?cate="+ map.get("cate") +"&result=" + result;
			} else {
				return "redirect:/petwrite.do?error=1250";
			}
		} 
	
	
	
		/* 펫인포 글수정 */
	@GetMapping("/petupdate.do")
	public ModelAndView pet_update(HttpSession session, CommandMap map) {
		ModelAndView mv = new ModelAndView("redirect:/error.do?error=error");
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			if (map.containsKey("bno")) {
				Map<String, Object> pet_updetail = petinfoService.pet_updetail(map.getMap());
				System.out.println(pet_updetail);
				if (pet_updetail != null) {
					mv.addObject("pet_updetail", pet_updetail);
					mv.setViewName("petupdate");	
				}
			}
		}
		return mv;
	}

	@PostMapping("/petupdate.do")
	public String petupdate(CommandMap map, HttpSession session) {
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
	
	
	/* 펫인포 삭제 */
	@GetMapping("/petpostDel.do")
	public String postDel(CommandMap map, HttpSession session) {
		if (session.getAttribute("id") != null) {
			map.put("id", session.getAttribute("id"));
			petinfoService.pet_postDel(map.getMap());

			return "redirect:/petinfo.do?cate=" + map.get("cate");
		} else {
			return "redirect:/error.do";
		}

	}
	
	
}
