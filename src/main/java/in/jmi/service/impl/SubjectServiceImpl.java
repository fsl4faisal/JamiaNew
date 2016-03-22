package in.jmi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.jmi.dao.SubjectDao;
import in.jmi.model.Subject;
import in.jmi.service.SubjectService;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	private SubjectDao subjectDao;
	

	@Transactional
	public Subject save(Subject subject) {
		subjectDao.save(subject);
		return subject;
	}
	
	@Transactional
	public Subject update(Subject subject) {
		subjectDao.update(subject);
		return subject;
	}

	@Transactional
	public void delete(Subject subject) {
		subjectDao.delete(subject);
		
	}

	@Transactional
	public Subject findOne(long subjectId) {
		return subjectDao.findOne(subjectId);
	}

	@Transactional
	public List<Subject> findAll() {
		return subjectDao.findAll();
	}

}
