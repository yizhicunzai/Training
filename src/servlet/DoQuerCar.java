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
@WebServlet(name="DoQuerCar",urlPatterns="/queryCar")

public class DoQuerCar extends HttpServlet {


	public DoQuerCar() {
		super();
	}


	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CarDao dao=new CarDao();
		String no="1";
		if(request.getParameter("sort_no")!=null)
		{
			no=request.getParameter("sort_no");
		}
		List<Car> users=dao.queryById(no);
		HttpSession session=request.getSession();
		session.setAttribute("CarList", users);
		response.sendRedirect("Car.jsp");
		
	}

}
