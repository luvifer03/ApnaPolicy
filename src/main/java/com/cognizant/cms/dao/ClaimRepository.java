package com.cognizant.cms.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.cms.models.Claim;

@Repository
public interface ClaimRepository extends JpaRepository<Claim, Integer> {
	public Optional<Claim> findByPolicyId(int policyId);
	public List<Claim> findByUserId(int uid);
	
	@Query(value="select policy.user_id,claim.claim_id,policy.policy_id, claim.amount, policy.policy_amount,policy.policy_exp_date, claim.status from claim inner join policy on claim.policy_id=policy.policy_id where policy.user_id=? ", nativeQuery = true)
	public String checkClaim(int id);
		
	
}
