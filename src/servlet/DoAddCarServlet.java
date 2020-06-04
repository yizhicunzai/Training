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
import entity.Sort;
@WebServlet(name="DoAddCarServlet",urlPatterns="/addCarAction")
public class DoAddCarServlet extends HttpServlet {

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Car car = new Car();
		request.setCharacterEncoding("utf-8");
		System.out.print(1);
		//if (request.getParameter("car_no") != null) {
			Sort sort = new Sort();
			sort.setSort_no(Integer.valueOf(request.getParameter("sort_no")));
			car.setSort(sort);

			car.setCar_model((request.getParameter("car_model")));
			car.setCar_millprice((request.getParameter("car_millprice")));
			car.setCar_shopprice(request.getParameter("car_shopprice"));
			car.setCar_manufacturer(request.getParameter("car_manufacturer"));
			car.setCar_rank(request.getParameter("car_rank"));
			car.setCar_bodystructure(request.getParameter("car_bodystructure"));
			car.setCar_lwh(request.getParameter("car_lwh"));
			car.setCar_engin(request.getParameter("car_engin"));
			car.setPicture(request.getParameter("picture")); 	

		//}
		CarDao carDao = new CarDao();
		int result = carDao.addCar(car);
		PrintWriter out = response.getWriter();
		if (result > 0) {
			out.print("<script>alert('Ìí¼Ó³É¹¦');;window.location.href='increase.jsp';</script>");
		}

	}
}
