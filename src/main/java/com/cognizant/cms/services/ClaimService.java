package com.cognizant.cms.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.CheckClaim;
import com.cognizant.cms.models.Claim;
import com.cognizant.cms.models.Policy;
@Service
@Component
public interface ClaimService {
	public String saveClaim(Claim claim);
	public List<CheckClaim> getAll();
	public Optional<Claim> getId(int claimId);
	public Claim updateClaim(Claim claim);
	public List<Claim> getAllClaimForAUser(int id);
	public void updateCheckClaim(Claim claim);
	public void save(Claim claim);
	public List<Claim> getUserById(int userId);
	public Optional<Policy> findPolicyById(int id);
	//public String getClaimIdFromSession(List<Claim> claim1);
	

}
