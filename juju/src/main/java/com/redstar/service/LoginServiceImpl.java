package com.redstar.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redstar.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDAO loginDAO;

	@Override
	public Map<String, Object> login(Map<String, Object> map) {
		return loginDAO.login(map);
	}

	@Override
	public int appo_detail(Map<String, Object> map) {
		return loginDAO.appo_detail(map);
	}

}
