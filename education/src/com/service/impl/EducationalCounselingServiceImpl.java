package com.service.impl;

import java.util.List;

import com.bean.EducationalCounseling;
import com.common.util.PaginationSupport;
import com.common.util.PaginationSupport_content;
import com.dao.EducationalCounselingDAO;
import com.service.EducationalCounselingService;

public class EducationalCounselingServiceImpl implements EducationalCounselingService{
	private EducationalCounselingDAO educationalCounselingDAO;
	/**教育咨询保存*/
	public void saveEducationalCounseling(EducationalCounseling educationalCounseling){
		educationalCounselingDAO.saveEducationalCounseling(educationalCounseling);
	}
	/**教育咨询修改*/
	public void updateEducationalCounseling(EducationalCounseling educationalCounseling){
		educationalCounselingDAO.updateEducationalCounseling(educationalCounseling);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(String state,int currentPage,int pageSize){
		return educationalCounselingDAO.findByPageAndSql(state, currentPage, pageSize);
	}
	/**分页查询
	 * @param state 是否可用，0不可用，1可用
	 * @param educationalCounselingId 教育咨询的2级类型
	 * */
	public PaginationSupport findByPageAndSql(String state,String eduCounselingSecondId,int currentPage,int pageSize){
		return educationalCounselingDAO.findByPageAndSql(state, eduCounselingSecondId, currentPage, pageSize);
	}
	/**文章内容分页查询*/
	public PaginationSupport_content findContentByPageAndSql(String educationalCounselingId,int currentPage,int pageSize){
		String content;
		int totalCount;
		EducationalCounseling educationalCounseling = educationalCounselingDAO.findEducationalCounseling(educationalCounselingId);
		if(educationalCounseling.getContent().contains("<br />")){//判断文章内容是否含有</p>
			String[] contentArray=educationalCounseling.getContent().split("<br />");
			StringBuffer contentBuffer = new StringBuffer();
			int m;
			totalCount=contentArray.length;
			if(currentPage*pageSize-1>totalCount){
				m=totalCount-1;
			}else{
				m=currentPage*pageSize-1;
			}
			for(int s=(currentPage-1)*pageSize ; s<=m ; s++){
				contentBuffer.append(contentArray[s]+"<br />");
			}
			content = contentBuffer.toString();
			
		}else{
			content=educationalCounseling.getContent();
			totalCount=1;
		}
		PaginationSupport_content paginationSupportContent = new PaginationSupport_content(content, totalCount,  currentPage, pageSize);
		return paginationSupportContent;
	}
	/**按id查询
	 * @param educationalCounselingId 教育咨询id
	 * */
	public EducationalCounseling findEducationalCounseling(String educationalCounselingId){
		return educationalCounselingDAO.findEducationalCounseling(educationalCounselingId);
	}
	
	/**按教育资讯二级查询文章*/
	public List<EducationalCounseling> findEducationalCounselingBySecondId(String EduCounselingSecondId){
		return educationalCounselingDAO.findEducationalCounselingBySecondId(EduCounselingSecondId);
	}
	
	/**删除教育咨询
	 * @param educationalCounselingIds 教育咨询id的字符串数组
	 * */
	public void delEducationalCounseling(String[] educationalCounselingIds){
		educationalCounselingDAO.delEducationalCounseling(educationalCounselingIds);
	}
	
	
	public EducationalCounselingDAO getEducationalCounselingDAO() {
		return educationalCounselingDAO;
	}
	public void setEducationalCounselingDAO(
			EducationalCounselingDAO educationalCounselingDAO) {
		this.educationalCounselingDAO = educationalCounselingDAO;
	}
	
	
}
