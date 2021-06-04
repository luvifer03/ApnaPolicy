package com.cognizant.cms.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.dao.CheckClaimRepository;
import com.cognizant.cms.dao.ClaimRepository;
import com.cognizant.cms.dao.PolicyRepository;
import com.cognizant.cms.models.CheckClaim;
import com.cognizant.cms.models.Claim;
import com.cognizant.cms.models.Policy;

@Service
@Component
public class ClaimServiceImpl implements ClaimService {

	@Autowired
	private ClaimRepository claimRepo;

	@Autowired
	private PolicyRepository policyRepo;

	@Autowired
	private CheckClaimRepository checkClaimRepo;

	@Override
	public String saveClaim(Claim claim) {
		String claimId = "testing";
		String s1;
		Optional<Claim> saveClaim = claimRepo.findByPolicyId(claim.getPolicyId());
		System.out.println(saveClaim);
		System.out.println("printin the claim input useriD" + claim.getUserId());
		List<Policy> flag = policyRepo.findAllByUserId(claim.getUserId());
		System.out.println(flag);
		Optional<Policy> policyCheck = policyRepo.findById(claim.getPolicyId());
		System.out.println("prinitng policy check"+policyCheck);
		// s1 = claimRepo.checkClaim(claim.getUserId());
		//Claim savedClaim = claimRepo.save(claim);
		if (policyCheck.isPresent()) {

			if (flag != null) {

				if (saveClaim.isPresent()) {

					// System.out.println(claim1.getUserId());
					Policy policy1 = policyCheck.get();
					if (claim.getUserId() == policy1.getUserId()) {
						claimId = "Claim Submitted check the Status Tab to know more";
						System.out.println(saveClaim);
					} else {
						claimId = "No such Policy Registered on your Account.Contact Admin";
						
					}
				} else {

					try {
						Claim savedClaim = claimRepo.save(claim);
						s1 = claimRepo.checkClaim(claim.getUserId());

						System.out.println("printing the checkclaim value");
						System.out.println(s1);
						if (s1 == null) {
							claimId = "The policy doesnt Exists";
						} else {
							System.out.println("printing after conversion");
							System.out.println(convertToCheckClaimObject(s1));

							claimId = "You Claim has been successfully Registered with Id: " + savedClaim.getClaimId()
									+ " Keep it noted for future reference";
							// System.out.println(savedClaim);
						}
					} catch (Exception e) {
						claimId = "You can not request for more than 1 claim wait for the approval of last claim";
					}
				}

			}
		}

		else {

			claimId = "The policy is not registered";
			System.out.println(policyCheck);

		}
		return claimId;
	}

	@Override
	public void updateCheckClaim(Claim claim) {
		Integer claimUserID = claim.getUserId();
		String newQueryResult = claimRepo.checkClaim(claimUserID);
		System.out.println(convertToCheckClaimObject(newQueryResult));

	}

	public CheckClaim convertToCheckClaimObject(String s1) {
		CheckClaim checkClaim = new CheckClaim();
		String[] vals = s1.split(",");
		System.out.println("check claim method");

		checkClaim.setUserId(vals[0]);
		checkClaim.setClaimId(Integer.valueOf(vals[1]));
		checkClaim.setPolicyId(vals[2]);
		checkClaim.setClaimAmount(vals[3]);
		checkClaim.setPolicyAmount(vals[4]);
		checkClaim.setPolicyExpDate(vals[5]);
		checkClaim.setStatus(vals[6]);
		checkClaimRepo.save(checkClaim);
		System.out.println(checkClaim);

		return checkClaim;

	}

	@Override
	public List<CheckClaim> getAll() {
		return checkClaimRepo.findAll();
	}

	@Override
	public Optional<Claim> getId(int claimId) {
		return claimRepo.findById(claimId);
	}

	@Override
	public Claim updateClaim(Claim claim) {
		return claimRepo.save(claim);
	}

	@Override
	public List<Claim> getAllClaimForAUser(int id) {
		return claimRepo.findByUserId(id);
	}

	@Override
	public void save(Claim claim) {
		claimRepo.save(claim);
	}

	@Override
	public List<Claim> getUserById(int userId) {
		return claimRepo.findByUserId(userId);

	}

	@Override
	public Optional<Policy> findPolicyById(int id) {
		return policyRepo.findById(id);
	}

}
