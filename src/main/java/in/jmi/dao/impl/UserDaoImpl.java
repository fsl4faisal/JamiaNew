package in.jmi.dao.impl;

import in.jmi.constants.Role;
import in.jmi.dao.UserDao;
import in.jmi.model.User;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory session;

	@Override
	public User save(User user) {
		session.getCurrentSession().save(user);
		return user;

	}

	@Override
	public User update(User user) {
		session.getCurrentSession().update(user);
		return user;

	}

	@Override
	public void delete(User user) {
		session.getCurrentSession().delete(user);

	}

	@Override
	public User findOne(long userId) {
		return (User) session.getCurrentSession().get(User.class, userId);

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAll() {
		return session.getCurrentSession().createQuery("from User").list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listAdminAndHod() {
		return session.getCurrentSession().createQuery("from User u where u.role='"+Role.ADMIN.getValue()+ "' OR "+"u.role='"+Role.HEAD_OF_DEPARTMENT.getValue()+"'").list();
	}

}
