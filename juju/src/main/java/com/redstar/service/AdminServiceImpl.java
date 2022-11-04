package com.redstar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redstar.dao.AdminDAO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public List<Map<String, Object>> appoList(Map<String, Object> map) {
		return adminDAO.appoList(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		return adminDAO.totalCount(map);
	}

	@Override
	public void postChange(Map<String, Object> map) {
		adminDAO.postChange(map);
	}	

}
