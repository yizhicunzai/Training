package dao;

import java.util.List;

import entity.Sort;

public interface ISortDao {
	//��ѯ�������
	  public List querySortAll();
	//���ӳ������
	public int addSort(Sort sort); 
	//ɾ���������
	public int deleterSort(Sort sort); 
	 //�޸ĳ�����Ϣ
	 public int updateSort(Sort sort); 
}
