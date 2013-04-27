package com.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.GradeInfo;
import com.bean.ProminentTeacher;
import com.bean.RegionSecondInfo;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CampusService;
import com.service.InfoService;
import com.service.ProTeacherService;

public class ProTeacherAction extends ActionSupport {
	private ProminentTeacher prominentTeacher;
	private ProTeacherService proTeacherService;
	private InfoService infoService;
	private CampusService campusService;
	private File uploadpic; 
	private String uploadpicFileName;
	private String uploadpicContentType;
	private Integer currentPage;
	private Integer pageSize;
	private PaginationSupport paginationSupport;
	private String flag; //是否删除图片标志位
	private List<GradeInfo> allGrades;
	private List<CourseInfo> allCourses;
	private List<RegionSecondInfo> allRegionSecond;
	private Map campusMap=new HashMap();
	private String publicDate;
	private String gradeInfo;//辅导年级select
	private String courseInfo;//辅导课目select
	
	// -------------------------- 功能开发 start --------------------------
	/**初始化editproTeacher.jsp*/
	public String initproTeacher(){
		try{
			//全部年级
			allGrades = infoService.findAllGradeInfo();
			//全部科目
			allCourses = infoService.findAllCourseInfo();
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
	
	/**优秀教师添加*/
	public String addproTeacher(){
		try{
			if(null == prominentTeacher.getId() || "".equals(prominentTeacher.getId().trim())){
				if(!(uploadpic==null)){
					FileSupport fileSupport = new FileSupport();
					String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
					prominentTeacher.setPicName(picName);
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				prominentTeacher.setPublicDate(ts);
				prominentTeacher.setCreateDate(new Timestamp(System.currentTimeMillis()));
				prominentTeacher.setState("1");
				prominentTeacher.setGradeInfo(infoService.findGradeById(gradeInfo));
				prominentTeacher.setCourseInfo(infoService.findCourseById(courseInfo));
				proTeacherService.saveProTeacher(prominentTeacher);
			}else{
				if(flag=="2"||flag.equals("2")){
					//删除图片
					String root = ServletActionContext.getServletContext().getRealPath("/imgUpload");
					File file = new File(root+"\\"+prominentTeacher.getPicName());
					if(!(file==null)){
						file.delete();
					}
					prominentTeacher.setPicName("");
					//图片修改
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						prominentTeacher.setPicName(picName);
					}
				}else{
					//添加新闻无图片，修改时有图片，文件上传
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						prominentTeacher.setPicName(picName);
					}
				}
				//字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				prominentTeacher.setPublicDate(ts);
				prominentTeacher.setCreateDate(new Timestamp(System.currentTimeMillis()));
				prominentTeacher.setState("1");
				prominentTeacher.setGradeInfo(infoService.findGradeById(gradeInfo));
				prominentTeacher.setCourseInfo(infoService.findCourseById(courseInfo));
				proTeacherService.updateProTeacher(prominentTeacher);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**优秀教师修改*/
	public String updateproTeacher(){
		try{
			prominentTeacher=proTeacherService.findProTeacherById(prominentTeacher.getId());
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			publicDate = dateFormat.format(prominentTeacher.getPublicDate());
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**
	 * 分页查询
	 * */
	public String listproTeacher(){
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
			paginationSupport=proTeacherService.findByPageAndSql("1", currentPage, pageSize);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**逻辑删优秀教师*/
	public String removeproTeacher(){
		try{
			String[] ids=(String[]) ActionContext.getContext().getParameters().get("ids");
			for(int i=0;i<ids.length;i++){
				ProminentTeacher proTeacher=proTeacherService.findProTeacherById(ids[i]);
				proTeacher.setState("0");
				proTeacherService.updateProTeacher(proTeacher);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
		
	}
	
	// -------------------------- 功能开发 end ----------------------------
	
	// -------------------------- get&&set start --------------------------
	public ProminentTeacher getProminentTeacher() {
		return prominentTeacher;
	}

	public void setProminentTeacher(ProminentTeacher prominentTeacher) {
		this.prominentTeacher = prominentTeacher;
	}

	public ProTeacherService getProTeacherService() {
		return proTeacherService;
	}

	public void setProTeacherService(ProTeacherService proTeacherService) {
		this.proTeacherService = proTeacherService;
	}

	public InfoService getInfoService() {
		return infoService;
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
	
	
	
	// -------------------------- get&&set end --------------------------
	
}
