package com.service.impl;

import java.util.List;

import com.bean.AllTeacher;
import com.bean.GradeInfo;
import com.common.util.PaginationSupport;
import com.dao.AllTeacherDAO;
import com.service.AllTeacherService;

public class AllTeacherServiceImpl implements AllTeacherService {
	private AllTeacherDAO allTeacherDAO;

	/**教师名录保存*/
	public void saveAllTeacher(AllTeacher allTeacher){
		allTeacherDAO.saveAllTeacher(allTeacher);
	}
	/**教师名录修改*/
	public void updateAllTeacher(AllTeacher allTeacher){
		allTeacherDAO.updateAllTeacher(allTeacher);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize){
		return allTeacherDAO.findByPageAndSql(state, currentPage, pageSize);
	}
	/**按id查询
	 * @param allTeacherId 教师名录id
	 * */
	public AllTeacher findAllTeacherById(String allTeacherId){
		return allTeacherDAO.findAllTeacherById(allTeacherId);
	}
	/**查询全部教师(启用的)*/
	public List<AllTeacher> findAllTeacher(){
		return allTeacherDAO.findAllTeacher();
	}
	/**删除教师名录
	 * @param allTeacherId 教师名录id的字符串数组
	 * */
	public void delAllTeacher(String[] allTeacherIds){
		allTeacherDAO.delAllTeacher(allTeacherIds);
	}
	
	public AllTeacherDAO getAllTeacherDAO() {
		return allTeacherDAO;
	}
	public void setAllTeacherDAO(AllTeacherDAO allTeacherDAO) {
		this.allTeacherDAO = allTeacherDAO;
	}
	
	
}
