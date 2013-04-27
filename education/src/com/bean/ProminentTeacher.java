package com.bean;

import java.sql.Timestamp;

/**
 * ProminentTeacher entity. @author MyEclipse Persistence Tools
 */

public class ProminentTeacher implements java.io.Serializable {

	// Fields

	private String id;
	private RegionSecondInfo regionSecondInfo;
	private CourseInfo courseInfo;
	private GradeInfo gradeInfo;
	private CampusInfo campusInfo;
	private String proTeacherName;
	private String proTeacherHonour;
	private String proTeacherWorkTime;
	private String proTeacherGraduate;
	private String proTeacherLogos;
	private String gaoKao;
	private String zhongKao;
	private String xiaoShengChu;
	private String yiKao;
	private String zishen;
	private String zhuanti;
	private String peiYou;
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
	public ProminentTeacher() {
	}

	/** minimal constructor */
	public ProminentTeacher(String id) {
		this.id = id;
	}

	/** full constructor */
	public ProminentTeacher(String id, RegionSecondInfo regionSecondInfo,
			CourseInfo courseInfo, GradeInfo gradeInfo, CampusInfo campusInfo,
			String proTeacherName, String proTeacherHonour,
			String proTeacherWorkTime, String proTeacherGraduate,
			String proTeacherLogos, String gaoKao, String zhongKao,
			String xiaoShengChu, String yiKao, String zishen, String zhuanti,
			String peiYou, String picName, Timestamp publicDate,
			String displayOrder, String state, String creatBy,
			Timestamp createDate, String updateBy, Timestamp updateDate) {
		this.id = id;
		this.regionSecondInfo = regionSecondInfo;
		this.courseInfo = courseInfo;
		this.gradeInfo = gradeInfo;
		this.campusInfo = campusInfo;
		this.proTeacherName = proTeacherName;
		this.proTeacherHonour = proTeacherHonour;
		this.proTeacherWorkTime = proTeacherWorkTime;
		this.proTeacherGraduate = proTeacherGraduate;
		this.proTeacherLogos = proTeacherLogos;
		this.gaoKao = gaoKao;
		this.zhongKao = zhongKao;
		this.xiaoShengChu = xiaoShengChu;
		this.yiKao = yiKao;
		this.zishen = zishen;
		this.zhuanti = zhuanti;
		this.peiYou = peiYou;
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

	public String getProTeacherName() {
		return this.proTeacherName;
	}

	public void setProTeacherName(String proTeacherName) {
		this.proTeacherName = proTeacherName;
	}

	public String getProTeacherHonour() {
		return this.proTeacherHonour;
	}

	public void setProTeacherHonour(String proTeacherHonour) {
		this.proTeacherHonour = proTeacherHonour;
	}

	public String getProTeacherWorkTime() {
		return this.proTeacherWorkTime;
	}

	public void setProTeacherWorkTime(String proTeacherWorkTime) {
		this.proTeacherWorkTime = proTeacherWorkTime;
	}

	public String getProTeacherGraduate() {
		return this.proTeacherGraduate;
	}

	public void setProTeacherGraduate(String proTeacherGraduate) {
		this.proTeacherGraduate = proTeacherGraduate;
	}

	public String getProTeacherLogos() {
		return this.proTeacherLogos;
	}

	public void setProTeacherLogos(String proTeacherLogos) {
		this.proTeacherLogos = proTeacherLogos;
	}

	public String getGaoKao() {
		return this.gaoKao;
	}

	public void setGaoKao(String gaoKao) {
		this.gaoKao = gaoKao;
	}

	public String getZhongKao() {
		return this.zhongKao;
	}

	public void setZhongKao(String zhongKao) {
		this.zhongKao = zhongKao;
	}

	public String getXiaoShengChu() {
		return this.xiaoShengChu;
	}

	public void setXiaoShengChu(String xiaoShengChu) {
		this.xiaoShengChu = xiaoShengChu;
	}

	public String getYiKao() {
		return this.yiKao;
	}

	public void setYiKao(String yiKao) {
		this.yiKao = yiKao;
	}

	public String getZishen() {
		return this.zishen;
	}

	public void setZishen(String zishen) {
		this.zishen = zishen;
	}

	public String getZhuanti() {
		return this.zhuanti;
	}

	public void setZhuanti(String zhuanti) {
		this.zhuanti = zhuanti;
	}

	public String getPeiYou() {
		return this.peiYou;
	}

	public void setPeiYou(String peiYou) {
		this.peiYou = peiYou;
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