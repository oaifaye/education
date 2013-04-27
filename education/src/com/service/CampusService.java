package com.service;

import java.util.List;

import com.bean.CampusInfo;
import com.common.util.PaginationSupport;

public interface CampusService {
	/**校区保存*/
	public void saveCampus(CampusInfo campusInfo);
	/**社区修改*/
	public void updateCampus(CampusInfo campusInfo);
	/**分页查询*/
	public PaginationSupport findByPageAndSql(int currentPage,int pageSize);
	/**按id查询
	 * @param campusId 校区id
	 * */
	public CampusInfo findCampusById(String campusId);
	/**按地区id查询校区
	 * @param regSecondID 地区id
	 * */
	public List<CampusInfo> findCampusInfoBySecond(String regSecondID);
	/**查询全部校区(启用的)*/
	public List<CampusInfo> findAllCampus();
	/**删除新闻
	 * @param campusIds 校区id的字符串数组
	 * */
	public void delCampus(String[] campusIds);
}
