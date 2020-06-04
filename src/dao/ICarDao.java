package dao;

import java.util.List;

import entity.Car;

public interface ICarDao {
	//��ѯ���г�����Ϣ
	public List queryCarAll();
	//���ӳ�����Ϣ
	public int addCar(Car car); 
	//ɾ��������Ϣ
	public int deleterCar(Car car); 
	//ͨ������ѯ������Ϣ
	public List queryById(String car_no);
	//ͨ�������ͺŲ�ѯ������Ϣ
	 public List queryByCarModel(String  car_model);
	 public List queryByCarNo(String  car_no);

	 //�޸ĳ�����Ϣ
	    public int updateCar(Car car);
}
