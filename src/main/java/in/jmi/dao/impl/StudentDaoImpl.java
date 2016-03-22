package in.jmi.dao.impl;

import in.jmi.dao.StudentDao;
import in.jmi.model.Student;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	private SessionFactory session;

	@Override
	public void add(Student student) {
		session.getCurrentSession().save(student);

	}

	@Override
	public void edit(Student student) {
		session.getCurrentSession().update(student);

	}

	@Override
	public void delete(int studentId) {
		session.getCurrentSession().delete(getStudent(studentId));

	}

	@Override
	public Student getStudent(int studentId) {
		return (Student) session.getCurrentSession().get(Student.class, studentId);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> getAllStudent() {
		return session.getCurrentSession().createQuery("from Student").list();
	}

}
