package com.redstar.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("adminDAO")
public class AdminDAO extends AbstractDAO {
	

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> appoList(Map<String, Object> map) {
		return (List<Map<String, Object>>) selectList("admin.appoList", map);
	}

	public int totalCount(Map<String, Object> map) {
		return  (int) selectOne("admin.totalCount", map);
	}

	public void postChange(Map<String, Object> map) {
		update("admin.postChange", map);	
	}
}
