package com.redstar.service;

import java.util.List;
import java.util.Map;

public interface PetinfoService {
	
	List<Map<String, Object>> pet_boardList(Map<String, Object> map);

	int pet_write(Map<String, Object> map);

	Map<String, Object> pet_updetail(Map<String, Object> map);

	int pet_update(Map<String, Object> map);

	void pet_postDel(Map<String, Object> map);

	Map<String, Object> petinfo_detail(Map<String, Object> map);

	int totalCount(Map<String, Object> map);
}
