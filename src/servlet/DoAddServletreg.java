package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import dao.impl.*;

@WebServlet(name="DoAddServletreg",urlPatterns="/addRegAction")
public class DoAddServletreg extends HttpServlet {


	public DoAddServletreg() {
		super();
	}

	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//创建实体类User的对象
		User stu=new User();
		//接收addStuInfo.jsp页面上的数据
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("user_name")!=null){
			
			stu.setUser_name(request.getParameter("user_name"));
			stu.setUser_password(request.getParameter("user_password"));
			stu.setUser_gender(request.getParameter("user_gender"));		
			stu.setTelephone(request.getParameter("telephone"));
			stu.setPhoto(request.getParameter("photo"));
		
		//实例化一个dao,调用dao层的addStuInfo方法 
		UserDao studao=new UserDao();
		int result=studao.addUser(stu);
		PrintWriter out=response.getWriter();
		if(result>0){
			out.print("<script>alert('添加成功');window.location.href='login.jsp';</script>");
		}else{
			out.print("<script>alert('添加失败！');</script>");
			
		}
		}
	}

}
