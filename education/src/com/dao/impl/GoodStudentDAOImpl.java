package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.bean.AllTeacher;
import com.bean.GoodStudent;
import com.common.util.PaginationSupport;
import com.dao.GoodStudentDAO;

public class GoodStudentDAOImpl extends Pagination implements GoodStudentDAO{
	/**明星学员保存*/
	public void saveGoodStudent(GoodStudent goodStudent){
		getHibernateTemplate().save(goodStudent);
	}
	/**明星学员修改*/
	public void updateGoodStudent(GoodStudent goodStudent){
		getHibernateTemplate().update(goodStudent);
	}
	/**分页查询
	 * @param state 是否可用，0：不可用 1：可用
	 * @param gradeId 年级的id，查询全部年级输入null
	 * @param courseId 辅导课目的id，查询全部科目输入null
	 * @param currentPage 当前页码
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findByPageAndSql(String state,String gradeId,String courseId,int currentPage,int pageSize){
		StringBuffer sqlBuffer = new StringBuffer("FROM GoodStudent WHERE state="+state);
		if(gradeId!=null&&gradeId!=""){
			sqlBuffer.append(" AND gradeId='"+gradeId+"'");
		}
		if(courseId!=null&&courseId!=""){
			sqlBuffer.append(" AND courseId='"+courseId+"'");
		}
		sqlBuffer.append(" ORDER BY displayOrder DESC,publicDate DESC,createDate DESC");
		String sql = sqlBuffer.toString();
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**按id查询
	 * @param goodStudentId 明星学员id
	 * */
	public GoodStudent findGoodStudentById(String goodStudentId){
		List<GoodStudent> goodStudentList = getHibernateTemplate().find("FROM GoodStudent WHERE id=?",goodStudentId);
		return goodStudentList.size()==0?null:goodStudentList.get(0);
	}
	
	/**查询全部明星学员(启用的)*/
	public List<GoodStudent> findAllGoodStudent(){
		List<GoodStudent> goodStudentList = getHibernateTemplate().find("FROM GoodStudent WHERE state='1' ORDER BY publicDate DESC,createDate DESC");
		return goodStudentList.size()==0?null:goodStudentList;
	}
	/**删除教师名录
	 * @param goodStudentIds 明星学员id的字符串数组
	 * */
	@SuppressWarnings("unchecked")
	public void delGoodStudent(String[] goodStudentIds){
		List<GoodStudent> allGoodStudentList = new ArrayList();
		for(int i=0;i<goodStudentIds.length;i++){
			List<GoodStudent> goodStudentList = getHibernateTemplate().find("FROM GoodStudent WHERE id=?",goodStudentIds[i]);
			if(goodStudentList.size()!=0){
				allGoodStudentList.add((GoodStudent) goodStudentList.get(0));
			}
		}
		if(allGoodStudentList!=null){
			getHibernateTemplate().deleteAll(allGoodStudentList);
		}
	}
}
