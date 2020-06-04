package dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.DbUtil;
import dao.ISortDao;
import entity.Sort;

public class SortDao extends DbUtil implements ISortDao{

	@Override
	public List querySortAll() {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_sort ";
		return this.execSelect(sql, null);
	}

	@Override
	public int addSort(Sort sort) {
		// TODO Auto-generated method stub
		String sql="insert dbo.Tbl_sort values(?)";
		String[] params=new String[1];
	
		params[0]=sort.getSort_name();


				return this.execUpdate(sql,params);
	}

	@Override
	public int deleterSort(Sort sort) {
		// TODO Auto-generated method stub
		String sql="delete dbo.Tbl_sort  where sort_no=?";
		String[] params=new String[1];
		params[0]=Integer.toString(sort.getSort_no());
		return this.execUpdate(sql,params);
	}

	@Override
	public int updateSort(Sort sort) {
		// TODO Auto-generated method stub
		String sql="update dbo.Tbl_sort set user_name=? where sort_no=?";
		//设置参数,跟占位符一一对应
		String[] params=new String[2];
		params[0]=sort.getSort_name();
		params[1]=Integer.toString(sort.getSort_no());
				
		
				 //调用继承自父类的execUpdate方法
				return this.execUpdate(sql, params);
	}

	@Override
	public List createList(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		List<Sort> list=new ArrayList<Sort>();
		//遍历rs
		while(rs.next()){
			//创建Logistics对象
			Sort log=new Sort();
			log.setSort_no(rs.getInt("sort_no"));
			log.setSort_name(rs.getString("sort_name"));
		
			//将对象保存到List
			list.add(log);
		}
		return list;
	}

}
