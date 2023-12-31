package com.redstar.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

	Map<String, Object> notice_detail(Map<String, Object> map);

	List<Map<String, Object>> boardList(Map<String, Object> map);

	int write(Map<String, Object> map);

	Map<String, Object> detail(Map<String, Object> map);

	int update(Map<String, Object> map);

	void postDel(Map<String, Object> map);

	int totalCount(Map<String, Object> map);

	Map<String, Object> detailAjax(Map<String, Object> map);
	
	Map<String, Object> petdetailAjax(Map<String, Object> map);
}
