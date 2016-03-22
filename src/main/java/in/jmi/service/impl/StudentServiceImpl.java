package in.jmi.service.impl;

import in.jmi.dao.StudentDao;
import in.jmi.model.Student;
import in.jmi.service.StudentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDao studentDao;

	@Transactional
	public Student save(Student student) {
		studentDao.save(student);
		return student;
	}

	@Transactional
	public Student update(Student student) {
		studentDao.update(student);
		return student;
	}

	@Transactional
	public void delete(Student student) {
		studentDao.delete(student);

	}

	@Transactional
	public Student findOne(long studentId) {
		return studentDao.findOne(studentId);
	}

	@Transactional
	public List<Student> findAll() {
		return studentDao.findAll();
	}

}
