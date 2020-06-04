package dao;

import java.util.List;

import entity.Subscribe;

public interface ISubscribeDao {
	//查询所有预约信息
	public List querySubscribeAll();
	//添加预约信息
	public int addSubscribe(Subscribe sub); 
	//删除预约信息
	public int deleterSubscribe(Subscribe sub); 

	//通过用户id查询预约信息
	 public List queryByCarUserId(String  user_id);
	
		public List queryAllByUname(String user_id) ;
			
		}

