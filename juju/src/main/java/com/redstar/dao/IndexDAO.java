package com.redstar.dao;



import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("indexDAO")
public class IndexDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return selectList("index.boardList", map);
	}
}
