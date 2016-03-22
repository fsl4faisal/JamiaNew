package in.jmi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.jmi.dao.UserDao;
import in.jmi.model.User;
import in.jmi.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	

	@Transactional
	public User save(User user) {
		userDao.save(user);
		return user;
	}
	
	@Transactional
	public User update(User user) {
		userDao.update(user);
		return user;
	}

	@Transactional
	public void delete(User user) {
		userDao.delete(user);
		
	}

	@Transactional
	public User findOne(long userId) {
		return userDao.findOne(userId);
	}

	@Transactional
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Transactional
	public List<User> listAdminAndHod() {
		return userDao.listAdminAndHod();
	}

}
