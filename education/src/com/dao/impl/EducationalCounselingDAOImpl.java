package com.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.bean.EducationalCounseling;
import com.common.util.PaginationSupport;
import com.dao.EducationalCounselingDAO;

public class EducationalCounselingDAOImpl extends Pagination implements EducationalCounselingDAO{
	private EducationalCounseling educationalCounseling;
	/**教育咨询保存*/
	public void saveEducationalCounseling(EducationalCounseling educationalCounseling){
		getHibernateTemplate().save(educationalCounseling);
	}
	/**教育咨询修改*/
	public void updateEducationalCounseling(EducationalCounseling educationalCounseling){
		getHibernateTemplate().update(educationalCounseling);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize){
		String sql = "FROM EducationalCounseling WHERE state="+state+" ORDER BY displayOrder DESC,publicDate DESC,createDate DESC";
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**分页查询
	 * @param state 是否可用，0不可用，1可用
	 * @param educationalCounselingId 教育咨询的2级类型
	 * */
	public PaginationSupport findByPageAndSql(String state,String eduCounselingSecondId,int currentPage,int pageSize){
		String sql = "FROM EducationalCounseling WHERE state='"+state+"' and eduCounselingSecondId = '"+eduCounselingSecondId+"' ORDER BY displayOrder DESC,publicDate DESC,createDate DESC";
		return super.findByPageAndSql(sql, currentPage, pageSize);
	}
	/**按id查询
	 * @param educationalCounselingId 教育咨询id
	 * */
	public EducationalCounseling findEducationalCounseling(String educationalCounselingId){
		List<EducationalCounseling> educationalCounselingList = getHibernateTemplate().find("FROM EducationalCounseling WHERE id=?",educationalCounselingId);
		return educationalCounselingList.size()==0?null:educationalCounselingList.get(0);
	}
	
	/**按教育资讯二级查询文章*/
	public List<EducationalCounseling> findEducationalCounselingBySecondId(String EduCounselingSecondId){
		List<EducationalCounseling> educationalCounselingList = getHibernateTemplate().find("FROM EducationalCounseling WHERE state='1' AND EduCounselingSecondID=? ORDER BY displayOrder DESC,publicDate DESC,createDate DESC",EduCounselingSecondId);
		return educationalCounselingList;
	}
	
	/**删除教育咨询
	 * @param educationalCounselingIds 教育咨询id的字符串数组
	 * */
	@SuppressWarnings("unchecked")
	public void delEducationalCounseling(String[] educationalCounselingIds){
		List<EducationalCounseling> allEducationalCounselingList = new ArrayList();
		for(int i=0;i<educationalCounselingIds.length;i++){
			List<EducationalCounseling> educationalCounselingList = getHibernateTemplate().find("FROM EducationalCounseling WHERE id=?",educationalCounselingIds[i]);
			if(educationalCounselingList.size()!=0){
				allEducationalCounselingList.add((EducationalCounseling) educationalCounselingList.get(0));
			}
		}
		if(allEducationalCounselingList!=null){
			getHibernateTemplate().deleteAll(allEducationalCounselingList);
		}
	}
	
	
	public EducationalCounseling getEducationalCounseling() {
		return educationalCounseling;
	}
	public void setEducationalCounseling(EducationalCounseling educationalCounseling) {
		this.educationalCounseling = educationalCounseling;
	}
	
	
}
