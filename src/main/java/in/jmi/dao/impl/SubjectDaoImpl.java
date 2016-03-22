package in.jmi.dao.impl;

import in.jmi.dao.SubjectDao;
import in.jmi.model.Subject;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SubjectDaoImpl implements SubjectDao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public Subject save(Subject subject) {
		session.getCurrentSession().save(subject);
		return subject;

	}
	
	@Override
	public Subject update(Subject subject) {
		session.getCurrentSession().update(subject);
		return subject;

	}

	@Override
	public void delete(Subject subject) {
		session.getCurrentSession().delete(subject);

	}

	@Override
	public Subject findOne(long subjectId) {
		return (Subject) session.getCurrentSession().get(Subject.class, subjectId);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Subject> findAll() {
		return session.getCurrentSession().createQuery("from Subject").list();
	}

}
