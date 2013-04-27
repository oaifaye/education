package com.service.impl;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

import com.bean.Manager;
import com.dao.ManagerDAO;
import com.service.ManagerService;

public class ManagerServiceImpl implements ManagerService {
	ManagerDAO managerDAO;

	/**
	 * 后台登录查询
	 * */
	public Manager getLoginPerson(String username, String password) {
		return managerDAO.getLoginPerson(username, password);
	}

	public ManagerDAO getManagerDAO() {
		return managerDAO;
	}

	public void setManagerDAO(ManagerDAO managerDAO) {
		this.managerDAO = managerDAO;
	}



}
