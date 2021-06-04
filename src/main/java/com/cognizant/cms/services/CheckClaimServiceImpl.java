package com.cognizant.cms.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cognizant.cms.dao.CheckClaimRepository;
import com.cognizant.cms.models.CheckClaim;
@Component
public class CheckClaimServiceImpl implements CheckClaimService {

	
	@Autowired
	private CheckClaimRepository checkClaimRepo;
	
	@Override
	public void save(CheckClaim checkClaim) {
		checkClaimRepo.save(checkClaim);
	}
	
	@Override
	public Optional<CheckClaim> findById(int id){
		return checkClaimRepo.findById(id);
	}

}
