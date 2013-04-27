package com.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.common.util.PaginationSupport;

public class Pagination extends HibernateDaoSupport {


	/**
	 * 分页查询
	 * @param hql sql查询语句
	 * @param currentPage 当前页
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findByPageAndSql(final String hql ,final int currentPage, final int pageSize){

		//通过一个HibernateCallback对象来执行查询
		PaginationSupport list = (PaginationSupport) getHibernateTemplate()
			.execute(new HibernateCallback()
		{
			//实现HibernateCallback接口必须实现的方法
			public PaginationSupport doInHibernate(Session session)
				throws HibernateException, SQLException
			{
				//执行Hibernate分页查询
				List result = session.createQuery(hql)
					.setFirstResult((currentPage-1)*pageSize)
					.setMaxResults(pageSize)
					.list();
				
				int totalCount=getHibernateTemplate().find(hql).size();
				PaginationSupport ps = new PaginationSupport(result,totalCount,currentPage, pageSize);
				return ps;
			}
		}
	);
		return list;
	}
	
	/**
	 * 同一篇文章分页查询,文章按</p>分成元素
	 * @param content 文章内容（必须包含</p>）
	 * @param currentPage 当前页
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findContentByPageAndSql(final String content ,final int currentPage, final int pageSize){
			String[] contentArray=content.split("</p>");
			List contentlist = new ArrayList();
		
			for(String s:contentArray){
				contentlist.add(s);
			}
			int totalCount = contentlist.size();
			PaginationSupport ps = new PaginationSupport(contentlist,totalCount,currentPage, pageSize);
			return ps;
	}
}
