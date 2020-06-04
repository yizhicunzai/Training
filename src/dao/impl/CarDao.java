package dao.impl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.DbUtil;
import dao.ICarDao;
import entity.Car;
import entity.Sort;

public class CarDao extends DbUtil implements ICarDao{

	@Override
	public List queryCarAll() {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_car ";
		return this.execSelect(sql, null);
	}

	@Override
	public int addCar(Car car) {
		// TODO Auto-generated method stub
		String sql="insert dbo.Tbl_car values(?,?,?,?,?,?,?,?,?,?)";
		String[] params=new String[10];
		System.out.println(car.getSort());
		params[0]=String.valueOf(car.getSort().getSort_no());

		params[1]=car.getCar_model();
		params[2]=car.getCar_millprice();
		params[3]=car.getCar_shopprice();
		params[4]=car.getCar_manufacturer();
		params[5]=car.getCar_rank();
		params[6]=car.getCar_bodystructure();
		params[7]=car.getCar_lwh();
		params[8]=car.getCar_engin();
		params[9]=car.getPicture();
				return this.execUpdate(sql,params);
	}

	@Override
	public int deleterCar(Car car) {
		// TODO Auto-generated method stub
		String sql="delete dbo.Tbl_car  where car_no=?";
		String[] params=new String[1];
		params[0]=Integer.toString(car.getCar_no());
		return this.execUpdate(sql,params);
	}

	@Override
	public List queryById(String sort_no) {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_car where sort_no=? ";
		Object[] params=new String[1];
		params[0]=sort_no;
		return this.execSelect(sql, params);
	}

	@Override
	public List queryByCarModel(String car_model) {
		// TODO Auto-generated method stub
		String sql="select * from  dbo.Tbl_car where car_model=? ";
		Object[] params=new String[1];
		params[0]=car_model;
		return this.execSelect(sql, params);
	}

	@Override
	public int updateCar(Car car) {
		// TODO Auto-generated method stub
		String sql="update dbo.Tbl_car set car_model=?,car_millprice=?,car_shopprice=?,car_manufacturer=?,car_rank=?,car_bodystructure=?,car_lwh=?,car_engin=?,picture=? where car_no=?";
		//设置参数,跟占位符一一对应
		String[] params=new String[10];
		params[0]=car.getCar_model();
		params[1]=car.getCar_millprice();
		params[2]=car.getCar_shopprice();
		params[3]=car.getCar_manufacturer();
		params[4]=car.getCar_rank();
		params[5]=car.getCar_bodystructure();
		params[6]=car.getCar_lwh();
		params[7]=car.getCar_engin();
		params[8]=car.getPicture();
		params[9]=Integer.toString(car.getCar_no());
				
		
				 //调用继承自父类的execUpdate方法
				return this.execUpdate(sql, params);
	}

	@Override
	public List createList(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		List<Car> list=new ArrayList<Car>();
		//遍历rs
		while(rs.next()){
			//创建Logistics对象
			Car log=new Car();
			log.setCar_no(rs.getInt("car_no"));
			
			Sort sort=new Sort();
			sort.setSort_no(rs.getInt("sort_no"));
			 log.setSort(sort);
		  
		    log.setCar_model(rs.getString("car_model"));
		    log.setCar_millprice(rs.getString("car_millprice"));
		    log.setCar_shopprice(rs.getString("car_shopprice"));
		    log.setCar_manufacturer(rs.getString("car_manufacturer"));
		    log.setCar_rank(rs.getString("car_rank"));
		    log.setCar_bodystructure(rs.getString("car_bodystructure"));
		    log.setCar_lwh(rs.getString("car_lwh"));
		    log.setCar_engin(rs.getString("car_engin"));
		    log.setPicture(rs.getString("picture"));
			 
			//将对象保存到List
			list.add(log);
		}
		return list;
	}

	@Override
	public List queryByCarNo(String car_no) {
		String sql="select * from  dbo.Tbl_car where car_no=? ";
		Object[] params=new String[1];
		params[0]=car_no;
		return this.execSelect(sql, params);	}

}
