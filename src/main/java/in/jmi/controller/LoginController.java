package in.jmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLogin(Model model) {
		model.addAttribute("error_message", "");
		System.out.println("Inside getLogin above login");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(
			@RequestParam("user_name") String userName,
			@RequestParam("password") String password,
			Model model) {

		System.out.println(userName + " " + password);
		System.out.println("Inside postLogin above StudentsDetails");

		if (userName.equals("faisal") && password.equals("faisal"))
			return "admin/AdminHome";
		else{
			model.addAttribute("error_message", "Wrong user name or password");
			return "login";
			
		}
	}

	@RequestMapping(value = "/studentDetails", method = RequestMethod.GET)
	public String getStudentDetails() {
		System.out.println("Inside getStudentDetails above StudentsDetails");
		return "StudentDetails";
	}

	@RequestMapping(value = "/studentDetails", method = RequestMethod.POST)
	public String postStudentDetails() {
		System.out.println("Inside postStudent above ExamForm");
		return "ExamForm";
	}

}
