package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.bean.AllTeacher;
import com.common.util.PaginationSupport;
import com.dao.AllTeacherDAO;

public class AllTeacherDAOImpl extends Pagination implements AllTeacherDAO{

	/**教师名录保存*/
	public void saveAllTeacher(AllTeacher allTeacher){
		getHibernateTemplate().save(allTeacher);
	}
	/**教师名录修改*/
	public void updateAllTeacher(AllTeacher allTeacher){
		getHibernateTemplate().update(allTeacher);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize){
		String sql = "FROM AllTeacher WHERE state="+state+" ORDER BY displayOrder DESC,publicDate DESC,createDate DESC";
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**按id查询
	 * @param allTeacherId 教师名录id
	 * */
	public AllTeacher findAllTeacherById(String allTeacherId){
		List<AllTeacher> allTeacherList = getHibernateTemplate().find("FROM AllTeacher WHERE id=?",allTeacherId);
		return allTeacherList.size()==0?null:allTeacherList.get(0);
	}
	/**查询全部教师(启用的)*/
	public List<AllTeacher> findAllTeacher(){
		List<AllTeacher> allTeacherList = getHibernateTemplate().find("FROM AllTeacher WHERE state='1' ORDER BY publicDate DESC,createDate DESC");
		return allTeacherList.size()==0?null:allTeacherList;
	}
	/**删除教师名录
	 * @param allTeacherId 教师名录id的字符串数组
	 * */
	public void delAllTeacher(String[] allTeacherIds){
		List<AllTeacher> allTeacherList = new ArrayList();
		for(int i=0;i<allTeacherIds.length;i++){
			List<AllTeacher> teacherList = getHibernateTemplate().find("FROM AllTeacher WHERE id=?",allTeacherIds[i]);
			if(teacherList.size()!=0){
				allTeacherList.add((AllTeacher) teacherList.get(0));
			}
		}
		if(allTeacherList!=null){
			getHibernateTemplate().deleteAll(allTeacherList);
		}
	}
}
