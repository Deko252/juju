package com.redstar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redstar.dao.IndexDAO;

@Service("indexService")
public class IndexServiceImpl implements IndexService {
	
	@Autowired
	private IndexDAO indexDAO;

	@Override
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return indexDAO.boardList(map);
	}

	@Override
	public List<Map<String, Object>> pet_boardList(Map<String, Object> map) {
		return indexDAO.pet_boardList(map);
	}

	@Override
	public int pet_write(Map<String, Object> map) {
		return indexDAO.pet_wirte(map);
	}

	@Override
	public Map<String, Object> pet_detail(Map<String, Object> map) {
		return indexDAO.pet_detail(map);
	}

	@Override
	public int pet_update(Map<String, Object> map) {
		return indexDAO.pet_update(map);
	}

	@Override
	public void pet_postDel(Map<String, Object> map) {
		indexDAO.pet_postDel(map);
		
	}

	@Override
	public Map<String, Object> petinfo_detail(Map<String, Object> map) {
		return indexDAO.petinfo_detail(map);
	}

	

	

}
