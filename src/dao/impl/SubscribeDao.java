package dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.DbUtil;
import dao.ISubscribeDao;
import entity.Car;
import entity.Sort;
import entity.Subscribe;
import entity.User;

public class SubscribeDao extends DbUtil implements ISubscribeDao {

	@Override
	public List querySubscribeAll() {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_subscribe";
		return this.execSelect(sql, null);
	}
	@Override
	public List queryAllByUname(String user_id) {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_subscribe where user_id=? ";
		Object[] params=new String[1];
		params[0]=user_id;
		return this.execSelect(sql, params);
	}

	@Override
	public int addSubscribe(Subscribe sub) {
		// TODO Auto-generated method stub
		String sql="insert dbo.Tbl_subscribe values(?,?,?,?,?,?)";
		String[] params=new String[6];
	
		params[0]=Integer.toString(sub.getUser().getUser_id());
		params[1]=Integer.toString(sub.getCar().getCar_no());
				params[2]=sub.getUser_name();
				params[3]=sub.getCar_model();
				params[4]=sub.getTelephone();
				params[5]=sub.getSubscribe_tame();

				return this.execUpdate(sql,params);
	}

	@Override
	public int deleterSubscribe(Subscribe sub) {
		// TODO Auto-generated method stub
		String sql="delete dbo.Tbl_subscribe  where subscribe_no=?";
		String[] params=new String[1];
		params[0]=Integer.toString(sub.getSubscribe_no());
		return this.execUpdate(sql,params);
	}




	@Override
	public List queryByCarUserId(String user_id) {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_subscribe where user_id=? ";
		Object[] params=new String[1];
		params[0]=user_id;
		return this.execSelect(sql, params);
	}

	@Override
	public List createList(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		List<Subscribe> list=new ArrayList<Subscribe>();
		//遍历rs
		while(rs.next()){
			//创建Logistics对象
			Subscribe log=new Subscribe();
			log.setSubscribe_no(rs.getInt("subscribe_no"));
			
			User user=new User();
			user.setUser_id(rs.getInt("user_id"));
			user.setUser_name(rs.getString("user_name"));
			user.setTelephone(rs.getString("telephone"));
			 log.setUser(user);
			 
			 Car car=new Car();
			 car.setCar_no(rs.getInt("car_no"));
			 car.setCar_model(rs.getString("car_model"));
				 log.setCar(car);
				 log.setUser_name(rs.getString("user_name"));
				 log.setTelephone(rs.getString("telephone"));

				 log.setCar_model(rs.getString("car_model"));
		  
		    log.setSubscribe_tame(rs.getString("subscribe_tame"));
	
			 
			//将对象保存到List
			list.add(log);
		}
		return list;
	}

}
