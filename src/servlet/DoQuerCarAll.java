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
import entity.Car;
@WebServlet(name="DoQuerCarAll",urlPatterns="/queryAll")

public class DoQuerCarAll extends HttpServlet {


	public DoQuerCarAll() {
		super();
	}


	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CarDao dao=new CarDao();
		List<Car> users=dao.queryCarAll();
		HttpSession session=request.getSession();
		session.setAttribute("CarALLList", users);
		response.sendRedirect("submit.jsp");
	}

}
