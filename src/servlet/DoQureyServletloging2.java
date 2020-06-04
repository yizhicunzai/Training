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
@WebServlet(name="DoQureyServletloging2",urlPatterns="/querylogin")
public class DoQureyServletloging2 extends HttpServlet {

	public void service(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
			String user_name=request.getParameter("user_name");
			String user_password=request.getParameter("user_password");
			String user_gender=request.getParameter("user_gender");
			String telephone=request.getParameter("telephone");
			String photo=request.getParameter("photo");
			UserDao dao=new UserDao();
			List<User> list=(List<User>)dao.queryuser(user_name, user_password);
			//PrintWriter out=response.getWriter();
			
				//request.setAttribute("UserList", list);
				HttpSession session = request.getSession();
				session.setAttribute("user", list);
				request.getRequestDispatcher("home2.jsp").forward(request, response);
				
			
			
		}
	}

	