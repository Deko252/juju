package com.redstar.service;

import java.util.Map;

public interface LoginService {

	Map<String, Object> login(Map<String, Object> map);

	int appo_detail(Map<String, Object> map);

	Map<String, Object> appo_count(Map<String, Object> map);
	
}
