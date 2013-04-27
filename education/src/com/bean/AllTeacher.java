package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * AllTeacher entity. @author MyEclipse Persistence Tools
 */

public class AllTeacher implements java.io.Serializable {

	// Fields

	private String id;
	private RegionSecondInfo regionSecondInfo;
	private CourseInfo courseInfo;
	private GradeInfo gradeInfo;
	private CampusInfo campusInfo;
	private String allTeacherName;
	private String allTeacherLogos;
	private String chengGuo;
	private String teDian;
	private String jingYan;
	private String rongYu;
	private String picName;
	private Timestamp publicDate;
	private String displayOrder;
	private String state;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set goodStudents = new HashSet(0);

	// Constructors

	/** default constructor */
	public AllTeacher() {
	}

	/** minimal constructor */
	public AllTeacher(String id) {
		this.id = id;
	}

	/** full constructor */
	public AllTeacher(String id, RegionSecondInfo regionSecondInfo,
			CourseInfo courseInfo, GradeInfo gradeInfo, CampusInfo campusInfo,
			String allTeacherName, String allTeacherLogos, String chengGuo,
			String teDian, String jingYan, String rongYu, String picName,
			Timestamp publicDate, String displayOrder, String state,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate, Set goodStudents) {
		this.id = id;
		this.regionSecondInfo = regionSecondInfo;
		this.courseInfo = courseInfo;
		this.gradeInfo = gradeInfo;
		this.campusInfo = campusInfo;
		this.allTeacherName = allTeacherName;
		this.allTeacherLogos = allTeacherLogos;
		this.chengGuo = chengGuo;
		this.teDian = teDian;
		this.jingYan = jingYan;
		this.rongYu = rongYu;
		this.picName = picName;
		this.publicDate = publicDate;
		this.displayOrder = displayOrder;
		this.state = state;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
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

	public String getAllTeacherName() {
		return this.allTeacherName;
	}

	public void setAllTeacherName(String allTeacherName) {
		this.allTeacherName = allTeacherName;
	}

	public String getAllTeacherLogos() {
		return this.allTeacherLogos;
	}

	public void setAllTeacherLogos(String allTeacherLogos) {
		this.allTeacherLogos = allTeacherLogos;
	}

	public String getChengGuo() {
		return this.chengGuo;
	}

	public void setChengGuo(String chengGuo) {
		this.chengGuo = chengGuo;
	}

	public String getTeDian() {
		return this.teDian;
	}

	public void setTeDian(String teDian) {
		this.teDian = teDian;
	}

	public String getJingYan() {
		return this.jingYan;
	}

	public void setJingYan(String jingYan) {
		this.jingYan = jingYan;
	}

	public String getRongYu() {
		return this.rongYu;
	}

	public void setRongYu(String rongYu) {
		this.rongYu = rongYu;
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

	public Set getGoodStudents() {
		return this.goodStudents;
	}

	public void setGoodStudents(Set goodStudents) {
		this.goodStudents = goodStudents;
	}

}