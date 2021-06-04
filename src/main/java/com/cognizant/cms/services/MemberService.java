package com.cognizant.cms.services;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cognizant.cms.models.Help;

@Service
@Component
public interface MemberService {
	public int help(Help h);

}
