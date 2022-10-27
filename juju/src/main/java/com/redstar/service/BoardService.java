package com.redstar.service;

import java.util.List;
import java.util.Map;

public interface BoardService {

	Map<String, Object> notice_detail(Map<String, Object> map);

	List<Map<String, Object>> boardList(Map<String, Object> map);

}
