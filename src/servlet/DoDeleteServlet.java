package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import dao.impl.UserDao;
import entity.User;
@WebServlet(name="DoDeleteServlet",urlPatterns="/DeleteUser")
public class DoDeleteServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DoDeleteServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if(request.getParameter("user_id")!=null){
			User mes=new User();
			mes.setUser_id(Integer.valueOf(request.getParameter("user_id")));
			//
			UserDao mdao=new UserDao();
			int i=mdao.deleteUser(mes);
			if(i>0){
				response.sendRedirect("home.html");
			}}
	}}
