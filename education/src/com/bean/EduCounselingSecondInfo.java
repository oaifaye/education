package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * EduCounselingSecondInfo entity. @author MyEclipse Persistence Tools
 */

public class EduCounselingSecondInfo implements java.io.Serializable {

	// Fields

	private String id;
	private EduCounselingFirstInfo eduCounselingFirstInfo;
	private String eduCounselingSecondName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set educationalCounselings = new HashSet(0);

	// Constructors

	/** default constructor */
	public EduCounselingSecondInfo() {
	}

	/** minimal constructor */
	public EduCounselingSecondInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public EduCounselingSecondInfo(String id,
			EduCounselingFirstInfo eduCounselingFirstInfo,
			String eduCounselingSecondName, String creatBy,
			Timestamp createDate, String updateBy, Timestamp updateDate,
			Set educationalCounselings) {
		this.id = id;
		this.eduCounselingFirstInfo = eduCounselingFirstInfo;
		this.eduCounselingSecondName = eduCounselingSecondName;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.educationalCounselings = educationalCounselings;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public EduCounselingFirstInfo getEduCounselingFirstInfo() {
		return this.eduCounselingFirstInfo;
	}

	public void setEduCounselingFirstInfo(
			EduCounselingFirstInfo eduCounselingFirstInfo) {
		this.eduCounselingFirstInfo = eduCounselingFirstInfo;
	}

	public String getEduCounselingSecondName() {
		return this.eduCounselingSecondName;
	}

	public void setEduCounselingSecondName(String eduCounselingSecondName) {
		this.eduCounselingSecondName = eduCounselingSecondName;
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

	public Set getEducationalCounselings() {
		return this.educationalCounselings;
	}

	public void setEducationalCounselings(Set educationalCounselings) {
		this.educationalCounselings = educationalCounselings;
	}

}