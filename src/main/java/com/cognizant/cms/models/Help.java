package com.cognizant.cms.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="help")
public class Help {
	@SequenceGenerator(name = "helpSeq",initialValue = 100, allocationSize = 1, sequenceName = "HELP_SEQ")
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "helpSeq")
	private int hid;
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getIssue() {
		return issue;
	}
	public void setIssue(String issue) {
		this.issue = issue;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Column
	private int userId;
	@Column
	private String issue;
	@Column(length=255)
	private String description;
	@Column
	private String status="new";

}
