package com.dao;

import java.util.ArrayList;
import java.util.List;

import com.bean.ProminentTeacher;
import com.common.util.PaginationSupport;

public interface ProTeacherDAO {
	/**优秀教师保存*/
	public void saveProTeacher(ProminentTeacher prominentTeacher);
	/**优秀教师修改*/
	public void updateProTeacher(ProminentTeacher prominentTeacher);
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize);
	/**按id查询
	 * @param proTeacherId 优秀教师id
	 * */
	public ProminentTeacher findProTeacherById(String proTeacherId);
	/**删除优秀教师
	 * @param proTeacherId 优秀教师id的字符串数组
	 * */
	public void delProTeacher(String[] proTeacherIds);
}
