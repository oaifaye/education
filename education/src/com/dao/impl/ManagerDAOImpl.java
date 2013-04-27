package com.dao.impl;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.bean.Manager;
import com.dao.ManagerDAO;

public class ManagerDAOImpl extends HibernateDaoSupport implements ManagerDAO{

	/**
	 * 后台登录查询
	 * */
	public Manager getLoginPerson(String username, String password){
		Session session = this.getSession();
		Criteria crit = session.createCriteria(Manager.class);
		crit.add(Restrictions.eq("managerUserName", username));
		crit.add(Restrictions.eq("managerPassword", password));
		List<Manager> list = crit.list();
		return list.size() > 0 ? list.get(0) : null;
	}
}
