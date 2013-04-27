package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.EduCounselingFirstInfo;
import com.bean.EduCounselingSecondInfo;
import com.bean.GradeInfo;
import com.bean.RegionFirstInfo;
import com.bean.RegionSecondInfo;
import com.dao.InfoDAO;

public class InfoDAOImpl extends HibernateDaoSupport implements InfoDAO{
	/**
	 * 添加大区
	 * */
	public void saveRegFirst(RegionFirstInfo regionFirstInfo){
		
		getHibernateTemplate().save(regionFirstInfo);
	}
	/**
	 * 查询全部大区
	 * */
	@SuppressWarnings("unchecked")
	public List<RegionFirstInfo> findAllRegionFirstInfo() {
		return getHibernateTemplate().find("FROM RegionFirstInfo");
	}
	/**
	 * 添加地区
	 * */
	public void saveRegSecond(RegionSecondInfo regionSecondInfo) {
		getHibernateTemplate().save(regionSecondInfo);
	}
	/**
	 * 按id删除地区
	 **/
	@SuppressWarnings("unchecked")
	public void delRegSecond(String regSecondId){
		List<RegionSecondInfo> regSecond = getHibernateTemplate().find("FROM RegionSecondInfo WHERE id=?",regSecondId);
			if(regSecond.size()!=0){
				getHibernateTemplate().delete(regSecond.get(0));
			}
	}
	/**查询所有地区*/
	public List<RegionSecondInfo> findAllRegionSecondInfo(){
		return getHibernateTemplate().find("FROM RegionSecondInfo");
	}
	/**
	 * 按大区id查询地区
	 * */
	@SuppressWarnings("unchecked")
	public List<RegionSecondInfo> findRegionSecondInfoByFirst(String regFirstId) {
		return getHibernateTemplate().find("FROM RegionSecondInfo WHERE regionFirstInfo.id=?",regFirstId );
	}
	
	/**
	 * 添加校区
	 * */
	public void saveCampus(CampusInfo campusInfo) {
		getHibernateTemplate().save(campusInfo);
	}
	
	/**添加年级*/
	public void saveGrade(GradeInfo gradeInfo){
		getHibernateTemplate().save(gradeInfo);
	}
	/**查询所有年级*/
	@SuppressWarnings("unchecked")
	public List<GradeInfo> findAllGradeInfo() {
		return getHibernateTemplate().find("FROM GradeInfo");
	}
	/**按年级id查询年级*/
	public GradeInfo findGradeById(String gradeId){
		List<GradeInfo> gradeInfoList = getHibernateTemplate().find("FROM GradeInfo WHERE id=?",gradeId);
		return gradeInfoList.size()==0?null:gradeInfoList.get(0);
	}
	/**添加科目*/
	public void saveCourse(CourseInfo courseInfo){
		getHibernateTemplate().save(courseInfo);
	}
	/**查询全部科目*/
	public List<CourseInfo> findAllCourseInfo() {
		return getHibernateTemplate().find("FROM CourseInfo");
	}
	/**按科目id查询科目*/
	public CourseInfo findCourseById(String courseId){
		List<CourseInfo> courseList = getHibernateTemplate().find("FROM CourseInfo WHERE id=?",courseId);
		return courseList.size()==0?null:courseList.get(0);
	}
	/**按年级id查询科目*/
	public List<CourseInfo> findCourseByGrade(String gradeId){
		return getHibernateTemplate().find("FROM CourseInfo WHERE gradeId=?",gradeId);
	}
	/**添加教育资讯一级*/
	public void saveEduCounselingFirst(EduCounselingFirstInfo eduCounselingFirstInfo){
		getHibernateTemplate().save(eduCounselingFirstInfo);
	}
	/**按id查询教育资讯一级*/
	public EduCounselingFirstInfo findEduCounselingFirstById(String eduCounselingFirstId){
		List<EduCounselingFirstInfo> eduCounselingFirst = getHibernateTemplate().find("FROM EduCounselingFirstInfo WHERE id=?",eduCounselingFirstId);
		return eduCounselingFirst.size()==0?null:eduCounselingFirst.get(0);
	}
	/**
	 * 按id删除教育资讯一级
	 **/
	@SuppressWarnings("unchecked")
	public void delEduCounselingFirst(String eduCounselingFirstId){
		List<EduCounselingFirstInfo> eduCounselingFirst = getHibernateTemplate().find("FROM EduCounselingFirstInfo WHERE id=?",eduCounselingFirstId);
			if(eduCounselingFirst.size()!=0){
				getHibernateTemplate().delete(eduCounselingFirst.get(0));
			}
	}
	/**查询所有教育资讯一级*/
	@SuppressWarnings("unchecked")
	public List<EduCounselingFirstInfo> findAllEduCounselingFirst(){
		return getHibernateTemplate().find("FROM EduCounselingFirstInfo");
	}
	/**
	 * 添加教育资讯二级
	 * */
	public void saveEduCounselingSecond(EduCounselingSecondInfo eduCounselingSecondInfo) {
		getHibernateTemplate().save(eduCounselingSecondInfo);
	}
	/**按id查询教育资讯二级*/
	public EduCounselingSecondInfo findEduCounselingSecondById(String eduCounselingSecondId){
		List<EduCounselingSecondInfo> eduCounselingSecond = getHibernateTemplate().find("FROM EduCounselingSecondInfo WHERE id=?",eduCounselingSecondId);
		return eduCounselingSecond.size()==0?null:eduCounselingSecond.get(0);
	}
	/**
	 * 按id删除教育资讯二级
	 **/
	@SuppressWarnings("unchecked")
	public void delEduCounselingSecond(String eduCounselingSecondId){
		List<EduCounselingSecondInfo> eduCounselingSecond = getHibernateTemplate().find("FROM EduCounselingSecondInfo WHERE id=?",eduCounselingSecondId);
			if(eduCounselingSecond.size()!=0){
				getHibernateTemplate().delete(eduCounselingSecond.get(0));
			}
	}
	/**查询所有教育资讯二级*/
	@SuppressWarnings("unchecked")
	public List<EduCounselingSecondInfo> findAllEduCounselingSecond(){
		return getHibernateTemplate().find("FROM EduCounselingSecondInfo");
	}
	/**
	 * 按教育资讯一级id查询教育资讯二级
	 * */
	@SuppressWarnings("unchecked")
	public List<EduCounselingSecondInfo> findEduCounselingSecondByFirst(String eduCounselingFirstId) {
		return getHibernateTemplate().find("FROM EduCounselingSecondInfo WHERE eduCounselingFirstID=?",eduCounselingFirstId );
	}
}
