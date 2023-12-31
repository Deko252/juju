package com.redstar.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> login(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("login.login", map);
	}

	public int appo_detail(Map<String, Object> map) {		
		return (int) insert("login.appo_detail", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> appo_count(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("login.appo_count", map);
	}

}
