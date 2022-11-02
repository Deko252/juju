package com.redstar.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("petinfoDAO")
public class PetinfoDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> pet_boardList(Map<String, Object> map) {
		return selectList("petinfo.pet_boardList", map);
	}

	public int pet_write(Map<String, Object> map) {
		return (int) insert("petinfo.pet_write", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> pet_detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("petinfo.pet_detail", map);
	}

	public int pet_update(Map<String, Object> map) {
		return (int) update("petinfo.pet_update", map);
	}

	public void pet_postDel(Map<String, Object> map) {
		update("petinfo.pet_postDel", map);
		
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> petinfo_detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("petinfo_detail", map);
	}
}
