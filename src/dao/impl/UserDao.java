package dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.DbUtil;
import dao.IUserDao;

import entity.User;

public class UserDao extends DbUtil implements IUserDao {

	@Override
	public List queryUserAll() {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_user ";
		return this.execSelect(sql, null);
	}

	@Override
	public List queryAllByUname(String user_name) {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_user where user_name=? ";
		Object[] params=new String[1];
		params[0]=user_name;
		return this.execSelect(sql, params);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		String sql="insert dbo.Tbl_user values(?,?,?,?,?)";
		String[] params=new String[5];
	
		params[0]=user.getUser_name();
		params[1]=user.getUser_password();
		params[2]=user.getUser_gender();
		params[3]=user.getTelephone();
		params[4]=user.getPhoto();
				return this.execUpdate(sql,params);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		String sql="update dbo.Tbl_user set user_password=?,user_gender=?,telephone=?,user_name=?,photo=? where user_id=?";
		//设置参数,跟占位符一一对应
		String[] params=new String[6];
		params[0]=user.getUser_password();
		params[1]=user.getUser_gender();
		params[2]=user.getTelephone();
		params[3]=user.getUser_name();
		params[4]=user.getPhoto();
		params[5]=Integer.toString(user.getUser_id());

				 //调用继承自父类的execUpdate方法
				return this.execUpdate(sql, params);
	}
	@Override
	public int deleteUser(User user) {
		// 执行sql
		String sql = "delete dbo.Tbl_user where User_id=?";
		// 设置参数
		String[] params = new String[1];
		params[0] = Integer.toString(user.getUser_id());
		// 调用继承自父类DbUtil类的execUpdate方法执行sql语句
		return this.execUpdate(sql, params);
	}
	@Override
	public List createList(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		List<User> list=new ArrayList<User>();
		//遍历rs
		while(rs.next()){
			//创建Logistics对象
			User log=new User();
			log.setUser_id(rs.getInt("user_id"));
			log.setUser_name(rs.getString("user_name"));
			log.setUser_password(rs.getString("user_password"));
			log.setUser_gender(rs.getString("user_gender"));
			log.setTelephone(rs.getString("telephone"));
			log.setPhoto(rs.getString("photo"));
			//将对象保存到List
			list.add(log);
		}
		return list;
	}

	@Override
	public List queryuser(String user_name, String user_password) {
		// TODO Auto-generated method stub
		String sql="select * from dbo.Tbl_user where user_name=? and user_password=?";
		String[] params=new String[2];
		params[0]=user_name;
		params[1]=user_password;
		return this.execSelect(sql, params); 
	}

}
