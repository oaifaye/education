package com.bean;

import java.sql.Timestamp;

/**
 * GoodStudent entity. @author MyEclipse Persistence Tools
 */

public class GoodStudent implements java.io.Serializable {

	// Fields

	private String id;
	private AllTeacher allTeacher;
	private CourseInfo courseInfo;
	private GradeInfo gradeInfo;
	private CampusInfo campusInfo;
	private String studentName;
	private String studentSchool;
	private Integer beforeStudy;
	private Integer behindStudy;
	private String geXing;
	private String fangXiang;
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
	public GoodStudent() {
	}

	/** minimal constructor */
	public GoodStudent(String id) {
		this.id = id;
	}

	/** full constructor */
	public GoodStudent(String id, AllTeacher allTeacher, CourseInfo courseInfo,
			GradeInfo gradeInfo, CampusInfo campusInfo, String studentName,
			String studentSchool, Integer beforeStudy, Integer behindStudy,
			String geXing, String fangXiang, String picName,
			Timestamp publicDate, String displayOrder, String state,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate) {
		this.id = id;
		this.allTeacher = allTeacher;
		this.courseInfo = courseInfo;
		this.gradeInfo = gradeInfo;
		this.campusInfo = campusInfo;
		this.studentName = studentName;
		this.studentSchool = studentSchool;
		this.beforeStudy = beforeStudy;
		this.behindStudy = behindStudy;
		this.geXing = geXing;
		this.fangXiang = fangXiang;
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

	public AllTeacher getAllTeacher() {
		return this.allTeacher;
	}

	public void setAllTeacher(AllTeacher allTeacher) {
		this.allTeacher = allTeacher;
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

	public CampusInfo getCampusInfo() {
		return this.campusInfo;
	}

	public void setCampusInfo(CampusInfo campusInfo) {
		this.campusInfo = campusInfo;
	}

	public String getStudentName() {
		return this.studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentSchool() {
		return this.studentSchool;
	}

	public void setStudentSchool(String studentSchool) {
		this.studentSchool = studentSchool;
	}

	public Integer getBeforeStudy() {
		return this.beforeStudy;
	}

	public void setBeforeStudy(Integer beforeStudy) {
		this.beforeStudy = beforeStudy;
	}

	public Integer getBehindStudy() {
		return this.behindStudy;
	}

	public void setBehindStudy(Integer behindStudy) {
		this.behindStudy = behindStudy;
	}

	public String getGeXing() {
		return this.geXing;
	}

	public void setGeXing(String geXing) {
		this.geXing = geXing;
	}

	public String getFangXiang() {
		return this.fangXiang;
	}

	public void setFangXiang(String fangXiang) {
		this.fangXiang = fangXiang;
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