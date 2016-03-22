package in.jmi.controller;

import in.jmi.service.SubjectService;
import in.jmi.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private SubjectService subjectService;

	/*
	 * Displaying Admin Home page with all the information from users and
	 * Subjects
	 */

	@RequestMapping(value = "/adminHome", method = RequestMethod.GET)
	public String getAdminHome(Model model) {

		//TODO change it to exclude students from here
		model.addAttribute("users", userService.findAll());
		model.addAttribute("subjects", subjectService.findAll());
		//model.addAttribute("students", studentRepository.findAll());
		return "admin/AdminHome";
	}


	
	
}
