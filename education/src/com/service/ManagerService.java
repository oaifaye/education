package com.service;

import com.bean.Manager;

public interface ManagerService {
	/**
	 * 后台登录查询
	 * */
	public Manager getLoginPerson(String username, String password);
}
