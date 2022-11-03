package com.redstar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redstar.dao.PetinfoDAO;

@Service("petinfoService")
public class PetinfoServiceImpl implements PetinfoService {

	@Autowired
	private PetinfoDAO petinfoDAO;
	
	@Override
	public List<Map<String, Object>> pet_boardList(Map<String, Object> map) {
		return petinfoDAO.pet_boardList(map);
	}

	@Override
	public int pet_write(Map<String, Object> map) {
		return petinfoDAO.pet_write(map);
	}

	@Override
	public Map<String, Object> pet_detail(Map<String, Object> map) {
		return petinfoDAO.pet_detail(map);
	}

	@Override
	public int pet_update(Map<String, Object> map) {
		return petinfoDAO.pet_update(map);
	}

	@Override
	public void pet_postDel(Map<String, Object> map) {
		petinfoDAO.pet_postDel(map);
		
	}

	@Override
	public Map<String, Object> petinfo_detail(Map<String, Object> map) {
		return petinfoDAO.petinfo_detail(map);
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		return petinfoDAO.totalCount(map);
	}
	
}
