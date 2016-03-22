package in.jmi.service;

import in.jmi.model.Student;

import java.util.List;


public interface StudentService {
	public Student save(Student student);
	public Student update(Student student);
	public void delete(Student student);
	public Student findOne(long studentId);
	public List<Student> findAll();

}
