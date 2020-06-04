package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.SubscribeDao;
import entity.Subscribe;
@WebServlet(name="DoDeleteSubscribeUser",urlPatterns="/deleteSubscribeUser")
public class DoDeleteSubscribeUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DoDeleteSubscribeUser() {
		super();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Subscribe car = new Subscribe();
		if (request.getParameter("subscribe_no") != null) {
			car.setSubscribe_no(Integer.valueOf(request.getParameter("subscribe_no")));
			SubscribeDao carDao = new SubscribeDao();
			int result = carDao.deleterSubscribe(car);
			if (result > 0)
				response.sendRedirect("home2.jsp");
		}
	}

}
