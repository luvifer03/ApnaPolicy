package com.cognizant.cms.models;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
 public class CheckClaim {
	@Id
	private Integer claimId;
	private String userId;
	private String claimAmount;
	private String policyId;
	private String policyAmount;
	private String policyExpDate;
	private String status;
	
}
	