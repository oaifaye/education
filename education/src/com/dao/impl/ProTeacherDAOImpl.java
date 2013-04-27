package com.dao.impl;

import java.util.ArrayList;
import java.util.List;
import com.bean.ProminentTeacher;
import com.common.util.PaginationSupport;
import com.dao.ProTeacherDAO;

public class ProTeacherDAOImpl extends Pagination implements ProTeacherDAO{
	/**优秀教师保存*/
	public void saveProTeacher(ProminentTeacher prominentTeacher){
		getHibernateTemplate().save(prominentTeacher);
	}
	/**优秀教师修改*/
	public void updateProTeacher(ProminentTeacher prominentTeacher){
		getHibernateTemplate().update(prominentTeacher);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize) {
		String sql = "FROM ProminentTeacher WHERE state="+state+" ORDER BY displayOrder DESC,publicDate DESC,createDate DESC";
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**按id查询
	 * @param proTeacherId 优秀教师id
	 * */
	public ProminentTeacher findProTeacherById(String proTeacherId){
		List<ProminentTeacher> proTeacherList = getHibernateTemplate().find("FROM ProminentTeacher WHERE id=?",proTeacherId);
		return proTeacherList.size() > 0 ? proTeacherList.get(0) : null;
	}
	/**删除优秀教师
	 * @param proTeacherId 优秀教师id的字符串数组
	 * */
	public void delProTeacher(String[] proTeacherIds){
		List<ProminentTeacher> allProTeacherList = new ArrayList();
		for(int i=0;i<proTeacherIds.length;i++){
			List<ProminentTeacher> proTeacherList = getHibernateTemplate().find("FROM ProminentTeacher WHERE id=?",proTeacherIds[i]);
			if(proTeacherList.size()!=0){
				allProTeacherList.add((ProminentTeacher) proTeacherList.get(0));
			}
		}
		if(allProTeacherList!=null){
			getHibernateTemplate().deleteAll(allProTeacherList);
		}
	}
}
