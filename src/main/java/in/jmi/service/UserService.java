package in.jmi.service;

import in.jmi.model.User;

import java.util.List;

public interface UserService {
	public User save(User user);
	public User update(User user);
	public void delete(User user);
	public User findOne(long userId);
	public List<User> findAll();
	public List<User> listAdminAndHod();

}
