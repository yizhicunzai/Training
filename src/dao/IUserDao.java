package dao;

import java.util.List;

import entity.User;

public interface IUserDao {
	public List queryUserAll();
    //�����û�����ѯ�������ݣ�����List
    public List queryAllByUname(String user_name);
    //����û���Ϣ
    public int addUser(User user);
    //�޸��û���Ϣ
    public int updateUser(User user);
	public List queryuser(String user_name, String user_password);
	public int deleteUser(User user);
}
