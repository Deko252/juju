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
	
}
