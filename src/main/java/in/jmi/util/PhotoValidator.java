package in.jmi.util;

import in.jmi.model.Student;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class PhotoValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return Student.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Student student=(Student)target;
		
//		if(student.getStudentPhoto()!=null){
//			if(student.getStudentPhoto().getSize()==0){
//				errors.rejectValue("file", "missing.file");
//			}
//		}
//		if(!student.getStudentPhoto().getOriginalFilename().endsWith(".jpg")){
//			errors.rejectValue("file", "invalid.file");
//		}
	}

}
