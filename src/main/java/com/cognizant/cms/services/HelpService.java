package com.cognizant.cms.services;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.Help;
@Service
@Component
public interface HelpService {
	
	public List<Help> getAll();

}
