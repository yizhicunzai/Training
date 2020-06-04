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






import dao.impl.CarDao;
import dao.impl.SubscribeDao;
import entity.*;



@WebServlet(name="DoQuerSubscribeName",urlPatterns="/querySubscribeAction")
public class DoQuerSubscribeName extends HttpServlet {

	
	public DoQuerSubscribeName() {
		super();
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SubscribeDao subscribe=new SubscribeDao();
		String no="1";
		if(request.getParameter("user_id")!=null)
		{
			no=request.getParameter("user_id");
		}
		List<Subscribe> users=subscribe.queryAllByUname(no);
		HttpSession session=request.getSession();
		session.setAttribute("subscribeList", users);
		response.sendRedirect("subscribeUser.jsp");

		
	}

}