package com.redstar.service;

import java.util.List;
import java.util.Map;

public interface IndexService {

	List<Map<String, Object>> boardList(Map<String, Object> map);

	List<Map<String, Object>> pet_boardList(Map<String, Object> map);

	int pet_write(Map<String, Object> map);

	Map<String, Object> pet_detail(Map<String, Object> map);

	int pet_update(Map<String, Object> map);

	void pet_postDel(Map<String, Object> map);

	Map<String, Object> petinfo_detail(Map<String, Object> map);

	


}
