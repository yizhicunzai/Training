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
@WebServlet(name="DoUpdataCarDetails",urlPatterns="/updateCarDetails")

public class DoUpdataCarDetails extends HttpServlet {


	public DoUpdataCarDetails() {
		super();
	}

	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		if(request.getParameter("car_no")!=null){
			//将页面上的数据保存到Land对象
			Car car=new Car();
		    if(request.getParameter("car_no")!=null){
		    	
		    	car.setCar_model(request.getParameter("car_model"));
		    	car.setCar_millprice(request.getParameter("car_millprice"));
		    	car.setCar_shopprice(request.getParameter("car_shopprice"));
		    	car.setCar_manufacturer(request.getParameter("car_manufacturer"));
		    	car.setCar_rank(request.getParameter("car_rank"));
		    	car.setCar_bodystructure(request.getParameter("car_bodystructure"));
		    	car.setCar_lwh(request.getParameter("car_lwh"));
		    	car.setCar_engin(request.getParameter("car_engin"));
		    	car.setPicture(request.getParameter("picture"));
		    	car.setCar_no(Integer.valueOf(request.getParameter("car_no").trim()));

			//实例化Dao
		    	CarDao carDao=new CarDao();
			int result=carDao.updateCar(car);
			if(result>0){
				response.sendRedirect("queryCarDetails");
		
	}
		    
}}}}
