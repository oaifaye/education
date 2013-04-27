package com.bean;

import java.sql.Timestamp;

/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager implements java.io.Serializable {

	// Fields

	private String id;
	private String managerUserName;
	private String managerPassword;
	private String managerKind;
	private String createBy;
	private Timestamp createDate;
	private String updateBy;
	private Timestamp updateDate;

	// Constructors

	/** default constructor */
	public Manager() {
	}

	/** minimal constructor */
	public Manager(String id) {
		this.id = id;
	}

	/** full constructor */
	public Manager(String id, String managerUserName, String managerPassword,
			String managerKind, String createBy, Timestamp createDate,
			String updateBy, Timestamp updateDate) {
		this.id = id;
		this.managerUserName = managerUserName;
		this.managerPassword = managerPassword;
		this.managerKind = managerKind;
		this.createBy = createBy;
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

	public String getManagerUserName() {
		return this.managerUserName;
	}

	public void setManagerUserName(String managerUserName) {
		this.managerUserName = managerUserName;
	}

	public String getManagerPassword() {
		return this.managerPassword;
	}

	public void setManagerPassword(String managerPassword) {
		this.managerPassword = managerPassword;
	}

	public String getManagerKind() {
		return this.managerKind;
	}

	public void setManagerKind(String managerKind) {
		this.managerKind = managerKind;
	}

	public String getCreateBy() {
		return this.createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
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