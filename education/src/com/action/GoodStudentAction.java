package com.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bean.AllTeacher;
import com.bean.CampusInfo;
import com.bean.CourseInfo;
import com.bean.GoodStudent;
import com.bean.GradeInfo;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AllTeacherService;
import com.service.CampusService;
import com.service.GoodStudentService;
import com.service.InfoService;

public class GoodStudentAction extends ActionSupport {
	private GoodStudentService goodStudentService;
	private InfoService infoService;
	private AllTeacherService allTeacherService;
	private CampusService campusService;
	private GoodStudent goodStudent;
	private File uploadpic;
	private String uploadpicFileName;
	private String uploadpicContentType;
	private String state;//一对一是否可用，1：可用 0：不可用
	private String gradeId;
	private String courseId;
	private Integer currentPage;
	private Integer pageSize;
	private PaginationSupport paginationSupport;
	private String flag; // 是否删除图片标志位
	private String param1;//前台分页查询的第一个参数，与gradeId相关
	private String param2;//前台分页查询的第二个参数，与courseId相关
	private List<GradeInfo> allGrades;
	private List<CourseInfo> allCourses;
	private List<AllTeacher> allTeacherList;
	private List<CampusInfo> allcampus;
	private Map campusMap = new HashMap();
	private String publicDate;
	private String gradeInfo;//辅导年级select
	private String courseInfo;//辅导课目select
	private String gradeNameSelect;//选中的年级
	private String courseNameSelect;//选中的课程
	// -------------------------- 功能开发 start --------------------------
	//--------------------------------前台start-------------------------------------------
	/**list明星学员*/
	public String fListgoodStudent(){
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
//			else{
//				gradeNameSelect=allGrades.get(0).getGradeName();
//				allCourses=infoService.findCourseByGrade(allGrades.get(0).getId());
//			}
			if(courseId!=null){
				courseNameSelect=infoService.findCourseById(courseId).getCourseName();
			}
			paginationSupport=goodStudentService.findByPageAndSql("1",gradeId,courseId, currentPage, 2);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**detail明星学员*/
	public String fDetailgoodStudent(){
		try{
			String goodStudentId=ServletActionContext.getRequest().getParameter("goodStudentId");
			goodStudent=goodStudentService.findGoodStudentById(goodStudentId);
			gradeNameSelect=goodStudent.getGradeInfo().getGradeName();//用于导航
			courseNameSelect=goodStudent.getCourseInfo().getCourseName();//用于导航
			gradeId=goodStudent.getGradeInfo().getId();//用于导航
			courseId=goodStudent.getCourseInfo().getId();//用于导航
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	//--------------------------------前台end-------------------------------------------

	/** 初始化editgoodStudent.jsp */
	public String initgoodStudent() {
		try {
			allGrades = infoService.findAllGradeInfo();
			allCourses = infoService.findAllCourseInfo();
			allcampus = campusService.findAllCampus();
			allTeacherList = allTeacherService.findAllTeacher();
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 明星学员添加与修改的保存 */
	public String addgoodStudent() {
		try {
			if (null == goodStudent.getId()
					|| "".equals(goodStudent.getId().trim())) {
				if (!(uploadpic == null)) {
					FileSupport fileSupport = new FileSupport();
					String picName = fileSupport.filesUpload(uploadpicFileName,
							uploadpic, "imgUpload");
					goodStudent.setPicName(picName);
				}
				// 字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				goodStudent.setPublicDate(ts);
				goodStudent.setCreateDate(new Timestamp(System
						.currentTimeMillis()));
				goodStudent.setState("1");
				goodStudent.setGradeInfo(infoService.findGradeById(gradeInfo));
				goodStudent.setCourseInfo(infoService.findCourseById(courseInfo));
				goodStudentService.saveGoodStudent(goodStudent);
			} else {
				if (flag == "2" || flag.equals("2")) {
					// 删除图片
					String root = ServletActionContext.getServletContext()
							.getRealPath("/imgUpload");
					File file = new File(root + "\\" + goodStudent.getPicName());
					if (!(file == null)) {
						file.delete();
					}
					goodStudent.setPicName("");
					// 图片修改
					if (!(null == uploadpic)) {
						FileSupport fileSupport = new FileSupport();
						String picName = fileSupport.filesUpload(
								uploadpicFileName, uploadpic, "imgUpload");
						goodStudent.setPicName(picName);
					}
				} else {
					// 添加新闻无图片，修改时有图片，文件上传
					if (!(null == uploadpic)) {
						FileSupport fileSupport = new FileSupport();
						String picName = fileSupport.filesUpload(
								uploadpicFileName, uploadpic, "imgUpload");
						goodStudent.setPicName(picName);
					}
				}
				// 字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				goodStudent.setPublicDate(ts);
				goodStudent.setCreateDate(new Timestamp(System
						.currentTimeMillis()));
				goodStudent.setState("1");
				goodStudent.setGradeInfo(infoService.findGradeById(gradeInfo));
				goodStudent.setCourseInfo(infoService.findCourseById(courseInfo));
				goodStudentService.updateGoodStudent(goodStudent);
			}
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/**
	 * 分页查询
	 * */
	public String listgoodStudent() {
		try {
			if (pageSize == null) {
				pageSize = 5;
			} else {
				this.pageSize = pageSize;
			}
			if (currentPage == null || currentPage < 0) {
				currentPage = 1;
			} else {
				currentPage = currentPage;
			}
			paginationSupport = goodStudentService.findByPageAndSql("1",null,null,
					currentPage, pageSize);
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 修改明星学员 */
	public String updategoodStudent() {
		try {
			goodStudent = goodStudentService.findGoodStudentById(goodStudent
					.getId());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			publicDate = dateFormat.format(goodStudent.getPublicDate());
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 逻辑删明星学员 */
	public String removegoodStudent() {
		try {
			String[] ids = (String[]) ActionContext.getContext()
					.getParameters().get("ids");
			for (int i = 0; i < ids.length; i++) {
				GoodStudent student = goodStudentService
						.findGoodStudentById(ids[i]);
				student.setState("0");
				goodStudentService.updateGoodStudent(student);
			}
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	// -------------------------- 功能开发 end ----------------------------

	// -------------------------- get&&set start --------------------------
	public GoodStudentService getGoodStudentService() {
		return goodStudentService;
	}

	public void setGoodStudentService(GoodStudentService goodStudentService) {
		this.goodStudentService = goodStudentService;
	}

	public InfoService getInfoService() {
		return infoService;
	}

	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}

	public AllTeacherService getAllTeacherService() {
		return allTeacherService;
	}

	public void setAllTeacherService(AllTeacherService allTeacherService) {
		this.allTeacherService = allTeacherService;
	}

	public CampusService getCampusService() {
		return campusService;
	}

	public void setCampusService(CampusService campusService) {
		this.campusService = campusService;
	}

	public GoodStudent getGoodStudent() {
		return goodStudent;
	}

	public void setGoodStudent(GoodStudent goodStudent) {
		this.goodStudent = goodStudent;
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

	public List<AllTeacher> getAllTeacherList() {
		return allTeacherList;
	}

	public void setAllTeacherList(List<AllTeacher> allTeacherList) {
		this.allTeacherList = allTeacherList;
	}

	public List<CampusInfo> getAllcampus() {
		return allcampus;
	}

	public void setAllcampus(List<CampusInfo> allcampus) {
		this.allcampus = allcampus;
	}

	public Map getCampusMap() {
		return campusMap;
	}

	public void setCampusMap(Map campusMap) {
		this.campusMap = campusMap;
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

	public String getPublicDate() {
		return publicDate;
	}

	public void setPublicDate(String publicDate) {
		this.publicDate = publicDate;
	}

	// -------------------------- get&&set end --------------------------
}
