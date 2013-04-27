package com.bean;

import java.sql.Timestamp;

/**
 * RegionFirstInfo entity. @author MyEclipse Persistence Tools
 */

public class RegionFirstInfo implements java.io.Serializable {

	// Fields

	private String id;
	private String regFirstName;
	private String creatBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;

	// Constructors

	/** default constructor */
	public RegionFirstInfo() {
	}

	/** minimal constructor */
	public RegionFirstInfo(String id) {
		this.id = id;
	}

	/** full constructor */
	public RegionFirstInfo(String id, String regFirstName, String creatBy,
			Timestamp createDate, String updateBy, Timestamp updateDate) {
		this.id = id;
		this.regFirstName = regFirstName;
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

	public String getRegFirstName() {
		return this.regFirstName;
	}

	public void setRegFirstName(String regFirstName) {
		this.regFirstName = regFirstName;
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