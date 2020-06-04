package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DbUtil;
import dao.impl.UserDao;
import entity.User;
@WebServlet(name="DoQureyServletlogin",urlPatterns="/queryloginAction")
public class DoQureyServletlogin extends HttpServlet {

	public void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("user_name")!=null && request.getParameter("user_password")!=null){
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			
			UserDao dao=new UserDao();
			List<User> list=(List<User>)dao.queryuser(user_name, user_password);
	
			//PrintWriter out=response.getWriter();
			if(list!=null && list.size()>0)
			{
				//request.setAttribute("UserList", list);
				HttpSession session = request.getSession();
				session.setAttribute("userlist", list.get(0));
				if(user_name.equals("admin")){
					request.getRequestDispatcher("home3.html").forward(request, response);
				}else
				{
					request.getRequestDispatcher("querylogin").forward(request, response);
				}
				
			}
			else{
               request.getRequestDispatcher("login.jsp"+"?msg=用户名或密码错误").forward(request, response);
			}
		}
	
	}}