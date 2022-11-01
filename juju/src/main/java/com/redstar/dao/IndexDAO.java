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

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> pet_boardList(Map<String, Object> map) {
		return selectList("index.pet_boardList", map);
	}

	public int pet_wirte(Map<String, Object> map) {
		return (int) insert("index.petwrite", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> pet_detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("index.pet_detail", map);
	}

	public int pet_update(Map<String, Object> map) {
		return (int) update("index.pet_update", map);
	}

	public void pet_postDel(Map<String, Object> map) {
		update("index.pet_postDel", map);
		
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> petinfo_detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("petinfo_detail", map);
	}

	

	

}
