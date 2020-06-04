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

import dao.impl.SubscribeDao;
import entity.*;
@WebServlet(name="DoQuerSubscribe",urlPatterns="/querySubscribeAdmin")
public class DoQuerSubscribe extends HttpServlet {

	
	

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SubscribeDao dao=new SubscribeDao();
		
		
		List<Subscribe> users=dao.querySubscribeAll();
		HttpSession session=request.getSession();
		session.setAttribute("SubscribeList", users);
		response.sendRedirect("receive.jsp");
		
	}

}
