package in.jmi.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import in.jmi.constants.Flag;
import in.jmi.constants.PaperCategory;
import in.jmi.model.Student;
import in.jmi.model.Subject;
import in.jmi.service.StudentService;
import in.jmi.service.SubjectService;
import in.jmi.util.PhotoValidator;

@Controller
public class ExamFormController {

	@Autowired
	private StudentService studentService;

	@Autowired
	private SubjectService subjectService;

	@Autowired
	PhotoValidator photoValidator;

	@Autowired
	ServletContext servletContext;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
		// binder.setValidator(photoValidator);
	}

	/*
	 * 
	 * Student Rustigated and exam form including photo and signature upload
	 * CRUD
	 */

	@RequestMapping(value = "/examForm", params = "edit", method = RequestMethod.GET)
	public String getEditExamForm(@RequestParam("id") long id, Model model) {

		model.addAttribute("student", studentService.findOne(id));
		model.addAttribute("flags", Flag.values());
		List<Subject> subjects = subjectService.findAll();

		List<Subject> qualifyingPapers = new ArrayList<Subject>();
		List<Subject> compulsaryPapers = new ArrayList<Subject>();
		List<Subject> coreCoursesHons = new ArrayList<Subject>();
		List<Subject> coreCoursesSubsidiary = new ArrayList<Subject>();
		List<Subject> choiceBasedCourses = new ArrayList<Subject>();
		List<Subject> skillEnhancementCourses = new ArrayList<Subject>();
		List<Subject> abilityEnhancementCourses = new ArrayList<Subject>();
		List<Subject> auditCourses = new ArrayList<Subject>();

		for (Subject subject : subjects) {
			if (subject.getPaperCategory().equals(PaperCategory.QUALIFYING_PAPER)) {
				qualifyingPapers.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.COMPULSARY_COURSE)) {
				compulsaryPapers.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.CORE_COURSE_HONS)) {
				coreCoursesHons.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.CORE_COURSE_SUBSIDIARY)) {
				coreCoursesSubsidiary.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.CHOICE_BASED_COURSE)) {
				choiceBasedCourses.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.SKILL_ENHANCEMENT_COURSE)) {
				skillEnhancementCourses.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.ABILITY_SKILL_ENHANCEMENT)) {
				abilityEnhancementCourses.add(subject);
			}
			if (subject.getPaperCategory().equals(PaperCategory.AUDIT_COURSE)) {
				auditCourses.add(subject);
			}

		}

		model.addAttribute("qualifyingPapers", qualifyingPapers);

		// For testing purpose
		model.addAttribute("compulsaryPapers", qualifyingPapers);
		model.addAttribute("coreCoursesHons", qualifyingPapers);
		model.addAttribute("coreCoursesSubsidiary", qualifyingPapers);
		model.addAttribute("choiceBasedCourses", qualifyingPapers);
		model.addAttribute("skillEnhancementCourses", qualifyingPapers);
		model.addAttribute("abilityEnhancementCourses", qualifyingPapers);
		model.addAttribute("auditCourses", qualifyingPapers);

		// model.addAttribute("compulsaryPapers", compulsaryPapers);
		// model.addAttribute("coreCoursesHons", coreCoursesHons);
		// model.addAttribute("coreCoursesSubsidiary", coreCoursesSubsidiary);
		// model.addAttribute("choiceBasedCourses", choiceBasedCourses);
		// model.addAttribute("skillEnhancementCourses",
		// skillEnhancementCourses);
		// model.addAttribute("abilityEnhancementCourses",
		// abilityEnhancementCourses);
		// model.addAttribute("auditCourses", auditCourses);

		return "examForm/edit";
	}

	@RequestMapping(value = "/examForm", params = "edit", method = RequestMethod.POST)
	public String postEditExamForm(@RequestParam("signature") MultipartFile signature,@RequestParam("photo") MultipartFile photo,
			@ModelAttribute @Valid Student student, BindingResult result, Model model) throws IOException {

		// String PROFILE_UPLOAD_LOCATION = servletContext.getRealPath("/") +
		// File.separator + "resources" + File.separator
		// + "student_images" + File.separator;

		if (result.hasErrors()) {
			List<Subject> subjects = subjectService.findAll();

			List<Subject> qualifyingPapers = new ArrayList<Subject>();

			for (Subject subject : subjects) {
				if (subject.getPaperCategory().equals(PaperCategory.QUALIFYING_PAPER)) {
					qualifyingPapers.add(subject);
				}
			}

			model.addAttribute("qualifyingPapers", qualifyingPapers);

			// For testing purpose
			model.addAttribute("compulsaryPapers", qualifyingPapers);
			model.addAttribute("coreCoursesHons", qualifyingPapers);
			model.addAttribute("coreCoursesSubsidiary", qualifyingPapers);
			model.addAttribute("choiceBasedCourses", qualifyingPapers);
			model.addAttribute("skillEnhancementCourses", qualifyingPapers);
			model.addAttribute("abilityEnhancementCourses", qualifyingPapers);
			model.addAttribute("auditCourses", qualifyingPapers);
			model.addAttribute("flags", Flag.values());
			return "examForm/edit";

		} else {

			Student updatedStudent = studentService.findOne(student.getId());
			updatedStudent.setDisqualifiedDescription(student.getDisqualifiedDescription());
			Subject subject = new Subject();
			List<Subject> updatedSubject = new ArrayList<>();
			// for (int i = 0; i < 8; i++) {
			subject = subjectService.findOne(student.getSubjects().get(0).getId());
			updatedSubject.add(subject);
			// }
			updatedStudent.setSubjects(updatedSubject);
			/*
			 * Working code BufferedImage photo = ImageIO.read(new
			 * ByteArrayInputStream(student.getStudentPhoto().getBytes())); File
			 * destination1 = new File(PROFILE_UPLOAD_LOCATION + student.getId()
			 * + "_photo" + ".jpg"); ImageIO.write(photo, "jpg", destination1);
			 */
			// BufferedImage signature = ImageIO.read(new
			// ByteArrayInputStream(student.getStudentSignature().getBytes()));
			// File destination2 = new File(PROFILE_UPLOAD_LOCATION +
			// student.getId() + "_signature" + ".jpg");
			// ImageIO.write(signature, "jpg", destination2);

			Blob photoBlob = Hibernate.createBlob(photo.getInputStream());
			updatedStudent.setPhotoFilename(photo.getOriginalFilename());
			updatedStudent.setPhotoContent(photoBlob);
			updatedStudent.setPhotoContentType(photo.getContentType());
			
			Blob signatureBlob = Hibernate.createBlob(signature.getInputStream());
			updatedStudent.setSignatureFilename(signature.getOriginalFilename());
			updatedStudent.setSignatureContent(signatureBlob);
			updatedStudent.setPhotoContentType(signature.getContentType());

			updatedStudent = studentService.update(updatedStudent);
			return "redirect:examForm?id=" + updatedStudent.getId();

		}

	}

	@RequestMapping("/viewphoto/{id}")
	public String viewPhoto(@PathVariable("id") int studentId, HttpServletResponse response) {
		Student student = studentService.findOne(studentId);

		try {
			response.setHeader("Content-Disposition", "inline;filename=\"" + student.getPhotoFilename() + "\"");
			OutputStream out = response.getOutputStream();
			response.setContentType(student.getPhotoContentType());
			IOUtils.copy(student.getPhotoContent().getBinaryStream(), out);
			out.flush();
			out.close();
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping("/viewsignature/{id}")
	public String viewSignature(@PathVariable("id") int studentId, HttpServletResponse response) {
		Student student = studentService.findOne(studentId);

		try {
			response.setHeader("Content-Disposition", "inline;filename=\"" + student.getSignatureFilename() + "\"");
			OutputStream out = response.getOutputStream();
			response.setContentType(student.getSignatureContentType());
			IOUtils.copy(student.getSignatureContent().getBinaryStream(), out);
			out.flush();
			out.close();
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/examForm", method = RequestMethod.GET)
	public String getExamForm(@RequestParam("id") long id, Model model) {
		model.addAttribute("student", studentService.findOne(id));
		return "examForm/view";
	}

}
