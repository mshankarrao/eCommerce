package com.ekart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ekart.beans.Category;
import com.ekart.beans.Customer;
import com.ekart.beans.Payment;
import com.ekart.beans.Shipment;
import com.ekart.dao.MainDAO;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public MainController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String key = request.getParameter("key");

		if (key.equals("login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			boolean val = MainDAO.login(username, password);

			if (val) {
				Category category = MainDAO.getCategories();
				Customer customer = MainDAO.findCustomer(username);
				request.getSession().setAttribute("name", customer.getName());
				request.getSession().setAttribute("category",
						category.getCategories());
				request.getSession().setAttribute("customer", customer);
				request.getSession().setAttribute("customerId",customer.getId());
				response.sendRedirect("index.jsp");
			} else
				out.print("<html><body>No");
		}

		// registeration
		if (key.equals("register")) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip");
			String password = request.getParameter("password");

			boolean val = MainDAO.register(name, email, phone, state, city,
					zip, password);
			if (val) {
				request.getSession().setAttribute("name", name);
				/* request.getSession().putValue(name,username); */
				response.sendRedirect("success.jsp");
			} else
				out.print("<html><body>No");
		}

		// Update
		if (key.equalsIgnoreCase("update")) {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String zip = request.getParameter("zip");
			String password = request.getParameter("password");

			boolean val = MainDAO.update(name, email, phone, state, city, zip,
					password);
			if (val) {
				request.getSession().setAttribute("name", name);
				response.sendRedirect("success.jsp");
			} else
				out.print("<html><body>No");

		}

		// Product Buying
		if (key.equalsIgnoreCase("buy")) {
			// response.sendRedirect("index.jsp");
			request.getSession().setAttribute("productName",
					request.getParameter("productName"));
			request.getSession().setAttribute("productId",request.getParameter("productId"));
			request.getSession().setAttribute("productPrice",
					request.getParameter("productPrice"));
			response.sendRedirect("single.jsp");
		}

		// order
		if (key.equalsIgnoreCase("order")) {

			Shipment shipment = new Shipment();
			shipment.setShipmentAddress(request.getParameter("shipmentAddress"));
			shipment.setShipmentType(request.getParameter("shipmentType"));
			int price = Integer.parseInt(request.getParameter("quantity"))
					* Integer.parseInt(request.getSession()
							.getAttribute("productPrice").toString());
			request.getSession().setAttribute("price", price);
			request.getSession().setAttribute("quantity",request.getParameter("quantity"));
			request.getSession().setAttribute("shipment",shipment);
			response.sendRedirect("payment.jsp");
		}

		// payment
		if (key.equalsIgnoreCase("pay")) {
			Payment payment= new Payment();
			payment.setCardType(request.getParameter("cardType"));
			payment.setPaymentDetail(request.getParameter("cardDetail"));
			payment.setPaymentMode(request.getParameter("paymentMode"));
			payment.setPaymentAmount(Integer.parseInt(request.getSession().getAttribute("price").toString()));
			boolean status=MainDAO.payOrder((Shipment)request.getSession().getAttribute("shipment"), payment,request.getSession().getAttribute("productId").toString(),request.getSession().getAttribute("customerId").toString());
			if(status)
			{
				response.sendRedirect("index.jsp");
			}
			else
			response.sendRedirect("login.jsp");
		}
		
		
	/*	// order
		if (key.equalsIgnoreCase("order")) {

			Shipment shipment = new Shipment();
			shipment.setShipmentAddress(request.getParameter("shipmentAddress"));
			shipment.setShipmentType(request.getParameter("shipmentType"));
			int price = Integer.parseInt(request.getParameter("quantity"))
					* Integer.parseInt(request.getSession()
							.getAttribute("productPrice").toString());
			request.getSession().setAttribute("price", price);
			request.getSession().setAttribute("quantity",request.getParameter("quantity"));
			request.getSession().setAttribute("shipment",shipment);
			response.sendRedirect("payment.jsp");
		}*/

		// //Cancelling an order
		if (key.equalsIgnoreCase("cancel")) {
			int orderId=Integer.parseInt(request.getParameter("orderId"));
			boolean status=MainDAO.cancelOrder(orderId);
			if(status)
			{
				response.sendRedirect("index.jsp");
			}
			else
			response.sendRedirect("login.jsp");
		}

	}

}
