package com.bean;

import java.sql.Timestamp;

/**
 * EducationalCounseling entity. @author MyEclipse Persistence Tools
 */

public class EducationalCounseling implements java.io.Serializable {

	// Fields

	private String id;
	private EduCounselingSecondInfo eduCounselingSecondInfo;
	private EduCounselingFirstInfo eduCounselingFirstInfo;
	private String eduCounselingTitle;
	private String author;
	private Timestamp publicDate;
	private String content;
	private String picName;
	private String displayOrder;
	private String state;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;

	// Constructors

	/** default constructor */
	public EducationalCounseling() {
	}

	/** minimal constructor */
	public EducationalCounseling(String id) {
		this.id = id;
	}

	/** full constructor */
	public EducationalCounseling(String id,
			EduCounselingSecondInfo eduCounselingSecondInfo,
			EduCounselingFirstInfo eduCounselingFirstInfo,
			String eduCounselingTitle, String author, Timestamp publicDate,
			String content, String picName, String displayOrder, String state,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate) {
		this.id = id;
		this.eduCounselingSecondInfo = eduCounselingSecondInfo;
		this.eduCounselingFirstInfo = eduCounselingFirstInfo;
		this.eduCounselingTitle = eduCounselingTitle;
		this.author = author;
		this.publicDate = publicDate;
		this.content = content;
		this.picName = picName;
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

	public EduCounselingSecondInfo getEduCounselingSecondInfo() {
		return this.eduCounselingSecondInfo;
	}

	public void setEduCounselingSecondInfo(
			EduCounselingSecondInfo eduCounselingSecondInfo) {
		this.eduCounselingSecondInfo = eduCounselingSecondInfo;
	}

	public EduCounselingFirstInfo getEduCounselingFirstInfo() {
		return this.eduCounselingFirstInfo;
	}

	public void setEduCounselingFirstInfo(
			EduCounselingFirstInfo eduCounselingFirstInfo) {
		this.eduCounselingFirstInfo = eduCounselingFirstInfo;
	}

	public String getEduCounselingTitle() {
		return this.eduCounselingTitle;
	}

	public void setEduCounselingTitle(String eduCounselingTitle) {
		this.eduCounselingTitle = eduCounselingTitle;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Timestamp getPublicDate() {
		return this.publicDate;
	}

	public void setPublicDate(Timestamp publicDate) {
		this.publicDate = publicDate;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPicName() {
		return this.picName;
	}

	public void setPicName(String picName) {
		this.picName = picName;
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