package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CarDao;
import entity.Car;

@WebServlet(name = "DoDeleteCar", urlPatterns = "/DeleteCarAction")
public class DoDeleteCar extends HttpServlet {

	public DoDeleteCar() {
		super();
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Car car = new Car();
		if (request.getParameter("car_no") != null) {
			car.setCar_no(Integer.valueOf(request.getParameter("car_no")));
			CarDao carDao = new CarDao();
			int result = carDao.deleterCar(car);
			if (result > 0)
				response.sendRedirect("queryCarAdmin?sort_no=£¿");
		}

	}
}
