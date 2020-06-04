package dao;

import java.util.List;

import entity.Sort;

public interface ISortDao {
	//查询所有类别
	  public List querySortAll();
	//增加车辆类别
	public int addSort(Sort sort); 
	//删除车辆类别
	public int deleterSort(Sort sort); 
	 //修改车辆信息
	 public int updateSort(Sort sort); 
}
