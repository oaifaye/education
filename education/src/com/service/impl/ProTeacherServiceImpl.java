package com.service.impl;

import com.bean.ProminentTeacher;
import com.common.util.PaginationSupport;
import com.dao.ProTeacherDAO;
import com.service.ProTeacherService;

public class ProTeacherServiceImpl implements ProTeacherService {
	private ProTeacherDAO proTeacherDAO;

	/**优秀教师保存*/
	public void saveProTeacher(ProminentTeacher prominentTeacher){
		proTeacherDAO.saveProTeacher(prominentTeacher);
	}
	/**优秀教师修改*/
	public void updateProTeacher(ProminentTeacher prominentTeacher){
		proTeacherDAO.updateProTeacher(prominentTeacher);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize){
		return proTeacherDAO.findByPageAndSql(state, currentPage, pageSize);
	}
	/**按id查询
	 * @param proTeacherId 优秀教师id
	 * */
	public ProminentTeacher findProTeacherById(String proTeacherId){
		return proTeacherDAO.findProTeacherById(proTeacherId);
	}
	/**删除优秀教师
	 * @param proTeacherId 优秀教师id的字符串数组
	 * */
	public void delProTeacher(String[] proTeacherIds){
		proTeacherDAO.delProTeacher(proTeacherIds);
	}
	
	
	public ProTeacherDAO getProTeacherDAO() {
		return proTeacherDAO;
	}
	public void setProTeacherDAO(ProTeacherDAO proTeacherDAO) {
		this.proTeacherDAO = proTeacherDAO;
	}
	
	
}
