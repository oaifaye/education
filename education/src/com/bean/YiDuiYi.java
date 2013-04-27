package com.bean;

import java.sql.Timestamp;

/**
 * YiDuiYi entity. @author MyEclipse Persistence Tools
 */

public class YiDuiYi implements java.io.Serializable {

	// Fields

	private String id;
	private CourseInfo courseInfo;
	private GradeInfo gradeInfo;
	private String title;
	private String fitPerson;
	private String classTime;
	private String phone;
	private String regulations;
	private String picName;
	private Timestamp publicDate;
	private String displayOrder;
	private String state;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;

	// Constructors

	/** default constructor */
	public YiDuiYi() {
	}

	/** minimal constructor */
	public YiDuiYi(String id) {
		this.id = id;
	}

	/** full constructor */
	public YiDuiYi(String id, CourseInfo courseInfo, GradeInfo gradeInfo,
			String title, String fitPerson, String classTime, String phone,
			String regulations, String picName, Timestamp publicDate,
			String displayOrder, String state, String creatBy,
			Timestamp createDate, String updateBy, Timestamp updateDate) {
		this.id = id;
		this.courseInfo = courseInfo;
		this.gradeInfo = gradeInfo;
		this.title = title;
		this.fitPerson = fitPerson;
		this.classTime = classTime;
		this.phone = phone;
		this.regulations = regulations;
		this.picName = picName;
		this.publicDate = publicDate;
		this.displayOrder = displayOrder;
		this.state = state;
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

	public CourseInfo getCourseInfo() {
		return this.courseInfo;
	}

	public void setCourseInfo(CourseInfo courseInfo) {
		this.courseInfo = courseInfo;
	}

	public GradeInfo getGradeInfo() {
		return this.gradeInfo;
	}

	public void setGradeInfo(GradeInfo gradeInfo) {
		this.gradeInfo = gradeInfo;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFitPerson() {
		return this.fitPerson;
	}

	public void setFitPerson(String fitPerson) {
		this.fitPerson = fitPerson;
	}

	public String getClassTime() {
		return this.classTime;
	}

	public void setClassTime(String classTime) {
		this.classTime = classTime;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRegulations() {
		return this.regulations;
	}

	public void setRegulations(String regulations) {
		this.regulations = regulations;
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

	public String getDisplayOrder() {
		return this.displayOrder;
	}

	public void setDisplayOrder(String displayOrder) {
		this.displayOrder = displayOrder;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
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