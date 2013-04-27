package com.dao;

import com.bean.Manager;

public interface ManagerDAO {
	/**
	 * 后台登录查询
	 * */
	public Manager getLoginPerson(String username, String password);
}
