package dao;

import java.util.List;

import entity.User;

public interface IUserDao {
	public List queryUserAll();
    //根据用户名查询所有数据，返回List
    public List queryAllByUname(String user_name);
    //添加用户信息
    public int addUser(User user);
    //修改用户信息
    public int updateUser(User user);
	public List queryuser(String user_name, String user_password);
	public int deleteUser(User user);
}
