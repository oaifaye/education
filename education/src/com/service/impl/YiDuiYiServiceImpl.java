package com.service.impl;

import com.bean.YiDuiYi;
import com.common.util.PaginationSupport;
import com.dao.YiDuiYiDAO;
import com.service.YiDuiYiService;

public class YiDuiYiServiceImpl implements YiDuiYiService {
	private YiDuiYiDAO yiDuiYiDAO;

	/**一对一保存*/
	public void saveYiDuiYi(YiDuiYi yiDuiYi){
		yiDuiYiDAO.saveYiDuiYi(yiDuiYi);
	}
	/**一对一修改*/
	public void updateYiDuiYi(YiDuiYi yiDuiYi){
		yiDuiYiDAO.updateYiDuiYi(yiDuiYi);
	}
	/**分页查询
	 * @param state 是否可用，0：不可用 1：可用
	 * @param gradeId 年级的id，查询全部年级输入null
	 * @param courseId 辅导课目的id，查询全部科目输入null
	 * @param currentPage 当前页码
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findByPageAndSql(String state,String gradeId,String courseId,int currentPage,int pageSize){
		return yiDuiYiDAO.findByPageAndSql(state, gradeId, courseId, currentPage, pageSize);
	}
	/**按id查询
	 * @param yiDuiYiId 一对一id
	 * */
	public YiDuiYi findYiDuiYiById(String yiDuiYiId){
		return yiDuiYiDAO.findYiDuiYiById(yiDuiYiId);
	}
	/**删除教师名录
	 * @param yiDuiYiIds 教师名录id的字符串数组
	 * */
	public void delYiDuiYi(String[] yiDuiYiIds){
		yiDuiYiDAO.delYiDuiYi(yiDuiYiIds);
	}
	
	
	public YiDuiYiDAO getYiDuiYiDAO() {
		return yiDuiYiDAO;
	}
	public void setYiDuiYiDAO(YiDuiYiDAO yiDuiYiDAO) {
		this.yiDuiYiDAO = yiDuiYiDAO;
	}
	
	

}
