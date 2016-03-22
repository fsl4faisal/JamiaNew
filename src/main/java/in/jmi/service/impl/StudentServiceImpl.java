package in.jmi.service.impl;

import in.jmi.dao.StudentDao;
import in.jmi.model.Student;
import in.jmi.service.StudentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentDao studentDao;
	

	@Transactional
	public void add(Student student) {
		studentDao.add(student);
		
	}

	@Transactional
	public void edit(Student student) {
		studentDao.edit(student);
		
	}

	@Transactional
	public void delete(int studentId) {
		studentDao.delete(studentId);
		
	}

	@Transactional
	public Student getStudent(int studentId) {
		return studentDao.getStudent(studentId);
	}

	@Transactional
	public List<Student> getAllStudent() {
		return studentDao.getAllStudent();
	}

}
