package com.bean;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * EduCounselingFirstInfo entity. @author MyEclipse Persistence Tools
 */

public class EduCounselingFirstInfo implements java.io.Serializable {

	// Fields

	private String id;
	private String eduCounselingFirstName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;
	private Set eduCounselingSecondInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public EduCounselingFirstInfo() {
	}

	/** minimal constructor */
	public EduCounselingFirstInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public EduCounselingFirstInfo(String id, String eduCounselingFirstName,
			String creatBy, Timestamp createDate, String updateBy,
			Timestamp updateDate, Set eduCounselingSecondInfos) {
		this.id = id;
		this.eduCounselingFirstName = eduCounselingFirstName;
		this.creatBy = creatBy;
		this.createDate = createDate;
		this.updateBy = updateBy;
		this.updateDate = updateDate;
		this.eduCounselingSecondInfos = eduCounselingSecondInfos;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEduCounselingFirstName() {
		return this.eduCounselingFirstName;
	}

	public void setEduCounselingFirstName(String eduCounselingFirstName) {
		this.eduCounselingFirstName = eduCounselingFirstName;
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

	public Set getEduCounselingSecondInfos() {
		return this.eduCounselingSecondInfos;
	}

	public void setEduCounselingSecondInfos(Set eduCounselingSecondInfos) {
		this.eduCounselingSecondInfos = eduCounselingSecondInfos;
	}

}