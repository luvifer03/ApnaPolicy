package com.cognizant.cms.services;

import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.CheckClaim;
@Service
@Component
public interface CheckClaimService {
	
	public void save(CheckClaim checkClaim);
	public Optional<CheckClaim> findById(int id);

}
