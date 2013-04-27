package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * RegionSecondInfo entity. @author MyEclipse Persistence Tools
 */

public class RegionSecondInfo implements java.io.Serializable {

	// Fields

	private String id;
	private RegionFirstInfo regionFirstInfo;
	private String regSecondName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set prominentTeachers = new HashSet(0);
	private Set campusInfos = new HashSet(0);
	private Set allTeachers = new HashSet(0);

	// Constructors

	/** default constructor */
	public RegionSecondInfo() {
	}

	/** minimal constructor */
	public RegionSecondInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public RegionSecondInfo(String id, RegionFirstInfo regionFirstInfo,
			String regSecondName, String creatBy, Timestamp createDate,
			String updateBy, Timestamp updateDate, Set prominentTeachers,
			Set campusInfos, Set allTeachers) {
		this.id = id;
		this.regionFirstInfo = regionFirstInfo;
		this.regSecondName = regSecondName;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.prominentTeachers = prominentTeachers;
		this.campusInfos = campusInfos;
		this.allTeachers = allTeachers;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public RegionFirstInfo getRegionFirstInfo() {
		return this.regionFirstInfo;
	}

	public void setRegionFirstInfo(RegionFirstInfo regionFirstInfo) {
		this.regionFirstInfo = regionFirstInfo;
	}

	public String getRegSecondName() {
		return this.regSecondName;
	}

	public void setRegSecondName(String regSecondName) {
		this.regSecondName = regSecondName;
	}

	public String getCreatBy() {
		return this.creatBy;
	}

	public void setCreatBy(String creatBy) {
		this.creatBy = creatBy;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getUpdateBy() {
		return this.updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Timestamp getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public Set getProminentTeachers() {
		return this.prominentTeachers;
	}

	public void setProminentTeachers(Set prominentTeachers) {
		this.prominentTeachers = prominentTeachers;
	}

	public Set getCampusInfos() {
		return this.campusInfos;
	}

	public void setCampusInfos(Set campusInfos) {
		this.campusInfos = campusInfos;
	}

	public Set getAllTeachers() {
		return this.allTeachers;
	}

	public void setAllTeachers(Set allTeachers) {
		this.allTeachers = allTeachers;
	}

}