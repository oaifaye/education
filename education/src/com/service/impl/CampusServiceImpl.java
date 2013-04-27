package com.service.impl;

import java.util.List;

import com.bean.CampusInfo;
import com.bean.GoodStudent;
import com.common.util.PaginationSupport;
import com.dao.CampusDAO;
import com.service.CampusService;

public class CampusServiceImpl implements CampusService {
	CampusDAO campusDAO;

	/**校区保存*/
	public void saveCampus(CampusInfo campusInfo){
		campusDAO.saveCampus(campusInfo);
	}
	
	/**社区修改*/
	public void updateCampus(CampusInfo campusInfo){
		campusDAO.updateCampus(campusInfo);
	}
	
	/**分页查询*/
	public PaginationSupport findByPageAndSql(int currentPage,int pageSize){
		return campusDAO.findByPageAndSql(currentPage, pageSize);
	}
	
	/**按id查询
	 * @param campusId 校区id
	 * */
	public CampusInfo findCampusById(String campusId){
		return campusDAO.findCampusById(campusId);
	}
	
	/**按地区id查询校区
	 * @param regSecondID 地区id
	 * */
	public List<CampusInfo> findCampusInfoBySecond(String regSecondID){
		return campusDAO.findCampusInfoBySecond(regSecondID);
	}
	
	/**查询全部校区(启用的)*/
	public List<CampusInfo> findAllCampus(){
		return campusDAO.findAllCampus();
	}
	
	/**删除新闻
	 * @param campusIds 校区id的字符串数组
	 * */
	public void delCampus(String[] campusIds){
		campusDAO.delCampus(campusIds);
	}
	
	public CampusDAO getCampusDAO() {
		return campusDAO;
	}

	public void setCampusDAO(CampusDAO campusDAO) {
		this.campusDAO = campusDAO;
	}
	
}
