package com.cognizant.cms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.dao.HelpRepository;
import com.cognizant.cms.models.Help;
@Service
@Component
public class HelpServiceImpl implements HelpService {

	@Autowired
	private HelpRepository helpRepo;
	
	@Override
	public List<Help> getAll() {
		
		return helpRepo.findAll();
	}

	

}
