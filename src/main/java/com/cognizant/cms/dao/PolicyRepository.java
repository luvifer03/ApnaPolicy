package com.cognizant.cms.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.cms.models.Policy;

public interface PolicyRepository extends JpaRepository<Policy, Integer> {
	
	public List<Policy> findAllByUserId(int id);
	

}