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
	public Student save(Student student) {
		session.getCurrentSession().save(student);
		return student;

	}
	
	@Override
	public Student update(Student student) {
		session.getCurrentSession().update(student);
		return student;

	}

	@Override
	public void delete(Student student) {
		session.getCurrentSession().delete(student);

	}

	@Override
	public Student findOne(long studentId) {
		return (Student) session.getCurrentSession().get(Student.class, studentId);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Student> findAll() {
		return session.getCurrentSession().createQuery("from Student").list();
	}


}
