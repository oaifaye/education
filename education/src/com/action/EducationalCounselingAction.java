package com.action;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bean.EduCounselingFirstInfo;
import com.bean.EduCounselingSecondInfo;
import com.bean.EducationalCounseling;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.common.util.PaginationSupport_content;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.EducationalCounselingService;
import com.service.InfoService;

public class EducationalCounselingAction extends ActionSupport {
	private EducationalCounselingService educationalCounselingService;
	private InfoService infoService;
	private EducationalCounseling educationalCounseling;
	private File uploadpic;
	private String uploadpicFileName;
	private String uploadpicContentType;
	private Integer currentPage;
	private Integer pageSize;
	private PaginationSupport paginationSupport;
	private String flag; // 是否删除图片标志位
	private List<EduCounselingFirstInfo> allEduCounselingFirst;
	private List<EducationalCounseling> educationalCounselingList;
	private Map eduCounselingSecondMap = new HashMap();
	private String publicDate;
	private String educationalCounselingId;
	private PaginationSupport_content paginationSupport_content;
	private String paramId;//分页查询中代替educationalCounselingId传值
	private String param1;
	private String param2;
	private String eduCounselingFirstName;
	private String eduCounselingSecondName;

	// -------------------------- 功能开发 start --------------------------
	//--------------------------------前台start-------------------------------------------
	/**detail新闻资讯*/
	public String fDetaileducationalCounseling() {
		try{
			if (currentPage == null || currentPage < 0) {
				currentPage = 1;
			} else {
				currentPage = currentPage;
			}
			paramId=educationalCounselingId;
			educationalCounseling=educationalCounselingService.findEducationalCounseling(educationalCounselingId);
			paginationSupport_content = educationalCounselingService.findContentByPageAndSql(educationalCounselingId, currentPage, 10);
			
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
		
	}
	/**初始化educationalCounseling_list.jsp*/
	public String fListeducationalCounseling() {
		try{
			if (currentPage == null || currentPage < 0) {
				currentPage = 1;
			}
			String eduCounselingFirstId = ServletActionContext.getRequest().getParameter("eduCounselingFirstId");
			String eduCounselingSecondId = ServletActionContext.getRequest().getParameter("eduCounselingSecondId");
			param1=eduCounselingFirstId;
			param2=eduCounselingSecondId;
			paginationSupport=educationalCounselingService.findByPageAndSql("1", eduCounselingSecondId, currentPage, 2);
			//导航
			eduCounselingFirstName=infoService.findEduCounselingFirstById(eduCounselingFirstId).getEduCounselingFirstName();
			eduCounselingSecondName=infoService.findEduCounselingSecondById(eduCounselingSecondId).getEduCounselingSecondName();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	//--------------------------------前台end-------------------------------------------

	/** 初始化editeducationalCounseling.jsp */
	public String initeducationalCounseling() {
		try {
			allEduCounselingFirst = infoService.findAllEduCounselingFirst();
			// struts select第二级，教育资讯二级
			for (int i = 0; i < allEduCounselingFirst.size(); i++) {
				List<EduCounselingSecondInfo> templist = infoService
						.findEduCounselingSecondByFirst(allEduCounselingFirst
								.get(i).getId());
				eduCounselingSecondMap.put(
						allEduCounselingFirst.get(i).getId(), templist);
			}
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 教育资讯添加与修改的保存 */
	public String addeducationalCounseling() {
		try {
			if (null == educationalCounseling.getId()
					|| "".equals(educationalCounseling.getId().trim())) {
				if (!(uploadpic == null)) {
					FileSupport fileSupport = new FileSupport();
					String picName = fileSupport.filesUpload(uploadpicFileName,
							uploadpic, "imgUpload");
					educationalCounseling.setPicName(picName);
				}
				// 字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				educationalCounseling.setPublicDate(ts);
				educationalCounseling.setCreateDate(new Timestamp(System
						.currentTimeMillis()));
				educationalCounseling.setState("1");
				educationalCounselingService
						.saveEducationalCounseling(educationalCounseling);
			} else {
				if (flag == "2" || flag.equals("2")) {
					// 删除图片
					String root = ServletActionContext.getServletContext()
							.getRealPath("/imgUpload");
					File file = new File(root + "\\"
							+ educationalCounseling.getPicName());
					if (!(file == null)) {
						file.delete();
					}
					educationalCounseling.setPicName("");
					// 图片修改
					if (!(null == uploadpic)) {
						FileSupport fileSupport = new FileSupport();
						String picName = fileSupport.filesUpload(
								uploadpicFileName, uploadpic, "imgUpload");
						educationalCounseling.setPicName(picName);
					}
				} else {
					// 添加新闻无图片，修改时有图片，文件上传
					if (!(null == uploadpic)) {
						FileSupport fileSupport = new FileSupport();
						String picName = fileSupport.filesUpload(
								uploadpicFileName, uploadpic, "imgUpload");
						educationalCounseling.setPicName(picName);
					}
				}
				// 字符串转换成Timestamp
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Timestamp ts = new Timestamp(format.parse(publicDate).getTime());
				educationalCounseling.setPublicDate(ts);
				educationalCounseling.setCreateDate(new Timestamp(System
						.currentTimeMillis()));
				educationalCounseling.setState("1");
				educationalCounselingService
						.updateEducationalCounseling(educationalCounseling);
			}
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/**
	 * 分页查询
	 * */
	public String listeducationalCounseling() {
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
			paginationSupport = educationalCounselingService.findByPageAndSql(
					"1", currentPage, pageSize);
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 修改教育资讯 */
	public String updateeducationalCounseling() {
		try {
			educationalCounseling = educationalCounselingService
					.findEducationalCounseling(educationalCounseling.getId());
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			dateFormat.setLenient(true);
			publicDate = dateFormat.format(educationalCounseling
					.getPublicDate());
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	/** 逻辑删教育资讯 */
	public String removeeducationalCounseling() {
		try {
			String[] ids = (String[]) ActionContext.getContext()
					.getParameters().get("ids");
			for (int i = 0; i < ids.length; i++) {
				EducationalCounseling educationalCounseling = educationalCounselingService
						.findEducationalCounseling(ids[i]);
				educationalCounseling.setState("0");
				educationalCounselingService
						.updateEducationalCounseling(educationalCounseling);
			}
			return SUCCESS;
		} catch (Exception e) {
			return ERROR;
		}
	}

	// -------------------------- 功能开发 end ----------------------------

	// -------------------------- get&&set start --------------------------

	public EducationalCounselingService getEducationalCounselingService() {
		return educationalCounselingService;
	}

	public void setEducationalCounselingService(
			EducationalCounselingService educationalCounselingService) {
		this.educationalCounselingService = educationalCounselingService;
	}

	public InfoService getInfoService() {
		return infoService;
	}

	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}

	public EducationalCounseling getEducationalCounseling() {
		return educationalCounseling;
	}

	public void setEducationalCounseling(
			EducationalCounseling educationalCounseling) {
		this.educationalCounseling = educationalCounseling;
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

	public List<EduCounselingFirstInfo> getAllEduCounselingFirst() {
		return allEduCounselingFirst;
	}

	public void setAllEduCounselingFirst(
			List<EduCounselingFirstInfo> allEduCounselingFirst) {
		this.allEduCounselingFirst = allEduCounselingFirst;
	}

	public Map getEduCounselingSecondMap() {
		return eduCounselingSecondMap;
	}

	public void setEduCounselingSecondMap(Map eduCounselingSecondMap) {
		this.eduCounselingSecondMap = eduCounselingSecondMap;
	}

	public String getPublicDate() {
		return publicDate;
	}

	public void setPublicDate(String publicDate) {
		this.publicDate = publicDate;
	}

	public String getEducationalCounselingId() {
		return educationalCounselingId;
	}

	public void setEducationalCounselingId(String educationalCounselingId) {
		this.educationalCounselingId = educationalCounselingId;
	}

	public PaginationSupport_content getPaginationSupport_content() {
		return paginationSupport_content;
	}

	public void setPaginationSupport_content(
			PaginationSupport_content paginationSupport_content) {
		this.paginationSupport_content = paginationSupport_content;
	}

	public String getParamId() {
		return paramId;
	}

	public void setParamId(String param) {
		this.paramId = param;
	}
	public List<EducationalCounseling> getEducationalCounselingList() {
		return educationalCounselingList;
	}
	public void setEducationalCounselingList(
			List<EducationalCounseling> educationalCounselingList) {
		this.educationalCounselingList = educationalCounselingList;
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
	public String getEduCounselingFirstName() {
		return eduCounselingFirstName;
	}
	public void setEduCounselingFirstName(String eduCounselingFirstName) {
		this.eduCounselingFirstName = eduCounselingFirstName;
	}
	public String getEduCounselingSecondName() {
		return eduCounselingSecondName;
	}
	public void setEduCounselingSecondName(String eduCounselingSecondName) {
		this.eduCounselingSecondName = eduCounselingSecondName;
	}

	

	// -------------------------- get&&set end --------------------------
}
