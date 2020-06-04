package dao;

import java.sql.*;
import java.util.List;


//连接数据库的公共类
public abstract class DbUtil {

	private Connection conn = null;// 连接对象
	private PreparedStatement stat = null;// 语句对象
	private ResultSet rs = null;// 结果集对象

	// 创建数据库连接
	public Connection getConn() throws Exception {
		// 加载驱动
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		// 创建连接对象
		String url
	    = "jdbc:sqlserver://DESKTOP-RD01IKD\\SQLEXPRESS:49730;"
	    + "dataBaseName=CarS";
		Connection conn = DriverManager.getConnection(url, "sa", "123456");
		// 返回连接对象
		return conn;
	}
	
	public List execSelect(String sql,Object[] params){
		 List result=null;
		try {
			// 获取数据库连接
			conn = this.getConn();
			// 实例化语句对象
			stat = conn.prepareStatement(sql);
			//设置sql语句的参数
			int i=1;//参数的占位符索引
			if(params!=null){
			for(Object param:params){
				stat.setObject(i, param);
				i++;
			}}
			// 执行sql语句
			rs = stat.executeQuery();
			result=this.createList(rs);
			
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			closeAll();
		}
		return result;
	}
	
	public abstract List createList(ResultSet rs)throws Exception;

	// 执行insert、update、delete语句，返回 受影响行数
	public int execUpdate(String sql,Object[] params) {
	
		int result = 0;// 存放受影响的行数
		try {
			// 获取数据库连接
			conn = this.getConn();
			// 实例化语句对象
			stat = conn.prepareStatement(sql);
			//设置sql语句的参数
			int i=1;//参数的占位符索引
			if(params!=null){
			for(Object param:params){
				stat.setObject(i, param);
				i++;
			}}
			// 执行sql语句
			result = stat.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			closeAll();
		}
		return result;
	}

	// 关闭所有的资源：连接、语句对象及结果集
	public void closeAll() {
		try {
			if (conn != null) {
				conn.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}
