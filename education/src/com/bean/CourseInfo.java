package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * CourseInfo entity. @author MyEclipse Persistence Tools
 */

public class CourseInfo implements java.io.Serializable {

	// Fields

	private String id;
	private GradeInfo gradeInfo;
	private String courseName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;

	// Constructors

	/** default constructor */
	public CourseInfo() {
	}

	/** minimal constructor */
	public CourseInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public CourseInfo(String id, GradeInfo gradeInfo, String courseName,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate) {
		this.id = id;
		this.gradeInfo = gradeInfo;
		this.courseName = courseName;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public GradeInfo getGradeInfo() {
		return this.gradeInfo;
	}

	public void setGradeInfo(GradeInfo gradeInfo) {
		this.gradeInfo = gradeInfo;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
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


}