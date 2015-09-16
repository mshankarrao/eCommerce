package com.ekart.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ekart.beans.Category;
import com.ekart.beans.Customer;
import com.ekart.beans.Payment;
import com.ekart.beans.Shipment;
import com.ekart.connection.ConnectionFactory;

public class MainDAO {
	public static Connection connection = null;
	public static PreparedStatement ptmt = null, ptmt1 = null;
	public static ResultSet resultSet = null;

	private static Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionFactory.getInstance().getConnection();
		return conn;
	}

	public static void findAll() {

		try {
			String queryString = "SELECT * FROM admin";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			resultSet = ptmt.executeQuery();
			while (resultSet.next()) {
				System.out.println("Roll No " + resultSet.getInt(1) + ", Name "
						+ resultSet.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public static boolean login(String username, String password) {
		String password1 = null;
		String username1 = null;
		try {
			String queryString = "SELECT * FROM customer where customerEmail='"
					+ username + "'";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			System.out.println(queryString);
			resultSet = ptmt.executeQuery();
			if (resultSet.next()) {
				password1 = resultSet.getString("customerPassword");
				username1 = resultSet.getString("customerEmail");
			}
			System.out.println(password);
			System.out.println(password1);
			System.out.println(username);
			System.out.println(username1);
			if (username.equalsIgnoreCase(username1)
					&& password.equalsIgnoreCase(password1)) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return false;

	}

	public static Category getCategories() {
		Category category = new Category();
		try {
			String queryString = "SELECT * FROM category";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			System.out.println(queryString);
			resultSet = ptmt.executeQuery();
			while (resultSet.next()) {
				category.getCategories().add(
						resultSet.getString("categoryName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return category;

	}

	public static boolean register(String name, String email, String phone,
			String state, String city, String zip, String password) {
		try {
			String queryString = "insert into customer(customerName,customerPhone,customerEmail,customerZip,customerState,customerCity,customerPassword,customerAddress) values(?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1, name);
			ptmt.setString(2, phone);
			ptmt.setString(3, email);
			ptmt.setInt(4, Integer.parseInt(zip));
			ptmt.setString(5, state);
			ptmt.setString(6, city);
			ptmt.setString(7, password);
			ptmt.setString(8, "unm");
			System.out.println(queryString);
			int k = ptmt.executeUpdate();
			if (k == 1) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return false;

	}

	public static Customer findCustomer(String email) {
		Customer customer = new Customer();
		try {
			String queryString = "SELECT * FROM customer where customerEmail='"
					+ email + "'";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			resultSet = ptmt.executeQuery();
			while (resultSet.next()) {

				customer.setName(resultSet.getString("customerName"));
				customer.setEmail(resultSet.getString("customerEmail"));
				customer.setPassword(resultSet.getString("customerPassword"));
				customer.setCity(resultSet.getString("customerCity"));
				customer.setState(resultSet.getString("customerState"));
				customer.setPhone(resultSet.getString("customerPhone"));
				customer.setZip(resultSet.getString("customerZip"));
				customer.setId(resultSet.getInt("customerId"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return customer;
	}

	public static boolean update(String name, String email, String phone,
			String state, String city, String zip, String password) {
		try {
			String queryString = "update customer set customerName=?,customerPhone=?,customerEmail=?,customerZip=?,customerState=?,customerCity=?,customerPassword=?,customerAddress=? where customerEmail=?";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1, name);
			ptmt.setString(2, phone);
			ptmt.setString(3, email);
			ptmt.setInt(4, Integer.parseInt(zip));
			ptmt.setString(5, state);
			ptmt.setString(6, city);
			ptmt.setString(7, password);
			ptmt.setString(8, "unm");
			ptmt.setString(9, email);
			System.out.println(queryString);
			int k = ptmt.executeUpdate();
			if (k == 1) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;

	}

	public static boolean payOrder(Shipment shipment, Payment payment, String productId,String customerId) {
		try {
			String queryString1 = "INSERT INTO shipment(shipmentAddress,shipmentType,shipmentDate) VALUES (?,?,CURDATE());";
			String queryString2 = "INSERT INTO payment(paymentDetail,paymentMode,cardType,paymentAmount) VALUES(?,?,?,?);";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString1);
			ptmt.setString(1, shipment.getShipmentAddress());
			ptmt.setString(2, shipment.getShipmentType());
			int k = ptmt.executeUpdate();
			ptmt1 = connection.prepareStatement(queryString2);
			ptmt1.setString(1, payment.getPaymentDetail());
			ptmt1.setString(2, payment.getPaymentMode());
			ptmt1.setString(3, payment.getCardType());
			ptmt1.setInt(4, payment.getPaymentAmount());
			int t = ptmt1.executeUpdate();
			String insertOrder = "{ call insertOrder(?,?) }";
			// Step-3: prepare the callable statement
			CallableStatement cs = connection.prepareCall(insertOrder);
			cs.setInt(1,Integer.parseInt(customerId));
			cs.setInt(2,Integer.parseInt(productId));
			cs.executeUpdate();
			if (k == 1 && t == 1) {
				return true;
			} else {
				return false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return false;

	}
	
	public static boolean cancelOrder(int orderId) {
		try {
			String deleteOrder = "{ call deleteOrder(?,?) }";
			connection = getConnection();
			// Step-3: prepare the callable statement
			CallableStatement cs = connection.prepareCall(deleteOrder);
			cs.setInt(1,orderId);
			cs.setInt(2,1);
			cs.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (ptmt != null)
					ptmt.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return false;

	}

	
	
	
	
	
	

}