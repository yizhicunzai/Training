package dao;

import java.util.List;

import entity.Subscribe;

public interface ISubscribeDao {
	//��ѯ����ԤԼ��Ϣ
	public List querySubscribeAll();
	//���ԤԼ��Ϣ
	public int addSubscribe(Subscribe sub); 
	//ɾ��ԤԼ��Ϣ
	public int deleterSubscribe(Subscribe sub); 

	//ͨ���û�id��ѯԤԼ��Ϣ
	 public List queryByCarUserId(String  user_id);
	
		public List queryAllByUname(String user_id) ;
			
		}

