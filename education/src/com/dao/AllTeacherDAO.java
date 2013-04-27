package com.dao;

import java.util.List;

import com.bean.AllTeacher;
import com.common.util.PaginationSupport;

public interface AllTeacherDAO {
	/**教师名录保存*/
	public void saveAllTeacher(AllTeacher allTeacher);
	/**教师名录修改*/
	public void updateAllTeacher(AllTeacher allTeacher);
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize);
	/**按id查询
	 * @param allTeacherId 教师名录id
	 * */
	public AllTeacher findAllTeacherById(String allTeacherId);
	/**查询全部教师(启用的)*/
	public List<AllTeacher> findAllTeacher();
	/**删除教师名录
	 * @param allTeacherId 教师名录id的字符串数组
	 * */
	public void delAllTeacher(String[] allTeacherIds);
}
