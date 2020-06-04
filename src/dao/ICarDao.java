package dao;

import java.util.List;

import entity.Car;

public interface ICarDao {
	//查询所有车辆信息
	public List queryCarAll();
	//增加车辆信息
	public int addCar(Car car); 
	//删除车辆信息
	public int deleterCar(Car car); 
	//通过类别查询汽车信息
	public List queryById(String car_no);
	//通过汽车型号查询车辆信息
	 public List queryByCarModel(String  car_model);
	 public List queryByCarNo(String  car_no);

	 //修改车辆信息
	    public int updateCar(Car car);
}
