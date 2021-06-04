package com.cognizant.cms.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.cms.models.User;
import com.cognizant.cms.models.UserLogin;

@Controller
public class HomeController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String userHome1(Model model) {

		model.addAttribute("user", new UserLogin());
		return "redirect:/cms/userlogin";
	}
}
