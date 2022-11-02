package com.redstar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redstar.dao.BoardDAO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public Map<String, Object> notice_detail(Map<String, Object> map) {
		return boardDAO.notice_detail(map);
	}

	@Override
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return boardDAO.boardList(map);
	}

	@Override
	public int write(Map<String, Object> map) {
		return boardDAO.write(map);
	}

	@Override
	public Map<String, Object> detail(Map<String, Object> map) {
		return boardDAO.detail(map);
	}

	@Override
	public int update(Map<String, Object> map) {
		return boardDAO.update(map);
	}

	@Override
	public void postDel(Map<String, Object> map) {
		boardDAO.postDel(map);
		
	}

	@Override
	public int totalCount(Map<String, Object> map) {
		return boardDAO.totalCount(map);
	}
	
	//detailAjax = 에이작스로 소통하기
	@Override
	public Map<String, Object> detailAjax(Map<String, Object> map) {
		return boardDAO.detailAjax(map);
	}
	
	
}
