package in.jmi.controller;

import in.jmi.constants.DepartmentName;
import in.jmi.constants.PaperCategory;
import in.jmi.constants.Semester;
import in.jmi.model.Subject;
import in.jmi.service.SubjectService;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SubjectController {
	
	@Autowired
	private SubjectService subjectService;

	/*
	 * Adding/viewing/editing and deleting subjects
	 */

	@RequestMapping(value = "/subject", params = "add", method = RequestMethod.GET)
	public String getAddSubject(Model model) {
		// ArrayList<PaperCategory> categories=new Paper

		model.addAttribute("categories", PaperCategory.values());
		model.addAttribute("semesters", Semester.values());
		model.addAttribute("departments", DepartmentName.values());
		model.addAttribute("subject", new Subject());
		return "subject/add";
	}

	@RequestMapping(value = "/subject", params = "add", method = RequestMethod.POST)
	public String postAddSubject(@ModelAttribute @Valid Subject subject,
			BindingResult result, Model model) {

		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());

			model.addAttribute("categories", PaperCategory.values());
			model.addAttribute("semesters", Semester.values());
			model.addAttribute("departments", DepartmentName.values());

			return "subject/add";

		} else {
			System.out.println("Inside postAddSubject");
			subject = subjectService.save(subject);
			return "redirect:subject?id=" + subject.getId();
		}

	}

	@RequestMapping(value = "/subject", method = RequestMethod.GET)
	public String postAddSubject(@RequestParam("id") long id, Model model) {
		model.addAttribute("subject", subjectService.findOne(id));
		return "subject/view";
	}

	@RequestMapping(value = "/subject", params = "edit", method = RequestMethod.GET)
	public String getEditSubject(@RequestParam("id") long id, Model model) {
		model.addAttribute("subject", subjectService.findOne(id));
		model.addAttribute("categories", PaperCategory.values());
		model.addAttribute("semesters", Semester.values());
		model.addAttribute("departments", DepartmentName.values());
		return "subject/edit";
	}

	@RequestMapping(value = "/subject", params = "edit", method = RequestMethod.POST)
	public String postEditSubject(@ModelAttribute @Valid Subject subject,BindingResult result,Model model) {

		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());

			model.addAttribute("categories", PaperCategory.values());
			model.addAttribute("semesters", Semester.values());
			model.addAttribute("departments", DepartmentName.values());
			return "subject/edit";
		} else {
			Subject updatedSubject = subjectService.findOne(subject.getId());
			updatedSubject.setDepartmentName(subject.getDepartmentName());
			updatedSubject.setPaperCategory(subject.getPaperCategory());
			updatedSubject.setPaperName(subject.getPaperName());
			updatedSubject.setPaperSemester(subject.getPaperSemester());
			updatedSubject.setPaperNumber(subject.getPaperNumber());

			updatedSubject = subjectService.update(updatedSubject);
			// redirect to view page
			return "redirect:subject?id=" + updatedSubject.getId();
		}	
	}

	@RequestMapping(value = "/subject", params = "delete", method = RequestMethod.POST)
	public String postDeleteSubject(@RequestParam long id) {
		subjectService.delete(subjectService.findOne(id));
		return "redirect:adminHome";
	}


}
