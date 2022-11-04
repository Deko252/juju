package com.redstar.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> notice_detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("notice_detail", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> boardList(Map<String, Object> map) {
		return selectList("board.boardList", map);
	}

	public int write(Map<String, Object> map) {
		return (int) insert("board.write", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> detail(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("board.detail", map);
	}

	public int update(Map<String, Object> map) {
		return (int) update("board.update", map);
	}

	public void postDel(Map<String, Object> map) {
		update("board.postDel", map);
		
	}

	public int totalCount(Map<String, Object> map) {
		return (int) selectOne("board.totalCount", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> detailAjax(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("board.detailAjax", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> petdetailAjax(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("board.petdetailAjax", map);
	}

	
	
}
