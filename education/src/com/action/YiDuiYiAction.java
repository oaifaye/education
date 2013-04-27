package com.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bean.CourseInfo;
import com.bean.GradeInfo;
import com.bean.RegionSecondInfo;
import com.bean.YiDuiYi;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.InfoService;
import com.service.YiDuiYiService;

public class YiDuiYiAction extends ActionSupport {
	private YiDuiYiService yiDuiYiService;
	private InfoService infoService;
	private YiDuiYi yiDuiYi;
	private File uploadpic; 
	private String uploadpicFileName;
	private String uploadpicContentType;
	private String state;//一对一是否可用，1：可用 0：不可用
	private String gradeId;
	private String courseId;
	private Integer currentPage;
	private Integer pageSize;
	private String param1;//前台分页查询的第一个参数，与gradeId相关
	private String param2;//前台分页查询的第二个参数，与courseId相关
	private PaginationSupport paginationSupport;
	private String flag; //是否删除图片标志位
	private List<GradeInfo> allGrades;
	private List<CourseInfo> allCourses;
	private List<RegionSecondInfo> allRegionSecond;
	private Map campusMap=new HashMap();
	private String publicDate;
	private String gradeInfo;//辅导年级select
	private String courseInfo;//辅导课目select
	private String gradeNameSelect;//选中的年级
	private String courseNameSelect;//选中的课程
	// -------------------------- 功能开发 start ---------------------------------------
	//--------------------------------前台start-------------------------------------------
	/**list一对一课程*/
	public String fListyiDuiYi(){
		try{
			if (currentPage==null||currentPage<0){
				currentPage=1;
			}
			else{
				currentPage =currentPage;
			}
			if(gradeId==""){
				param1="";
			}else{
				param1=gradeId;
			}
			if(param2==null){
				param2=courseId;
			}else{
				param2="";
			}
			//年级
			allGrades=infoService.findAllGradeInfo();
				
			if(gradeId!=null){
				gradeNameSelect=infoService.findGradeById(gradeId).getGradeName();//年级选中的
				allCourses=infoService.findCourseByGrade(gradeId);
			}
			if(courseId!=null){
				courseNameSelect=infoService.findCourseById(courseId).getCourseName();
			}
			paginationSupport=yiDuiYiService.findByPageAndSql("1",gradeId,courseId, currentPage, 2);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**detail一对一课程*/
	public String fDetailyiDuiYi(){
		try{
			String yiDuiYiId=ServletActionContext.getRequest().getParameter("YiDuiYiId");
			yiDuiYi=yiDuiYiService.findYiDuiYiById(yiDuiYiId);
			gradeNameSelect=yiDuiYi.getGradeInfo().getGradeName();
			courseNameSelect=yiDuiYi.getCourseInfo().getCourseName();
			gradeId=yiDuiYi.getGradeInfo().getId();
			courseId=yiDuiYi.getCourseInfo().getId();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	//--------------------------------前台end-------------------------------------------
	/**初始化editdiDuiYi.jsp*/
	public String inityiDuiYi(){
		try{
			//全部年级
			allGrades = infoService.findAllGradeInfo();
			//全部科目
			allCourses = infoService.findAllCourseInfo();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**一对一添加*/
	public String addyiDuiYi(){
		try{
			if(null == yiDuiYi.getId() || "".equals(yiDuiYi.getId().trim())){
				if(!(uploadpic==null)){
					FileSupport fileSupport = new FileSupport();
					String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
					yiDuiYi.setPicName(picName);
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				yiDuiYi.setPublicDate(ts);
				yiDuiYi.setCreateDate(new Timestamp(System.currentTimeMillis()));
				yiDuiYi.setState("1");
				yiDuiYi.setGradeInfo(infoService.findGradeById(gradeInfo));
				yiDuiYi.setCourseInfo(infoService.findCourseById(courseInfo));
				yiDuiYiService.saveYiDuiYi(yiDuiYi);
			}else{
				if(flag=="2"||flag.equals("2")){
					//删除图片
					String root = ServletActionContext.getServletContext().getRealPath("/imgUpload");
					File file = new File(root+"\\"+yiDuiYi.getPicName());
					if(!(file==null)){
						file.delete();
					}
					yiDuiYi.setPicName("");
					//图片修改
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						yiDuiYi.setPicName(picName);
					}
				}else{
					//添加新闻无图片，修改时有图片，文件上传
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						yiDuiYi.setPicName(picName);
					}
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				yiDuiYi.setPublicDate(ts);
				yiDuiYi.setCreateDate(new Timestamp(System.currentTimeMillis()));
				yiDuiYi.setState("1");
				yiDuiYi.setGradeInfo(infoService.findGradeById(gradeInfo));
				yiDuiYi.setCourseInfo(infoService.findCourseById(courseInfo));
				yiDuiYiService.updateYiDuiYi(yiDuiYi);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**一对一修改*/
	public String updateyiDuiYi(){
		try{
			yiDuiYi=yiDuiYiService.findYiDuiYiById(yiDuiYi.getId());
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			publicDate = dateFormat.format(yiDuiYi.getPublicDate());
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**
	 * 分页查询
	 * */
	public String listyiDuiYi(){
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
			paginationSupport=yiDuiYiService.findByPageAndSql(state,gradeId,courseId, currentPage, pageSize);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**逻辑删优秀教师*/
	public String removeyiDuiYi(){
		try{
			String[] ids=(String[]) ActionContext.getContext().getParameters().get("ids");
			for(int i=0;i<ids.length;i++){
				YiDuiYi yiDuiYiGetById=yiDuiYiService.findYiDuiYiById(ids[i]);
				yiDuiYiGetById.setState("0");
				yiDuiYiService.updateYiDuiYi(yiDuiYiGetById);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
		
	}
	// -------------------------- 功能开发 end ----------------------------
	
	// -------------------------- get&&set start --------------------------
	public YiDuiYiService getYiDuiYiService() {
		return yiDuiYiService;
	}
	public void setYiDuiYiService(YiDuiYiService yiDuiYiService) {
		this.yiDuiYiService = yiDuiYiService;
	}
	public InfoService getInfoService() {
		return infoService;
	}
	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}
	
	public YiDuiYi getYiDuiYi() {
		return yiDuiYi;
	}

	public void setYiDuiYi(YiDuiYi yiDuiYi) {
		this.yiDuiYi = yiDuiYi;
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
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGradeId() {
		return gradeId;
	}

	public void setGradeId(String gradeId) {
		this.gradeId = gradeId;
	}

	public String getCourseId() {
		return courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
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
	public String getParam1() {
		return param1;
	}
	public void setParam1(String param1) {
		this.param1 = param1;
	}
	public String getParam2() {
		return param2;
	}
	public void setParam2(String param2) {
		this.param2 = param2;
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
	public List<GradeInfo> getAllGrades() {
		return allGrades;
	}
	public void setAllGrades(List<GradeInfo> allGrades) {
		this.allGrades = allGrades;
	}
	public List<CourseInfo> getAllCourses() {
		return allCourses;
	}
	public void setAllCourses(List<CourseInfo> allCourses) {
		this.allCourses = allCourses;
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
	public String getGradeNameSelect() {
		return gradeNameSelect;
	}
	public void setGradeNameSelect(String gradeNameSelect) {
		this.gradeNameSelect = gradeNameSelect;
	}
	public String getCourseNameSelect() {
		return courseNameSelect;
	}
	public void setCourseNameSelect(String courseNameSelect) {
		this.courseNameSelect = courseNameSelect;
	}
	
	// -------------------------- get&&set end --------------------------
}
