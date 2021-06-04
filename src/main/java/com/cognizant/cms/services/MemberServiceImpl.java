package com.cognizant.cms.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.dao.HelpRepository;
import com.cognizant.cms.models.Help;
@Service
@Component
public class MemberServiceImpl implements MemberService {

	@Autowired
	private HelpRepository helpRepo;
	
	@Override
	public int help(Help h) {
		helpRepo.save(h);
		if(h!=null) {
			return 1;
		}
		else {
			return 2;
		}
	
	}
}
