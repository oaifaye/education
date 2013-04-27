package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * CampusInfo entity. @author MyEclipse Persistence Tools
 */

public class CampusInfo implements java.io.Serializable {

	// Fields

	private String id;
	private RegionSecondInfo regionSecondInfo;
	private String campusName;
	private String reserveTime;
	private String phone;
	private String address;
	private String traffic;
	private String introduction;
	private String teachers;
	private String picName;
	private Timestamp publicDate;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set allTeachers = new HashSet(0);
	private Set prominentTeachers = new HashSet(0);
	private Set goodStudents = new HashSet(0);

	// Constructors

	/** default constructor */
	public CampusInfo() {
	}

	/** minimal constructor */
	public CampusInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public CampusInfo(String id, RegionSecondInfo regionSecondInfo,
			String campusName, String reserveTime, String phone,
			String address, String traffic, String introduction,
			String teachers, String picName, Timestamp publicDate,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate, Set allTeachers, Set prominentTeachers,
			Set goodStudents) {
		this.id = id;
		this.regionSecondInfo = regionSecondInfo;
		this.campusName = campusName;
		this.reserveTime = reserveTime;
		this.phone = phone;
		this.address = address;
		this.traffic = traffic;
		this.introduction = introduction;
		this.teachers = teachers;
		this.picName = picName;
		this.publicDate = publicDate;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.allTeachers = allTeachers;
		this.prominentTeachers = prominentTeachers;
		this.goodStudents = goodStudents;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public RegionSecondInfo getRegionSecondInfo() {
		return this.regionSecondInfo;
	}

	public void setRegionSecondInfo(RegionSecondInfo regionSecondInfo) {
		this.regionSecondInfo = regionSecondInfo;
	}

	public String getCampusName() {
		return this.campusName;
	}

	public void setCampusName(String campusName) {
		this.campusName = campusName;
	}

	public String getReserveTime() {
		return this.reserveTime;
	}

	public void setReserveTime(String reserveTime) {
		this.reserveTime = reserveTime;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTraffic() {
		return this.traffic;
	}

	public void setTraffic(String traffic) {
		this.traffic = traffic;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getTeachers() {
		return this.teachers;
	}

	public void setTeachers(String teachers) {
		this.teachers = teachers;
	}

	public String getPicName() {
		return this.picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
	}

	public Timestamp getPublicDate() {
		return this.publicDate;
	}

	public void setPublicDate(Timestamp publicDate) {
		this.publicDate = publicDate;
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

	public Set getAllTeachers() {
		return this.allTeachers;
	}

	public void setAllTeachers(Set allTeachers) {
		this.allTeachers = allTeachers;
	}

	public Set getProminentTeachers() {
		return this.prominentTeachers;
	}

	public void setProminentTeachers(Set prominentTeachers) {
		this.prominentTeachers = prominentTeachers;
	}

	public Set getGoodStudents() {
		return this.goodStudents;
	}

	public void setGoodStudents(Set goodStudents) {
		this.goodStudents = goodStudents;
	}

}