package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * GradeInfo entity. @author MyEclipse Persistence Tools
 */

public class GradeInfo implements java.io.Serializable {

	// Fields

	private String id;
	private String gradeName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set yiDuiYis = new HashSet(0);
	private Set goodStudents = new HashSet(0);
	private Set allTeachers = new HashSet(0);
	private Set prominentTeachers = new HashSet(0);

	// Constructors

	/** default constructor */
	public GradeInfo() {
	}

	/** minimal constructor */
	public GradeInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public GradeInfo(String id, String gradeName, String creatBy,
			Timestamp createDate, String updateBy, Timestamp updateDate,
			Set yiDuiYis, Set goodStudents, Set allTeachers,
			Set prominentTeachers) {
		this.id = id;
		this.gradeName = gradeName;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.yiDuiYis = yiDuiYis;
		this.goodStudents = goodStudents;
		this.allTeachers = allTeachers;
		this.prominentTeachers = prominentTeachers;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGradeName() {
		return this.gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
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

	public Set getYiDuiYis() {
		return this.yiDuiYis;
	}

	public void setYiDuiYis(Set yiDuiYis) {
		this.yiDuiYis = yiDuiYis;
	}

	public Set getGoodStudents() {
		return this.goodStudents;
	}

	public void setGoodStudents(Set goodStudents) {
		this.goodStudents = goodStudents;
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

}