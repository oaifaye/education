package com.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.bean.CampusInfo;
import com.bean.RegionFirstInfo;
import com.bean.RegionSecondInfo;
import com.common.util.FileSupport;
import com.common.util.PaginationSupport;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CampusService;
import com.service.InfoService;


public class CampusAction extends ActionSupport {
	private CampusService campusService;
	private InfoService infoService;
	private List<RegionSecondInfo> allRegSecond;
	private CampusInfo campusInfo;
	private File uploadpic; 
	private String uploadpicFileName;
	private String uploadpicContentType;
	private Integer currentPage;
	private Integer pageSize;
	private PaginationSupport paginationSupport;
	private String flag;
	private String campusId;
	// ---------------------------- 功能开发 start --------------------------
	//--------------------------------前台start-----------------------------------------
	/**初始化Campus_detail.jsp*/
	public String fDetailcampus(){
		try{
			campusInfo=campusService.findCampusById(campusId);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	//--------------------------------前台end-------------------------------------------
	/**初始化editCampus.jsp*/
	public String initcampus(){
		try{
			allRegSecond = infoService.findAllRegionSecondInfo();
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**校区添加*/
	public String addcampus(){
		try{
			if(null == campusInfo.getId() || "".equals(campusInfo.getId().trim())){
				if(!(uploadpic==null)){
					FileSupport fileSupport = new FileSupport();
					String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
					campusInfo.setPicName(picName);
				}
				campusService.saveCampus(campusInfo);
			}else{
				if(flag=="2"||flag.equals("2")){
					//删除图片
					String root = ServletActionContext.getServletContext().getRealPath("/imgUpload");
					File file = new File(root+"\\"+campusInfo.getPicName());
					if(!(file==null)){
						file.delete();
					}
					campusInfo.setPicName("");
					//图片修改
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						campusInfo.setPicName(picName);
					}
				}else{
					//添加新闻无图片，修改时有图片，文件上传
					if(!(null==uploadpic)){
						FileSupport fileSupport = new FileSupport();
						String picName=fileSupport.filesUpload(uploadpicFileName, uploadpic, "imgUpload");
						campusInfo.setPicName(picName);
					}
					
				}
				campusService.updateCampus(campusInfo);
			}
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**分页查询*/
	public String listcampus(){
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
			paginationSupport=campusService.findByPageAndSql(currentPage, pageSize);
			return SUCCESS;
		}catch(Exception e){
			return ERROR;
		}
	}
	
	/**修改校区*/
	public String updatecampus(){
		campusInfo=campusService.findCampusById(campusInfo.getId());
		return SUCCESS;
	}
	
	/**删除校区*/
	public String delcampus(){
		try{
			String[] campusIds = (String[]) ActionContext.getContext().getParameters().get("ids");
			//删除图片
			String root = ServletActionContext.getServletContext().getRealPath("/imgUpload");
			for(int i=0;i<campusIds.length;i++){
				CampusInfo campus = campusService.findCampusById(campusIds[i]);
				File file = new File(root+"\\"+campus.getPicName());
				if(!(file==null)){
					file.delete();
				}
			}
			campusService.delCampus(campusIds);
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

	public CampusService getCampusService() {
		return campusService;
	}

	public void setCampusService(CampusService campusService) {
		this.campusService = campusService;
	}

	public void setInfoService(InfoService infoService) {
		this.infoService = infoService;
	}

	public List<RegionSecondInfo> getAllRegSecond() {
		return allRegSecond;
	}

	public void setAllRegSecond(List<RegionSecondInfo> allRegSecond) {
		this.allRegSecond = allRegSecond;
	}

	public CampusInfo getCampusInfo() {
		return campusInfo;
	}

	public void setCampusInfo(CampusInfo campusInfo) {
		this.campusInfo = campusInfo;
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

	public String getCampusId() {
		return campusId;
	}

	public void setCampusId(String campusId) {
		this.campusId = campusId;
	}
	
	
	// -------------------------- get&&set end --------------------------
}
