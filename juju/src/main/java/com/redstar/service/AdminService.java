package com.redstar.service;

import java.util.List;
import java.util.Map;

public interface AdminService {

	List<Map<String, Object>> appoList(Map<String, Object> map);

	void postChange(Map<String, Object> map);
	
	int totalCount(Map<String, Object> map);

}
