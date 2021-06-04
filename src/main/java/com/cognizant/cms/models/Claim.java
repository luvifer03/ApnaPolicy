package com.cognizant.cms.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="claim")
public class Claim {
	@SequenceGenerator(name = "claimSeq",initialValue = 200, allocationSize = 1, sequenceName = "CLAIM_SEQ")
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "claimSeq")
	private Integer claimId;
	private Integer userId;
	private Integer policyId;
	private String claimType;
	private Integer amount;
	private String status;

}
