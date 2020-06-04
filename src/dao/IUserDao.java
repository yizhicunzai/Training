package dao;

import java.util.List;

import entity.User;

public interface IUserDao {
	public List queryUserAll();

    public List queryAllByUname(String user_name);

    public int addUser(User user);

    public int updateUser(User user);
	public List queryuser(String user_name, String user_password);
	public int deleteUser(User user);
}
