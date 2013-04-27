package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.bean.YiDuiYi;
import com.common.util.PaginationSupport;
import com.dao.YiDuiYiDAO;


public class YiDuiYiDAOImpl extends Pagination implements YiDuiYiDAO{

	/**一对一保存*/
	public void saveYiDuiYi(YiDuiYi yiDuiYi){
		getHibernateTemplate().save(yiDuiYi);
	}
	/**一对一修改*/
	public void updateYiDuiYi(YiDuiYi yiDuiYi){
		getHibernateTemplate().update(yiDuiYi);
	}
	/**分页查询
	 * @param state 是否可用，0：不可用 1：可用
	 * @param gradeId 年级的id，查询全部年级输入null
	 * @param courseId 辅导课目的id，查询全部科目输入null
	 * @param currentPage 当前页码
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findByPageAndSql(String state,String gradeId,String courseId,int currentPage,int pageSize){
		StringBuffer sqlBuffer = new StringBuffer("FROM YiDuiYi WHERE state="+state);
		if(gradeId!=null){
			sqlBuffer.append(" AND gradeId='"+gradeId+"'");
		}
		if(courseId!=null){
			sqlBuffer.append(" AND courseId='"+courseId+"'");
		}
		sqlBuffer.append(" ORDER BY displayOrder DESC,publicDate DESC,createDate DESC");
		String sql = sqlBuffer.toString();
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**按id查询
	 * @param yiDuiYiId 一对一id
	 * */
	public YiDuiYi findYiDuiYiById(String yiDuiYiId){
		List<YiDuiYi> yiDuiYiList = getHibernateTemplate().find("FROM YiDuiYi WHERE id=?",yiDuiYiId);
		return yiDuiYiList.size()==0?null:yiDuiYiList.get(0);
	}
	/**删除教师名录
	 * @param yiDuiYiIds 教师名录id的字符串数组
	 * */
	public void delYiDuiYi(String[] yiDuiYiIds){
		List<YiDuiYi> yiDuiYiList = new ArrayList();
		for(int i=0;i<yiDuiYiIds.length;i++){
			List<YiDuiYi> yiDuiYi = getHibernateTemplate().find("FROM YiDuiYi WHERE id=?",yiDuiYiIds[i]);
			if(yiDuiYi.size()!=0){
				yiDuiYiList.add((YiDuiYi) yiDuiYi.get(0));
			}
		}
		if(yiDuiYiList!=null){
			getHibernateTemplate().deleteAll(yiDuiYiList);
		}
	}
}
