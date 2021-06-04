package com.cognizant.cms.models;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table
public class Policy {
	@Id
	private Integer policyId;
	private Integer userId;
	private Integer policyAmount;
	private Date policyExpDate;

}
