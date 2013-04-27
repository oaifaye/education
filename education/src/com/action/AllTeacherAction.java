package com.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bean.AllTeacher;
import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.GradeInfo;
import com.bean.ProminentTeacher;
import com.bean.RegionSecondInfo;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AllTeacherService;
import com.service.CampusService;
import com.service.InfoService;

public class AllTeacherAction extends ActionSupport {
	private AllTeacherService allTeacherService;
	private InfoService infoService;
	private CampusService campusService;
	private AllTeacher allTeacher;
	private File uploadpic; 
	private String uploadpicFileName;
	private String uploadpicContentType;
	private Integer currentPage;
	private Integer pageSize;
	private PaginationSupport paginationSupport;
	private String flag; //是否删除图片标志位
	private List<GradeInfo> allGrade;
	private List<CourseInfo> allCourse;
	private List<RegionSecondInfo> allRegionSecond;
	private Map campusMap=new HashMap();
	private Map courseMap=new HashMap();
	private String publicDate;
	private String gradeInfo;//辅导年级select
	private String courseInfo;//辅导课目select
	
	// -------------------------- 功能开发 start --------------------------
	/**初始化editallTeacher.jsp*/
	public String initallTeacher(){
		try{
			//全部年级
			allGrade=infoService.findAllGradeInfo();
			//全部科目
			allCourse=infoService.findAllCourseInfo();
			//struts select第二级，科目
			for(int i=0;i<allGrade.size();i++){
				List<CourseInfo> templist = infoService.findCourseByGrade(allGrade.get(i).getId());
				courseMap.put(allGrade.get(i).getId(), templist);
			}
			//全部地区
			allRegionSecond = infoService.findAllRegionSecondInfo();
			//struts select第二级,校区
			for(int i=0;i<allRegionSecond.size();i++){
				List<CampusInfo> templist = campusService.findCampusInfoBySecond(allRegionSecond.get(i).getId());
				campusMap.put(allRegionSecond.get(i).getId(), templist);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
		
	}
	
	/**教师添加与修改的保存*/
	public String addallTeacher(){
		try{
			if(null == allTeacher.getId() || "".equals(allTeacher.getId().trim())){
				if(!(uploadpic==null)){
					FileSupport fileSupport = new FileSupport();
					String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
					allTeacher.setPicName(picName);
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				allTeacher.setPublicDate(ts);
				allTeacher.setCreateDate(new Timestamp(System.currentTimeMillis()));
				allTeacher.setState("1");
				allTeacher.setGradeInfo(infoService.findGradeById(gradeInfo));
				allTeacher.setCourseInfo(infoService.findCourseById(courseInfo));
				allTeacherService.saveAllTeacher(allTeacher);
			}else{
				if(flag=="2"||flag.equals("2")){
					//删除图片
					String root = ServletActionContext.getServletContext().getRealPath("/imgUpload");
					File file = new File(root+"\\"+allTeacher.getPicName());
					if(!(file==null)){
						file.delete();
					}
					allTeacher.setPicName("");
					//图片修改
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						allTeacher.setPicName(picName);
					}
				}else{
					//添加新闻无图片，修改时有图片，文件上传
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						allTeacher.setPicName(picName);
					}
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				allTeacher.setPublicDate(ts);
				allTeacher.setCreateDate(new Timestamp(System.currentTimeMillis()));
				allTeacher.setState("1");
				allTeacher.setGradeInfo(infoService.findGradeById(gradeInfo));
				allTeacher.setCourseInfo(infoService.findCourseById(courseInfo));
				allTeacherService.updateAllTeacher(allTeacher);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**
	 * 分页查询
	 * */
	public String listallTeacher(){
		try{
			if(pageSize==null){
				pageSize=5;
			}
			else{
				this.pageSize=pageSize;
			}
			if (currentPage==null||currentPage<0){
				currentPage=1;
			}
			else{
				currentPage =currentPage;
			}
			paginationSupport=allTeacherService.findByPageAndSql("1", currentPage, pageSize);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**教师修改*/
	public String updateallTeacher(){
		try{
			allTeacher=allTeacherService.findAllTeacherById(allTeacher.getId());
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			publicDate = dateFormat.format(allTeacher.getPublicDate());
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**逻辑删优秀教师*/
	public String removeallTeacher(){
		try{
			String[] ids=(String[]) ActionContext.getContext().getParameters().get("ids");
			for(int i=0;i<ids.length;i++){
				AllTeacher teacher=allTeacherService.findAllTeacherById(ids[i]);
				teacher.setState("0");
				allTeacherService.updateAllTeacher(teacher);
			}
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
	public AllTeacherService getAllTeacherService() {
		return allTeacherService;
	}

	public void setAllTeacherService(AllTeacherService allTeacherService) {
		this.allTeacherService = allTeacherService;
	}

	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	public CampusService getCampusService() {
		return campusService;
	}
	public void setCampusService(CampusService campusService) {
		this.campusService = campusService;
	}
	public AllTeacher getAllTeacher() {
		return allTeacher;
	}
	public void setAllTeacher(AllTeacher allTeacher) {
		this.allTeacher = allTeacher;
	}
	public File getUploadpic() {
		return uploadpic;
	}
	public void setUploadpic(File uploadpic) {
		this.uploadpic = uploadpic;
	}
	public String getUploadpicFileName() {
		return uploadpicFileName;
	}
	public void setUploadpicFileName(String uploadpicFileName) {
		this.uploadpicFileName = uploadpicFileName;
	}
	public String getUploadpicContentType() {
		return uploadpicContentType;
	}
	public void setUploadpicContentType(String uploadpicContentType) {
		this.uploadpicContentType = uploadpicContentType;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public PaginationSupport getPaginationSupport() {
		return paginationSupport;
	}
	public void setPaginationSupport(PaginationSupport paginationSupport) {
		this.paginationSupport = paginationSupport;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	public List<GradeInfo> getAllGrade() {
		return allGrade;
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

	public Map getCourseMap() {
		return courseMap;
	}

	public void setCourseMap(Map courseMap) {
		this.courseMap = courseMap;
	}

	public List<RegionSecondInfo> getAllRegionSecond() {
		return allRegionSecond;
	}
	public void setAllRegionSecond(List<RegionSecondInfo> allRegionSecond) {
		this.allRegionSecond = allRegionSecond;
	}
	public Map getCampusMap() {
		return campusMap;
	}
	public void setCampusMap(Map campusMap) {
		this.campusMap = campusMap;
	}
	public String getPublicDate() {
		return publicDate;
	}
	public void setPublicDate(String publicDate) {
		this.publicDate = publicDate;
	}

	public String getGradeInfo() {
		return gradeInfo;
	}

	public void setGradeInfo(String gradeInfo) {
		this.gradeInfo = gradeInfo;
	}

	public String getCourseInfo() {
		return courseInfo;
	}

	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}
	
	// -------------------------- get&&set end --------------------------
	
}
