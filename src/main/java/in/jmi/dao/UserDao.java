package in.jmi.dao;

import in.jmi.model.User;

import java.util.List;

public interface UserDao {
	public User save(User user);
	public User update(User user);
	public void delete(User user);
	public User findOne(long userId);
	public List<User> findAll();
	public List<User> listAdminAndHod();


}
