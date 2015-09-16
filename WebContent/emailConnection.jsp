<%@ page import="java.io.*,java.sql.*"%>
<%@page import="com.ekart.connection.ConnectionFactory"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
	String sn = request.getParameter("ver");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con =ConnectionFactory.getInstance().getConnection();
	Statement st = con.createStatement();
	//ResultSet rs = st.executeQuery("select * from emp where empno="+sn);
	ResultSet rs = st.executeQuery("select * from customer where customerEmail='"
			+ sn + "'"); // this is for name
	if (rs.next()) {
		out.println("<font color=red>");
		out.println("Name already taken");
		out.println("</font>");

	} else {

		out.println("<font color=green>");
		out.println("Available");
		out.println("</font>");

	}

	rs.close();
	st.close();
	con.close();
%>