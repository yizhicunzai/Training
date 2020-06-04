package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.SubscribeDao;
import entity.*;

@WebServlet(name="DoAddSubscribe",urlPatterns="/addSubscribeAction")

public class DoAddSubscribe extends HttpServlet {

	
	public DoAddSubscribe() {
		super();
	}

	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Subscribe subscribe = new Subscribe();
		request.setCharacterEncoding("utf-8");
		System.out.print(1);
		//if (request.getParameter("car_no") != null) {
			User user = new User();
			user.setUser_id(Integer.valueOf(request.getParameter("user_id")));
			subscribe.setUser(user);
			Car car = new Car();
			car.setCar_no(Integer.valueOf(request.getParameter("car_no")));
			subscribe.setCar(car);
			subscribe.setUser_name(request.getParameter("user_name"));
			

			subscribe.setCar_model((request.getParameter("car_model")));
			
			subscribe.setTelephone(request.getParameter("telephone"));
			subscribe.setSubscribe_tame(request.getParameter("subscribe_tame"));
			
			
		//}
			SubscribeDao sub = new SubscribeDao();
		int result = sub.addSubscribe(subscribe);
		PrintWriter out = response.getWriter();
		if (result > 0) {
			out.print("<script>alert('Ìí¼Ó³É¹¦');;window.location.href='home2.jsp';</script>");
		}

	}

	

}
