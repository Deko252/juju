package com.redstar.controller;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.redstar.common.CommandMap;
import com.redstar.service.AdminService;
import com.redstar.util.Util;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name = "adminService")
	private AdminService adminService;

	@GetMapping("/admin_appo.do")
	public ModelAndView admin_board(CommandMap map) {
		ModelAndView mv = new ModelAndView("admin/admin_appo");
		
		int pageNo = 1;
		if (map.containsKey("pageNo")) {
			pageNo = Util.strToInt((String) map.get("pageNo"));
		}

		// totalCount
		int totalCount = adminService.totalCount(map.getMap());

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(pageNo);
		paginationInfo.setRecordCountPerPage(10);
		paginationInfo.setPageSize(10);
		paginationInfo.setTotalRecordCount(totalCount);

		int startPage = paginationInfo.getFirstRecordIndex();// 0
		int lastPage = paginationInfo.getRecordCountPerPage();// 10

		map.put("startPage", startPage);
		map.put("lastPage", lastPage);

		List<Map<String, Object>> list = adminService.appoList(map.getMap());
		mv.addObject("list", list);
		mv.addObject("pageNo", pageNo);
		mv.addObject("paginationInfo", paginationInfo);
		
		return mv; 
	}
		
		@GetMapping("/postDel.do")
		public String postDel(CommandMap map) {
			map.put("del", 1);//1로 바꿔라
			adminService.postChange(map.getMap());
			return "redirect:/admin/admin_appo.do";
		}
		
		@GetMapping("/postRemove.do")
		public String postRemove(CommandMap map) {
			map.put("del", 0);//0으로 바꿔라
			adminService.postChange(map.getMap());
			return "redirect:/admin/admin_appo.do";	
		}
}
