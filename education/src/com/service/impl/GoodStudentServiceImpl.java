package com.service.impl;

import java.util.List;

import com.bean.GoodStudent;
import com.common.util.PaginationSupport;
import com.dao.GoodStudentDAO;
import com.service.GoodStudentService;

public class GoodStudentServiceImpl implements GoodStudentService {
	private GoodStudentDAO goodStudentDAO;

	/**明星学员保存*/
	public void saveGoodStudent(GoodStudent goodStudent){
		goodStudentDAO.saveGoodStudent(goodStudent);
	}
	/**明星学员修改*/
	public void updateGoodStudent(GoodStudent goodStudent){
		goodStudentDAO.updateGoodStudent(goodStudent);
	}
	/**分页查询
	 * @param state 是否可用，0：不可用 1：可用
	 * @param gradeId 年级的id，查询全部年级输入null
	 * @param courseId 辅导课目的id，查询全部科目输入null
	 * @param currentPage 当前页码
	 * @param pageSize 每页显示条数
	 * */
	public PaginationSupport findByPageAndSql(String state,String gradeId,String courseId,int currentPage,int pageSize){
		return goodStudentDAO.findByPageAndSql(state, gradeId, courseId, currentPage, pageSize);
	}
	/**按id查询
	 * @param goodStudentId 明星学员id
	 * */
	public GoodStudent findGoodStudentById(String goodStudentId){
		return goodStudentDAO.findGoodStudentById(goodStudentId);
	}
	/**查询全部明星学员(启用的)*/
	public List<GoodStudent> findAllGoodStudent(){
		return goodStudentDAO.findAllGoodStudent();
	}
	/**删除教师名录
	 * @param goodStudentIds 明星学员id的字符串数组
	 * */
	public void delGoodStudent(String[] goodStudentIds){
		goodStudentDAO.delGoodStudent(goodStudentIds);
	}
	public GoodStudentDAO getGoodStudentDAO() {
		return goodStudentDAO;
	}
	public void setGoodStudentDAO(GoodStudentDAO goodStudentDAO) {
		this.goodStudentDAO = goodStudentDAO;
	}
	
	
}
