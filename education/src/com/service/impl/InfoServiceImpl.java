package com.service.impl;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.EduCounselingFirstInfo;
import com.bean.EduCounselingSecondInfo;
import com.bean.GradeInfo;
import com.bean.RegionFirstInfo;
import com.bean.RegionSecondInfo;
import com.dao.InfoDAO;
import com.service.InfoService;

public class InfoServiceImpl implements InfoService {
	private InfoDAO infoDAO;
	/**添加大区*/
	public void saveRegFirst(RegionFirstInfo regionFirstInfo) {
		infoDAO.saveRegFirst(regionFirstInfo);
	}
	/**查询全部大区*/
	public List<RegionFirstInfo> findAllRegionFirstInfo(){
		return infoDAO.findAllRegionFirstInfo();
	}

	/**添加地区*/
	public void saveRegSecond(RegionSecondInfo regionSecondInfo) {
		infoDAO.saveRegSecond(regionSecondInfo);
	}
	/**按id删除地区*/
	public void delRegSecond(String regSecondId){
		infoDAO.delRegSecond(regSecondId);
	}
	/**查询所有地区*/
	public List<RegionSecondInfo> findAllRegionSecondInfo(){
		return infoDAO.findAllRegionSecondInfo();
	}
	/**按大区id查询地区*/
	public List<RegionSecondInfo> findRegionSecondInfoByFirst(String regFirstId){
		return infoDAO.findRegionSecondInfoByFirst(regFirstId);
	}
	/**添加校区*/
	public void saveCampus(CampusInfo campusInfo) {
		infoDAO.saveCampus(campusInfo);
	}
	/**添加年级*/
	public void saveGrade(GradeInfo gradeInfo){
		infoDAO.saveGrade(gradeInfo);
	}
	/**查询所有年级*/
	public List<GradeInfo> findAllGradeInfo(){
		return infoDAO.findAllGradeInfo();
	}
	/**按年级id查询年级*/
	public GradeInfo findGradeById(String gradeId){
		return infoDAO.findGradeById(gradeId);
	}
	/**添加科目*/
	public void saveCourse(CourseInfo courseInfo){
		infoDAO.saveCourse(courseInfo);
	}
	/**查询全部科目*/
	public List<CourseInfo> findAllCourseInfo(){
		return infoDAO.findAllCourseInfo();
	}
	/**按科目id查询科目*/
	public CourseInfo findCourseById(String courseId){
		return infoDAO.findCourseById(courseId);
	}
	/**按年级id查询科目*/
	public List<CourseInfo> findCourseByGrade(String gradeId){
		return infoDAO.findCourseByGrade(gradeId);
	}
	/**添加教育资讯一级*/
	public void saveEduCounselingFirst(EduCounselingFirstInfo eduCounselingFirstInfo){
		infoDAO.saveEduCounselingFirst(eduCounselingFirstInfo);
	}
	/**按id查询教育资讯一级*/
	public EduCounselingFirstInfo findEduCounselingFirstById(String eduCounselingFirstId){
		return infoDAO.findEduCounselingFirstById(eduCounselingFirstId);
	}
	/** 按id删除教育资讯一级*/
	public void delEduCounselingFirst(String eduCounselingFirstId){
		infoDAO.delEduCounselingFirst(eduCounselingFirstId);
	}
	/**查询所有教育资讯一级*/
	public List<EduCounselingFirstInfo> findAllEduCounselingFirst(){
		return infoDAO.findAllEduCounselingFirst();
	}
	/**添加教育资讯二级*/
	public void saveEduCounselingSecond(EduCounselingSecondInfo eduCounselingSecondInfo){
		infoDAO.saveEduCounselingSecond(eduCounselingSecondInfo);
	}
	/**按id查询教育资讯二级*/
	public EduCounselingSecondInfo findEduCounselingSecondById(String eduCounselingSecondId){
		return infoDAO.findEduCounselingSecondById(eduCounselingSecondId);
	}
	/** 按id删除教育资讯二级*/
	public void delEduCounselingSecond(String eduCounselingSecondId){
		infoDAO.delEduCounselingSecond(eduCounselingSecondId);
	}
	/**查询所有教育资讯二级*/
	public List<EduCounselingSecondInfo> findAllEduCounselingSecond(){
		return infoDAO.findAllEduCounselingSecond();
	}
	/**按教育资讯一级id查询教育资讯二级*/
	public List<EduCounselingSecondInfo> findEduCounselingSecondByFirst(String eduCounselingFirstId){
		return infoDAO.findEduCounselingSecondByFirst(eduCounselingFirstId);
	}
	
	/**dwr辅导年级下拉框*/
	@SuppressWarnings("unchecked")
	public Map findAllGradeToMap(){
		List<GradeInfo> gradeInfoList = infoDAO.findAllGradeInfo();
		Map gradeInfoMap = new LinkedHashMap(); 
		for(int i=0;i<gradeInfoList.size();i++){
			gradeInfoMap.put(gradeInfoList.get(i).getId(), gradeInfoList.get(i).getGradeName());
		}
		return gradeInfoMap;
	}
	/**dwr确认年级下拉框选中项*/
	public String gradeSelected(String gradeId){
		return infoDAO.findGradeById(gradeId).getId();
	}
	/**dwr根据辅导年级id初始化科目下拉框*/
	@SuppressWarnings("unchecked")
	public Map findCourseMapByGrade(String gradeId){
		List<CourseInfo> courseInfoList = infoDAO.findCourseByGrade(gradeId);
		Map courseInfoMap = new LinkedHashMap();
		for(int i=0;i<courseInfoList.size();i++){
			courseInfoMap.put(courseInfoList.get(i).getId(),courseInfoList.get(i).getCourseName());
		}
		return courseInfoMap;
	}
	/**dwr确认课目下拉框选中项*/
	public String courseSelected(String courseId){
		return infoDAO.findCourseById(courseId).getId();
	}
	
	
	public InfoDAO getInfoDAO() {
		return infoDAO;
	}

	public void setInfoDAO(InfoDAO infoDAO) {
		this.infoDAO = infoDAO;
	}
	
	
}
