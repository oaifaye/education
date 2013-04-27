package com.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bean.CourseInfo;
import com.bean.EduCounselingFirstInfo;
import com.bean.EduCounselingSecondInfo;
import com.bean.GradeInfo;
import com.bean.RegionFirstInfo;
import com.bean.RegionSecondInfo;
import com.opensymphony.xwork2.ActionSupport;
import com.service.InfoService;

public class InfoAction extends ActionSupport {
	private InfoService infoService;
	private RegionFirstInfo regionFirstInfo;
	private RegionSecondInfo regionSecondInfo;
	private GradeInfo gradeInfo;
	private CourseInfo courseInfo;
	private List<RegionFirstInfo> allRegionFirst;
	private Map regionSecondMap=new HashMap(); //doubleSelect第二级，地区 
	private Map eduCounselingSecondMap=new HashMap(); //doubleSelect第二级，教育资讯二级
	private Map courseMap=new HashMap();//doubleSelect第二级，科目
	private EduCounselingFirstInfo eduCounselingFirstInfo;
	private EduCounselingSecondInfo eduCounselingSecondInfo;
	private List<GradeInfo> allGrade;
	private List<CourseInfo> allCourse;
	private List<EduCounselingFirstInfo> allEduCounselingFirst;
	private String regSecondId;
	
	// -------------------------- 功能开发 start --------------------------
	/**初始化Info.jsp页*/
	@SuppressWarnings("unchecked")
	public String initInfo(){
		//全部大区
		allRegionFirst = infoService.findAllRegionFirstInfo();
		//struts select第二级，校区
		for(int i=0;i<allRegionFirst.size();i++){
			List<RegionSecondInfo> templist = infoService.findRegionSecondInfoByFirst(allRegionFirst.get(i).getId());
			regionSecondMap.put(allRegionFirst.get(i).getId(), templist);
		}
		//全部年级
		allGrade=infoService.findAllGradeInfo();
		//全部科目
		allCourse=infoService.findAllCourseInfo();
		//struts select第二级，科目
		for(int i=0;i<allGrade.size();i++){
			List<CourseInfo> templist = infoService.findCourseByGrade(allGrade.get(i).getId());
			courseMap.put(allGrade.get(i).getId(), templist);
		}
		//全部教育资讯一级
		allEduCounselingFirst=infoService.findAllEduCounselingFirst();
		//struts select第二级，教育资讯二级
		for(int i=0;i<allEduCounselingFirst.size();i++){
			List<EduCounselingSecondInfo> templist = infoService.findEduCounselingSecondByFirst(allEduCounselingFirst.get(i).getId());
			eduCounselingSecondMap.put(allEduCounselingFirst.get(i).getId(), templist);
		}
		return SUCCESS;
	}
	
	/**增加大区*/
	public String addInfoRegFirst(){
		try{
			infoService.saveRegFirst(regionFirstInfo);
			regionFirstInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**增加地区*/
	public String addInfoRegSecond(){
		try{
			infoService.saveRegSecond(regionSecondInfo);
			regionSecondInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**删除地区*/
	public String delInfoRegSecond(){
		try{
			infoService.delRegSecond(regSecondId);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**添加年级*/
	public String addInfoGrade(){
		try{
			infoService.saveGrade(gradeInfo);
			gradeInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**添加科目*/
	public String addInfoCourse(){
		try{
			infoService.saveCourse(courseInfo);
			courseInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**添加教育资讯一级*/
	public String addInfoEduCounselingFirst(){
		try{
			infoService.saveEduCounselingFirst(eduCounselingFirstInfo);
			eduCounselingFirstInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**添加教育资讯二级*/
	public String addInfoEduCounselingSecond(){
		try{
			infoService.saveEduCounselingSecond(eduCounselingSecondInfo);
			eduCounselingSecondInfo=null;
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	// -------------------------- 功能开发 end ----------------------------
	
	// -------------------------- get&&set start --------------------------

	
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	public RegionFirstInfo getRegionFirstInfo() {
		return regionFirstInfo;
	}
	public void setRegionFirstInfo(RegionFirstInfo regionFirstInfo) {
		this.regionFirstInfo = regionFirstInfo;
	}
	public RegionSecondInfo getRegionSecondInfo() {
		return regionSecondInfo;
	}
	public void setRegionSecondInfo(RegionSecondInfo regionSecondInfo) {
		this.regionSecondInfo = regionSecondInfo;
	}
	
	public List<RegionFirstInfo> getAllRegionFirst() {
		return allRegionFirst;
	}
	public void setAllRegionFirst(List<RegionFirstInfo> allRegionFirst) {
		this.allRegionFirst = allRegionFirst;
	}
	public Map getRegionSecondMap() {
		return regionSecondMap;
	}
	public void setRegionSecondMap(Map regionSecondMap) {
		this.regionSecondMap = regionSecondMap;
	}
	
	public Map getEduCounselingSecondMap() {
		return eduCounselingSecondMap;
	}

	public void setEduCounselingSecondMap(Map eduCounselingSecondMap) {
		this.eduCounselingSecondMap = eduCounselingSecondMap;
	}

	

	public Map getCourseMap() {
		return courseMap;
	}

	public void setCourseMap(Map courseMap) {
		this.courseMap = courseMap;
	}

	public List<GradeInfo> getAllGrade() {
		return allGrade;
	}
	
	public CourseInfo getCourseInfo() {
		return courseInfo;
	}

	public void setCourseInfo(CourseInfo courseInfo) {
		this.courseInfo = courseInfo;
	}

	public void setAllGrade(List<GradeInfo> allGrade) {
		this.allGrade = allGrade;
	}
	public List<CourseInfo> getAllCourse() {
		return allCourse;
	}
	public void setAllCourse(List<CourseInfo> allCourse) {
		this.allCourse = allCourse;
	}

	public EduCounselingFirstInfo getEduCounselingFirstInfo() {
		return eduCounselingFirstInfo;
	}

	public void setEduCounselingFirstInfo(
			EduCounselingFirstInfo eduCounselingFirstInfo) {
		this.eduCounselingFirstInfo = eduCounselingFirstInfo;
	}

	public EduCounselingSecondInfo getEduCounselingSecondInfo() {
		return eduCounselingSecondInfo;
	}

	public void setEduCounselingSecondInfo(
			EduCounselingSecondInfo eduCounselingSecondInfo) {
		this.eduCounselingSecondInfo = eduCounselingSecondInfo;
	}

	public List<EduCounselingFirstInfo> getAllEduCounselingFirst() {
		return allEduCounselingFirst;
	}

	public void setAllEduCounselingFirst(
			List<EduCounselingFirstInfo> allEduCounselingFirst) {
		this.allEduCounselingFirst = allEduCounselingFirst;
	}

	public String getRegSecondId() {
		return regSecondId;
	}
	public void setRegSecondId(String regSecondId) {
		this.regSecondId = regSecondId;
	}
	public GradeInfo getGradeInfo() {
		return gradeInfo;
	}
	public void setGradeInfo(GradeInfo gradeInfo) {
		this.gradeInfo = gradeInfo;
	}
	// -------------------------- get&&set end --------------------------
}
