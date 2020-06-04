package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.impl.UserDao;

import entity.User;

@WebServlet(name="DoupadatenameServlet",urlPatterns="/qureyupadateAction")
public class DoupadateUnameServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DoupadateUnameServlet() {
		super();
	}

	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      
		request.setCharacterEncoding("utf-8");
	    if(request.getParameter("user_id")!=null){
	    
	    	User user=new User();	
	    	user.setUser_id(Integer.valueOf(request.getParameter("user_id")));
	    	user.setUser_name(request.getParameter("user_name"));
	    	user.setUser_password(request.getParameter("user_password"));
	    	user.setUser_gender(request.getParameter("user_gender"));
	    	user.setTelephone(request.getParameter("telephone")); 
	    	user.setPhoto(request.getParameter("photo")); 
	        UserDao dao=new UserDao();
	       int result= dao.updateUser(user);
	        if(result>0){
	        	response.sendRedirect("login.jsp");
	        }
	    }
	}

}


