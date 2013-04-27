package com.dao.impl;


import java.util.ArrayList;
import java.util.List;

import com.bean.CampusInfo;
import com.common.util.PaginationSupport;
import com.dao.CampusDAO;

public class CampusDAOImpl extends Pagination implements CampusDAO {
	/**校区保存*/
	public void saveCampus(CampusInfo campusInfo){
		getHibernateTemplate().save(campusInfo);
	}
	/**社区修改*/
	public void updateCampus(CampusInfo campusInfo){
		getHibernateTemplate().update(campusInfo);
	}
	/**分页查询*/
	public PaginationSupport findByPageAndSql(int currentPage,int pageSize) {
		return super.findByPageAndSql("FROM CampusInfo", currentPage, pageSize);
	}
	/**按id查询
	 * @param campusId 校区id
	 * */
	public CampusInfo findCampusById(String campusId){
		List<CampusInfo> campusList = getHibernateTemplate().find("FROM CampusInfo WHERE id=?",campusId);
		return campusList.size()==0?null:campusList.get(0);
	}
	/**按地区id查询校区
	 * @param regSecondID 地区id
	 * */
	public List<CampusInfo> findCampusInfoBySecond(String regSecondID){
		return getHibernateTemplate().find("FROM CampusInfo WHERE RegSecondID=?",regSecondID);
	}
	/**查询全部校区(启用的)*/
	public List<CampusInfo> findAllCampus(){
		List<CampusInfo> campusInfoList = getHibernateTemplate().find("FROM CampusInfo");
		return campusInfoList.size()==0?null:campusInfoList;
	}
	/**删除校区
	 * @param campusIds 校区id的字符串数组
	 * */
	@SuppressWarnings("null")
	public void delCampus(String[] campusIds){
		List<CampusInfo> allCampusList = new ArrayList();
		for(int i=0;i<campusIds.length;i++){
			List<CampusInfo> campusList = getHibernateTemplate().find("FROM CampusInfo WHERE id=?",campusIds[i]);
			if(campusList.size()!=0){
				allCampusList.add(i,(CampusInfo) campusList.get(0));
			}
		}
		if(allCampusList!=null){
			getHibernateTemplate().deleteAll(allCampusList);
		}
	}
}
