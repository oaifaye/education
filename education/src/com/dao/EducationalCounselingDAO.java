package com.dao;

import java.util.List;

import com.bean.EducationalCounseling;
import com.common.util.PaginationSupport;

public interface EducationalCounselingDAO {
	/**教育咨询保存*/
	public void saveEducationalCounseling(EducationalCounseling educationalCounseling);
	/**教育咨询修改*/
	public void updateEducationalCounseling(EducationalCounseling educationalCounseling);
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize);
	/**分页查询
	 * @param state 是否可用，0不可用，1可用
	 * @param educationalCounselingId 教育咨询的2级类型
	 * */
	public PaginationSupport findByPageAndSql(String state,String eduCounselingSecondId,int currentPage,int pageSize);
	/**按id查询
	 * @param educationalCounselingId 教育咨询id
	 * */
	public EducationalCounseling findEducationalCounseling(String educationalCounselingId);
	/**按教育资讯二级查询文章*/
	public List<EducationalCounseling> findEducationalCounselingBySecondId(String EduCounselingSecondId);
	/**删除教育咨询
	 * @param educationalCounselingIds 教育咨询id的字符串数组
	 * */
	public void delEducationalCounseling(String[] educationalCounselingIds);
}
